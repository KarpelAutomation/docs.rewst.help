# JSONPath for data redaction in Rewst

In the **Security** tab of any task, you have the option to use the **Redacted** fields to customize how Rewst handles sensitive information.

<figure><img src="../../.gitbook/assets/Screenshot 2025-11-11 at 10.02.34 AM.png" alt="" width="369"><figcaption></figcaption></figure>

## Jinja versus JSONPath with complex nested data

Imagine that you have a large JSON payload returned from an API containing organizations, users, and each user’s list of devices and activity logs. Your goal would be to get all the login timestamps for every device owned by the admin user.

#### Example JSON

```json
{
  "organizations": [
    {
      "id": 1,
      "name": "Rewst",
      "users": [
        {
          "username": "rjablonskis",
          "role": "admin",
          "devices": [
            {
              "type": "laptop",
              "os": "Windows",
              "activity": [
                {"event": "login", "timestamp": "2025-11-01T10:05:00Z"},
                {"event": "logout", "timestamp": "2025-11-01T18:00:00Z"}
              ]
            },
            {
              "type": "phone",
              "os": "Android",
              "activity": [
                {"event": "login", "timestamp": "2025-11-02T07:30:00Z"}
              ]
            }
          ]
        },
        {
          "username": "echow",
          "role": "builder",
          "devices": [
            {
              "type": "desktop",
              "os": "Linux",
              "activity": [
                {"event": "login", "timestamp": "2025-11-02T08:00:00Z"}
              ]
            }
          ]
        }
      ]
    }
  ]
}
```

#### Example Jinia list comprehension

```django
{{ [
  activity.timestamp
  for org in CTX.organizations
  for user in org.users
  if user.role == "admin"
  for device in user.devices
  for activity in device.activity
  if activity.event == "login"
] }}
```

This solution works for your goal, but it's dense, and leaves chains of loops and filters that can be hard to read or debug given how nested the code becomes.

Instead, you could use JSONPath for a much simpler situation that requires just one line to navigate straight down the structure.  You can combine multiple queries to redact several fields at once. Test redaction by reviewing task logs. Sensitive fields will appear as `********`.

#### Example JSONPath

{% code fullWidth="true" %}
```json
{{ CTX.organizations | jsonpath_query('$[*].users[?(@.role=="admin")].devices[*].activity[?(@.event=="login")].timestamp', extended=True) }}
```
{% endcode %}

* `$` - CTX.organizations
* `[*]` - all organizations in the array
* `users[?(@.role=="admin")]` - only admin users
* `devices[*].activity[?(@.event=="login")].timestamp` - login timestamps from all devices
* `extended=True` - allows us to use the filtering on the event and loging

### When to use JSONPath versus comprehension

Generally:

* Use JSONPath when you're extracting or redacting specific data fields. JSON answers the question 'Where is this data?'
* Use comprehension when you're filtering, flattening, or transforming data for workflow logic. Comprehension answers the question 'What do I want to do with this data?'

| Scenario                                      | Use JSONPath                  | Use Comprehension      |
| --------------------------------------------- | ----------------------------- | ---------------------- |
| Simple field extraction: names, IDs, tags     | ✅                             | ✅                      |
| Fast redaction or security masking            | ✅                             | ❌                      |
| Conditional filters or comparisons            | ✅ - `extended=True`           | ✅ - `if` condition     |
| Flattening nested arrays                      | ⚠️ - multi-wildcards required | ✅ - easier and cleaner |
| Data transformation or mapping                | ❌                             | ✅                      |
| Building dictionaries or composite structures | ❌                             | ❌                      |
| Large static datasets - speed                 | ✅                             | ⚠️ - slightly slower   |
| Workflow logic or variable formatting         | ⚠️ - limited                  | ✅ - recommended        |
| Redaction contexts                            | ✅ - required                  | ❌ - unsupported        |

#### Example combo use of JSONPath and comprehension

There are instances where it makes sense to use both methods together: extract with JSONPath to quickly isolate the structure, then filter or transform with comprehension to handle things like logic, mapping, and formatting inline.

```django
{% set all_users = CTX.Extracted_Data | jsonpath_query($.result.services[*].users[*]") %}
{{ [user.username for all user in all_users if "admin" in user.roles] }}
```

The result would be:

```json
["alice"]
```

## Further examples

### Examples for security redaction

| Goal               | Recommended JSONPath                                           |
| ------------------ | -------------------------------------------------------------- |
| Mask credentials   | `$..password`, `$..Authorization`, `$..tokens[*].value`        |
| Mask sensitive IDs | `$..id`                                                        |
| Mask partial sets  | `$.result.services[0].users[0:2].username` or `[-2:].username` |



```
## 🔹 Basic Structure

| Symbol        | Meaning                          | Example                           |
| ------------- | -------------------------------- | --------------------------------- |
| `$`           | Root object (start here)         | `$`                               |
| `.field`      | Access a key                     | `$.result.services`               |
| `[index]`     | Access list item by position     | `$.result.services[0]`            |
| `[start:end]` | Slice a list                     | `$.result.services[0].users[0:2]` |
| `[*]`         | Wildcard (get all items)         | `$.result.services[*].name`       |
| `$..field`    | Recursive search (find anywhere) | `$..id`                           |
```

### Simple mode - `extended=False`, default

Simple mode supports:

* Dot navigation (`.field`)
* Index access (`[0]`)
* Wildcards (`[*]`)
* Slicing (`[start:end]`)
* Recursive search (`$..`)
* Always returns a **list**

**Example**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].name") }}
```

**Result**

```json
["auth-service", "data-service"]
```

### Extended mode - `extended=True`

Extended mode adds support for **filters and comparisons** — allowing you to query data by field values directly inside Jinja.

* Conditional filters: `?(@.field == value)`
* Comparisons: `==`, `<`, `>`, `>=`, `<=`
* Existence checks: `?(@.field)`

**Example**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].users[?(@.roles[0] == 'admin')].username", extended=True) }}
```

**Result**

```json
["alice"]
```

#### JSONPath summary table

| Capability                               | Simple Mode | Extended Mode | Notes                                        |
| ---------------------------------------- | ----------- | ------------- | -------------------------------------------- |
| `.field` navigation                      | ✅           | ✅             | Basic key navigation                         |
| `[index]` access                         | ✅           | ✅             | Select specific array index                  |
| Wildcard `[*]`                           | ✅           | ✅             | Iterate over all list items                  |
| Slice `[start:end]`                      | ✅           | ✅             | Works like Python slice                      |
| Negative / step slices                   | ✅           | ✅             | Negative and stepped slices supported        |
| Recursive `$..`                          | ✅           | ✅             | Deep search anywhere in structure            |
| Filters `?()`                            | ❌           | ✅             | Simple comparisons and existence checks only |
| Comparisons (`==`, `<`, `>`, `>=`, `<=`) | ❌           | ✅             | Standard numeric or string compare           |
| Logical ops (`&&`, `II`, `!`)            | ❌           | ❌             | ❌ Unsupported                                |
| Regex match (`=~`)                       | ❌           | ❌             | ❌ Unsupported                                |
| Membership tests (`in`, `not in`)        | ❌           | ❌             | ❌ Unsupported                                |
| Multi-index `[0,2]`                      | ❌           | ❌             | ❌ Unsupported                                |
| Returns list always                      | ✅           | ✅             | Always a list, even single item              |
| Existence filter `?(@.field)`            | ❌           | ✅             | Supported in extended mode                   |

#### Usage tips

* **Simple mode** (`extended=False`) is faster and safe for all Rewst workflow operations, including redaction.
* **Extended mode** (`extended=True`) adds filters, conditions, and regex — great for debugging or complex data exploration.
* Always start with `$` (the root).
* Use wildcards `[*]` and slices `[start:end]` to extract lists.
* Wrap uncertain paths in `{% try %}...{% catch %}` to avoid render errors.

#### Example API response CTX.Extracted\_Data

```
{
  "result": {
    "environment": "staging",
    "services": [
      {
        "name": "auth-service",
        "endpoints": [
          {
            "url": "https://api.example.com/v1/login",
            "method": "POST",
            "headers": {
              "Authorization": "Bearer sk_test_abc123xyz",
              "Content-Type": "application/json"
            },
            "responses": [
              {
                "status": 200,
                "body": {
                  "user": {
                    "id": "u123",
                    "tokens": [
                      {
                        "type": "access",
                        "value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
                        "expires_in": 3600
                      },
                      {
                        "type": "refresh",
                        "value": "dGhpcy1pcy1hLXJlZnJlc2gtdG9rZW4=",
                        "expires_in": 86400
                      }
                    ]
                  }
                }
              },
              {
                "status": 401,
                "body": {
                  "error": {
                    "code": "INVALID_CREDENTIALS",
                    "message": "Invalid username or password."
                  }
                }
              }
            ]
          }
        ],
        "users": [
          { "username": "alice", "password": "Password123!", "roles": ["admin"] },
          { "username": "bob", "password": "SuperSecure456$", "roles": ["user"] },
          { "username": "carol", "password": "MyPass789#", "roles": ["user", "editor"] },
          { "username": "dave", "password": "Test1234@", "roles": ["support", "auditor"] }
        ]
      },
      {
        "name": "data-service",
        "endpoints": [
          {
            "url": "https://api.example.com/v1/data",
            "method": "GET",
            "params": {
              "filters": [
                {
                  "field": "status",
                  "operator": "in",
                  "values": ["active", "pending", "archived", "disabled"]
                },
                {
                  "field": "created_at",
                  "operator": ">",
                  "values": ["2023-01-01"]
                }
              ]
            },
            "headers": {
              "X-Request-ID": "req_001"
            },
            "response": {
              "data": [
                {
                  "id": "doc_1",
                  "attributes": {
                    "tags": ["invoice", "approved", "urgent"],
                    "history": [
                      {
                        "timestamp": "2025-10-01T12:00:00Z",
                        "action": "created",
                        "actor": {
                          "id": "user_5",
                          "roles": ["creator"]
                        }
                      },
                      {
                        "timestamp": "2025-10-02T15:15:00Z",
                        "action": "approved",
                        "actor": {
                          "id": "admin_1",
                          "roles": ["approver", "auditor"]
                        }
                      }
                    ]
                  }
                },
                {
                  "id": "doc_2",
                  "attributes": {
                    "tags": [],
                    "history": []
                  }
                },
                {
                  "id": "doc_3",
                  "attributes": {
                    "tags": ["rejected", "review"],
                    "history": [
                      {
                        "timestamp": "2025-10-03T10:20:00Z",
                        "action": "reviewed",
                        "actor": {
                          "id": "user_7",
                          "roles": ["reviewer"]
                        }
                      }
                    ]
                  }
                }
              ]
            }
          }
        ]
      }
    ],
    "meta": {
      "version": "1.2.0",
      "deployed_at": "2025-11-01T00:00:00Z",
      "contact": {
        "team": [
          {
            "name": "DevOps",
            "members": [
              {
                "name": "Eve",
                "on_call": true,
                "methods": ["pager", "email"]
              },
              {
                "name": "Oscar",
                "on_call": false,
                "methods": ["slack"]
              }
            ]
          },
          {
            "name": "QA",
            "members": [
              {
                "name": "Rita",
                "on_call": true,
                "methods": ["email"]
              },
              {
                "name": "Sam",
                "on_call": false,
                "methods": ["email", "sms"]
              }
            ]
          }
        ]
      }
    }
  }
}
```

### Visual path examples with Jinja and results

Your `CTX.Extracted_Data` looks like this:

```
CTX.Extracted_Data
└── result
    ├── environment: "staging"
    │
    ├── services
    │   ├── [0] auth-service
    │   │   ├── name: "auth-service"
    │   │   ├── endpoints
    │   │   │   └── [0]
    │   │   │       ├── url: "https://api.example.com/v1/login"
    │   │   │       ├── method: "POST"
    │   │   │       ├── headers
    │   │   │       │   ├── Authorization: "Bearer sk_test_abc123xyz"
    │   │   │       │   └── Content-Type: "application/json"
    │   │   │       └── responses
    │   │   │           ├── [0]
    │   │   │           │   ├── status: 200
    │   │   │           │   └── body
    │   │   │           │       └── user
    │   │   │           │           ├── id: "u123"
    │   │   │           │           └── tokens
    │   │   │           │               ├── [0] access → expires_in: 3600
    │   │   │           │               └── [1] refresh → expires_in: 86400
    │   │   │           └── [1] → status: 401 → error message
    │   │   │
    │   │   └── users
    │   │       ├── [0] alice → roles: ["admin"]
    │   │       ├── [1] bob → roles: ["user"]
    │   │       ├── [2] carol → roles: ["user", "editor"]
    │   │       └── [3] dave → roles: ["support", "auditor"]
    │   │
    │   └── [1] data-service
    │       ├── name: "data-service"
    │       └── endpoints
    │           └── [0]
    │               ├── url: "https://api.example.com/v1/data"
    │               └── response
    │                   └── data
    │                       ├── [0] doc_1 → tags: ["invoice", "approved", "urgent"]
    │                       ├── [1] doc_2 → tags: []
    │                       └── [2] doc_3 → tags: ["rejected", "review"]
    │
    └── meta
        └── contact
            └── team
                ├── [0] DevOps
                │   └── members
                │       ├── [0] Eve → on_call: true → methods: ["pager", "email"]
                │       └── [1] Oscar → on_call: false → methods: ["slack"]
                └── [1] QA
                    └── members
                        ├── [0] Rita → on_call: true → methods: ["email"]
                        └── [1] Sam → on_call: false → methods: ["email", "sms"]

```

## Rewst JSONPath visual path examples

All examples reference `CTX.Extracted_Data` — the full JSON at the end of this document.

#### **All usernames**

**Path**

```
result → services[*] → users[*] → username
```

**Data context**

```json
"services": [
  {
    "name": "auth-service",
    "users": [
      {"username": "alice", "password": "Password123!", "roles": ["admin"]},
      {"username": "bob", "password": "SuperSecure456$", "roles": ["user"]},
      {"username": "carol", "password": "MyPass789#", "roles": ["user", "editor"]},
      {"username": "dave", "password": "Test1234@", "roles": ["support", "auditor"]}
    ]
  }
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].users[*].username") }}
```

**Result**

```json
["alice", "bob", "carol", "dave"]
```

#### **First user’s username - Alice**

**Path**

```
result → services[0] (auth-service) → users[0] → username
```

**Data context**

```json
"users": [
  {"username": "alice", "password": "Password123!", "roles": ["admin"]}
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[0].users[0].username") }}
```

**Result**

```json
["alice"]
```

#### **Second user - Bob**

**Path**

```
result → services[0] → users[1]
```

**Data context**

```json
"users": [
  {"username": "bob", "password": "SuperSecure456$", "roles": ["user"]}
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[0].users[1]") }}
```

**Result**

```json
[
  {"username": "bob", "password": "SuperSecure456$", "roles": ["user"]}
]
```

#### **First two users - slice example**

**Path**

```
result → services[0] → users[0:2]
```

**Data context**

```json
"users": [
  {"username": "alice", "roles": ["admin"], "password": "Password123!"},
  {"username": "bob", "roles": ["user"], "password": "SuperSecure456$"}
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[0].users[0:2]") }}
```

**Result**

```json
[
  {"username": "alice", "roles": ["admin"], "password": "Password123!"},
  {"username": "bob", "roles": ["user"], "password": "SuperSecure456$"}
]
```

#### **All roles - flattened**

**Path**

```
result → services[*] → users[*] → roles[*]
```

**Data context**

```json
"roles": [
  ["admin"],
  ["user"],
  ["user", "editor"],
  ["support", "auditor"]
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].users[*].roles[*]") }}
```

**Result**

```json
["admin", "user", "user", "editor", "support", "auditor"]
```

#### **Service names**

**Path**

```
result → services[*] → name
```

**Data context**

```json
"services": [
  {"name": "auth-service"},
  {"name": "data-service"}
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].name") }}
```

**Result**

```json
["auth-service", "data-service"]
```

#### &#x20;**Endpoint URLs**

**Path**

```
result → services[*] → endpoints[*] → url
```

**Data context**

```json
"endpoints": [
  {"url": "https://api.example.com/v1/login"},
  {"url": "https://api.example.com/v1/data"}
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].endpoints[*].url") }}
```

**Result**

```json
[
  "https://api.example.com/v1/login",
  "https://api.example.com/v1/data"
]
```

#### **Tokens expiring soon - `extended=True`**

**Path**

```
result → services[0] → endpoints[0] → responses[*].body.user.tokens[?(@.expires_in < 3000)]
```

**Data context**

```json
"tokens": [
  {"type": "access", "expires_in": 3600},
  {"type": "refresh", "expires_in": 86400}
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[0].endpoints[0].responses[*].body.user.tokens[?(@.expires_in < 3000)]", extended=True) }}
```

**Result**

```json
[]
```

Note: no tokens expire within 3000 seconds.

#### **Authorization header exists - `extended=True`**

**Path**

```
result → services[*] → endpoints[?(@.headers.Authorization)]
```

**Data context**

```json
"headers": {
  "Authorization": "Bearer sk_test_abc123xyz",
  "Content-Type": "application/json"
}
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].endpoints[?(@.headers.Authorization)]", extended=True) }}
```

**Result**

```json
[
  {
    "method": "POST",
    "url": "https://api.example.com/v1/login",
    "headers": {
      "Authorization": "Bearer sk_test_abc123xyz",
      "Content-Type": "application/json"
    },
    "responses": [
      {
        "status": 200,
        "body": {
          "user": {
            "id": "u123",
            "tokens": [
              {"type": "access", "expires_in": 3600},
              {"type": "refresh", "expires_in": 86400}
            ]
          }
        }
      }
    ]
  }
]
```

#### **Document IDs - data-service**

**Path**

```
result → services[1] → endpoints[0] → response → data[*] → id
```

**Data context**

```json
"data": [
  {"id": "doc_1"},
  {"id": "doc_2"},
  {"id": "doc_3"}
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[1].endpoints[0].response.data[*].id") }}
```

**Result**

```json
["doc_1", "doc_2", "doc_3"]
```

#### **All tags - flattened**

**Path**

```
result → services[1] → endpoints[0] → response → data[*] → attributes → tags[*]
```

**Data context**

```json
"tags": [
  ["invoice", "approved", "urgent"],
  [],
  ["rejected", "review"]
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[1].endpoints[0].response.data[*].attributes.tags[*]") }}
```

**Result**

```json
["invoice", "approved", "urgent", "rejected", "review"]
```

#### **On-call team member names**

**Path**

```
result → meta → contact → team[*] → members[*] → name
```

**Data context**

```json
"team": [
  {
    "name": "DevOps",
    "members": [
      {"name": "Eve", "on_call": true},
      {"name": "Oscar", "on_call": false}
    ]
  },
  {
    "name": "QA",
    "members": [
      {"name": "Rita", "on_call": true},
      {"name": "Sam", "on_call": false}
    ]
  }
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.meta.contact.team[*].members[*].name") }}
```

**Result**

```json
["Eve", "Oscar", "Rita", "Sam"]
```

**For just DevOps:**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.meta.contact.team[0].members[*].name") }}
```

**Result**

```json
["Eve", "Oscar"]
```

#### **On-call members only - `extended=True`**

**Path**

```
result → meta → contact → team[*] → members[?(@.on_call == true)]
```

**Data context**

```json
"members": [
  {"name": "Eve", "on_call": true, "methods": ["pager", "email"]},
  {"name": "Rita", "on_call": true, "methods": ["email"]}
]
```

**Jinja**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.meta.contact.team[*].members[?(@.on_call == true)].name", extended=True) }}
```

**Result**

```json
["Eve", "Rita"]
```

#### &#x20;Extract a**ll timestamps** anywhere in the structure using `$[*]..timestamp` style

#### **JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$..timestamp") }}
```

This searches recursively through the entire object and returns _every_ value found under any key named `timestamp`.

#### **Example result**

```json
[
  "2025-10-01T12:00:00Z",
  "2025-10-02T15:15:00Z",
  "2025-10-03T10:20:00Z"
]
```

#### Extract timestamps only for `login` activities using `$[*]..activity[?(@.event=="login")].timestamp` pattern

#### **JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$..activities[?(@.event == 'login')].timestamp", extended=True) }}
```

This looks everywhere in the JSON for an array named `activities`, then filters to items where:

```
event == "login"
```

and returns only the matching `timestamp` values.

#### **Example result**

```json
[
  "2025-11-07T09:30:00Z"
]
```

Assume the data includes a login event with a timestamp.

### JSONPath recap in Rewst

| Concept                 | Description                        | Example                                         |
| ----------------------- | ---------------------------------- | ----------------------------------------------- |
| **Root ($)**            | Always starts at top level         | `$.result`                                      |
| **Dot navigation**      | Access keys                        | `$.result.meta.version`                         |
| **Wildcards \[\*]**     | Expand arrays                      | `$.result.services[*].users[*].username`        |
| **Indexes \[0]**        | Specific item                      | `$.result.services[0].users[2].username`        |
| **Nested access**       | Chain deeper                       | `$.result.meta.contact.team[1].members[0].name` |
| **Filters**             | Conditional search (extended mode) | `$.users[?(@.role == 'admin')]`                 |
| **Always returns list** | Even for single matches            | `["alice"]`                                     |

### Formatting conventions

| Type                | Example                       |
| ------------------- | ----------------------------- |
| Long arrays         | `['a', 'b', 'c', …]`          |
| Deep nested objects | `<<TRUNCATED>>`               |
| Long strings/tokens | `'Bearer sk_test_abc123…xyz'` |

## Rewst Jinja comprehension equivalents for JSONPath

Assume your context variable is:

```jinja
CTX.Extracted_Data
```

These examples show how to achieve the same result with **JSONPath** or **Rewst’s enhanced Jinja list comprehensions**, using clear, readable variable names to help you understand what each level of the JSON represents.

### **All usernames**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].users[*].username") }}
```

**Comprehension**

```jinja
{{ [user.username for service in CTX.Extracted_Data.result.services for user in service.users] }}
```

**Result**

```json
["alice", "bob", "carol", "dave"]
```

### **First user’s username - Alice**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[0].users[0].username") }}
```

**Comprehension**

```jinja
{{ CTX.Extracted_Data.result.services[0].users[0].username }}
```

**Result**

```json
"alice"
```

### **Second user - Bob object**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[0].users[1]") }}
```

**Comprehension**

```jinja
{{ CTX.Extracted_Data.result.services[0].users[1] }}
```

**Result**

```json
{"username": "bob", "password": "SuperSecure456$", "roles": ["user"]}
```

### **First two users - Slice example**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[0].users[0:2]") }}
```

**Comprehension**

```jinja
{{ CTX.Extracted_Data.result.services[0].users[0:2] }}
```

**Result**

```json
[
  {"username": "alice", "roles": ["admin"], "password": "Password123!"},
  {"username": "bob", "roles": ["user"], "password": "SuperSecure456$"}
]
```

### **All roles - flattened**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].users[*].roles[*]") }}
```

**Comprehension**

```jinja
{{ [role for service in CTX.Extracted_Data.result.services for user in service.users for role in user.roles] }}
```

**Result**

```json
["admin", "user", "user", "editor", "support", "auditor"]
```

### **Service names**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].name") }}
```

**Comprehension**

```jinja
{{ [service.name for service in CTX.Extracted_Data.result.services] }}
```

**Result**

```json
["auth-service", "data-service"]
```

### **Endpoint URLs**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[*].endpoints[*].url") }}
```

**Comprehension**

```jinja
{{ [endpoint.url for service in CTX.Extracted_Data.result.services for endpoint in service.endpoints] }}
```

**Result**

```json
[
  "https://api.example.com/v1/login",
  "https://api.example.com/v1/data"
]
```

### **Tokens expiring soon - less than 3000**

**JSONPath (extended)**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[0].endpoints[0].responses[*].body.user.tokens[?(@.expires_in < 3000)]", extended=True) }}
```

**Comprehension**

```jinja
{{ [
  token
  for response in CTX.Extracted_Data.result.services[0].endpoints[0].responses
  for token in response.body.user.tokens
  if token.expires_in < 3000
] }}
```

**Result**

```json
[]
```

### **Document IDs - data-service**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[1].endpoints[0].response.data[*].id") }}
```

**Comprehension**

```jinja
{{ [document.id for document in CTX.Extracted_Data.result.services[1].endpoints[0].response.data] }}
```

**Result**

```json
["doc_1", "doc_2", "doc_3"]
```

### **All tags - flattened**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.services[1].endpoints[0].response.data[*].attributes.tags[*]") }}
```

**Comprehension**

```jinja
{{ [tag for document in CTX.Extracted_Data.result.services[1].endpoints[0].response.data for tag in document.attributes.tags] }}
```

**Result**

```json
["invoice", "approved", "urgent", "rejected", "review"]
```

### **On-call team member names**

**JSONPath**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.meta.contact.team[*].members[*].name") }}
```

**Comprehension**

```jinja
{{ [member.name for team in CTX.Extracted_Data.result.meta.contact.team for member in team.members] }}
```

**Result**

```json
["Eve", "Oscar", "Rita", "Sam"]
```

### **On-call only - filter**

**JSONPath (extended)**

```jinja
{{ CTX.Extracted_Data | jsonpath_query("$.result.meta.contact.team[*].members[?(@.on_call == true)].name", extended=True) }}
```

**Comprehension**

```jinja
{{ [member.name for team in CTX.Extracted_Data.result.meta.contact.team for member in team.members if member.on_call] }}
```

**Result**

```json
["Eve", "Rita"]
```

### **On-call contact methods - flattened**

**JSONPath**

Not easily supported - requires filters and flattening

**Comprehension**

```jinja
{{ [
  method
  for team in CTX.Extracted_Data.result.meta.contact.team
  for member in team.members
  if member.on_call
  for method in member.methods
] }}
```

**Result**

```json
["pager", "email", "email"]
```
