# Generic GraphQL request action

## What is GraphQL?

{% hint style="info" %}
Learn more about GraphQL in its official documentation [here](https://graphql.org/learn/introduction/).
{% endhint %}

GraphQL is an open-source query language for APIs and a server-side runtime for fulfilling those queries. It enables clients to interact with a single endpoint to get the exact data they need, without chaining requests together. Unlike traditional REST APIs that return fixed datasets, GraphQL allows clients to request specific data, eliminating over-fetching or under-fetching of data and offering improved efficiency. The [GraphQL Schema](https://graphql.org/learn/schema/) defines the structure of the data and available operations, serving as a clear contract between the frontend and backend. Like REST APIs, GraphQL is composed of a basic request and response for each call. While REST APIs rely on multiple endpoints for this process, GraphQL shifts the responsibility of defining what should be called back to the user.

GraphQL in Rewst works off of two _operation types_:

1. Query: Used for reading or fetching data
2. Mutation: Used for writing, updating, or deleting data

{% hint style="info" %}
GraphQL has a third operation type called subscription. Rewst's generic GraphQL action currently only supports queries and mutations. If there is a subscription you are looking to use in Rewst, please submit a request to our product team for a dedicated action.
{% endhint %}

## What is the Rewst GraphQL generic request action?

{% hint style="warning" %}
Before using the Generic GraphQL request action, we recommend that you have:

* An understanding of GraphQL query structure and syntax
* Familiarity with Rewst's data model and the below available schema documentation
{% endhint %}

\
The Rewst GraphQL generic request action is used for making authenticated requests against Rewst's GraphQL API. This action is available in the Rewst actions section of the Workflow Builder's actions library, but is open-ended in its capabilities. It enables:

* Direct API access: Execute custom GraphQL queries and mutations against Rewst's backend
* Advanced data retrieval: Access data structures not available through standard actions
* Custom automation: Build sophisticated workflows with precise data control
* Administrative operations: Perform bulk operations and administrative tasks programmatically

<figure><img src="../../../.gitbook/assets/Screenshot 2026-04-22 at 10.53.52 AM.png" alt=""><figcaption></figcaption></figure>

Make your choices in the **Parameters** tab of the action's settings to set it up in your workflow:

* **Operation type**: Choose the type of GraphQL operation, **query** or **mutation**
* **Graph operation**: The name of the specific GraphQL operation to execute
  * Uses the Graph Operations reference
  * Options in the drop-down list will dynamically populate based on your selected operation type
* **Variable values**: Variables to pass to the GraphQL operation
  * JSON object type, but can be passed via Jinja
  * Contains the input parameters for the selected operation
* **Response fields**: Enter text into this field to specify the fields to include in the GraphQL response
  * Only provide the inner content, as it will be wrapped in curly braces
  * Example, `id orgName email { name }`
* **Raw query**: The complete raw GraphQL query string to execute
  * An advanced alternative to using the other fields and selectors in the Parameters tab
  * Allows for full control over query structure

## Filtering arguments: Where versus search

Every plural list query in the Generic GraphQL Request action accepts up to two filtering arguments: _where_ and _search_. They are not interchangeable.&#x20;

#### Where: Equality only - `field: value` → `WHERE field = value`

`where` accepts a flat object of `field: value` pairs. Each pair is rendered as `WHERE field = value`. There's no way to express greater than, in this list, contains substring, etc. through `where`.

The set of fields exposed in each `<Object>WhereInput` type is hand-curated by Rewst engineering, not auto-derived from the GraphQL model. That is why `Tags` exposes `id`, `name`, `orgId` for filtering but not `color` or `description`, even though those columns exist on the model.

#### Search: Accepts operator wrappers

`search` accepts a `<Object>SearchInput` type whose fields are wrapped in _comparison expressions_. The wrapper type depends on the column type:

| Wrapper                 | Operators supported                                                                                           |
| ----------------------- | ------------------------------------------------------------------------------------------------------------- |
| `id_comparison_exp`     | `_eq`, `_ne`, `_in`, `_nin`                                                                                   |
| `string_comparison_exp` | `_eq`, `_neq`, `_in`, `_nin`, `_like`, `_nlike`, `_ilike`, `_nilike`, `_substr`, `_lt`, `_lte`, `_gt`, `_gte` |
| `int_comparison_exp`    | `_eq`, `_neq`, `_in`, `_nin`, `_lt`, `_lte`, `_gt`, `_gte`                                                    |
| `float_comparison_exp`  | `_eq`, `_neq`, `_in`, `_nin`, `_lt`, `_lte`, `_gt`, `_gte`                                                    |
| `bool_comparison_exp`   | `_eq`, `_ne`                                                                                                  |
| `json_comparison_exp`   | `_eq`, `_ne`, `_contains`                                                                                     |

Use `search` whenever you need anything other than strict equality, or any time the field you want to filter on isn't exposed by `where`.&#x20;

Example: `isEnabled` is not on `OrganizationWhereInput`, but it **is** on `OrganizationSearchInput`.

## Generic GraphQL request action usage examples

### Basic query example

```yaml
operation_type: "query"
operation: "organizations"
variable_values: 
  limit: 50
  order: [["name"]]
fields: "id, name, domain, isEnabled"
```

### Mutation example

```yaml
operation_type: "mutation"
operation: "createOrgVariable"
variable_values:
  orgVariable:
    name: "custom_setting"
    value: "production"
    orgId: "{{ CTX.organization.id }}"
    category: "general"
fields: "id, name, value, category"
```

### Raw query example

```yaml
raw_query: |
  query GetWorkflowDetails($workflowId: ID!) {
    workflow(where: {id: $workflowId}) {
      id
      name
      description
      tasks {
        id
        name
        action {
          name
          pack {
            name
          }
        }
      }
    }
  }
variable_values:
  workflowId: "{{ CTX.workflow_id }}"
```

### Tag example

```graphql
tags(
  where: TagWhereInput
  search: TagSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
  includeTagsWithNoOwner: Boolean = false
): [Tag!]!  @requiresManagesOwningOrg
```



## Generic GraphQL request action: Allowed operations

{% hint style="info" %}
### Schema reference

Key entity types include:

* Organization: Core organizational data and settings
* Workflow: Automation workflow definitions and execution data
* Action: Available actions and their configurations
* Trigger: Event triggers and their configurations
* Form: Dynamic forms and field definitions
* Template: Reusable templates and scripts
* User: User accounts and permissions
* Pack: Integration packs and their components
{% endhint %}

{% hint style="success" %}
Each of the query expanders below contains information that includes if where or search are mandatory for use of the query. Be sure to reference this information and use your query accordingly.
{% endhint %}

### Operation type: Queries

#### **Action and configuration queries**

<details>

<summary><strong><code>actionOption</code> -</strong> Retrieves a specific action option configuration.</summary>

**GraphQL schema**

```graphql
actionOption(where: ActionOptionWhereInput): ActionOption

type ActionOption {
  actions: [Action!]
  id: ID
  optionLabel: String
  optionValue: String
  organizationId: ID
  organization: Organization
  packConfigId: ID
  resourceName: String
  packConfig: PackConfig
}
```

**`ActionOptionWhereInput` supported fields**

| Field            | Type                            |
| ---------------- | ------------------------------- |
| `optionLabel`    | `String`                        |
| `optionValue`    | `String`                        |
| `organizationId` | `ID`                            |
| `packConfigId`   | `ID`                            |
| `packConfig`     | `PackConfigWhereInput` (nested) |
| `resourceName`   | `String`                        |

**Is** `where` **or** `search` **mandatory?**

Yes: `where` with enough fields to identify a single row — typically `packConfigId` plus `optionValue` or `optionLabel`. The parent `packConfig` must belong to an organization that you manage. No `search` input is needed.&#x20;

**Usage example**

```yaml
operation_type: "query"
operation: "actionOption"
variable_values:
  where:
    packConfigId: "{{ CTX.pack_config_id }}"
    optionLabel: "environment"
fields: "id, optionLabel, optionValue, resourceName"
```

</details>

<details>

<summary><strong><code>actionOptions</code></strong>-Retrieves multiple action options with filtering and sorting.</summary>

**GraphQL schema**

```graphql
actionOptions(
  where: ActionOptionWhereInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["optionLabel"]]
): [ActionOption!]!
```

**`ActionOptionWhereInput` supported fields**

| Field            | Type                            |
| ---------------- | ------------------------------- |
| `optionLabel`    | `String`                        |
| `optionValue`    | `String`                        |
| `organizationId` | `ID`                            |
| `packConfigId`   | `ID`                            |
| `packConfig`     | `PackConfigWhereInput` (nested) |
| `resourceName`   | `String`                        |

**Is where or search mandatory?**

Yes: `where: { packConfigId: <id> }` (or `organizationId`) plus `limit`/`offset`. The parent `packConfig` must belong to an organization that you manage.

No `search` input required— only equality filtering via `where`.

**Usage example**

```yaml
operation_type: "query"
operation: "actionOptions"
variable_values:
  where:
    organizationId: "{{ CTX.org_id }}"
  limit: 50
  order: [["optionLabel", "asc"]]
fields: "id, optionLabel, optionValue, organization { name }"
```

</details>

<details>

<summary><strong><code>localReferenceOptions</code></strong>-Gets dropdown options for picking another Rewst object such as a workflow, template or form,  inside a parameter</summary>

**GraphQL schema**

```graphql
localReferenceOptions(
  modelName: LocalReferenceModel!
  orgId: ID!
  filterArg: JSON
): [DropdownOption!]!

enum LocalReferenceModel {
  Crate
  CustomDatabase
  Organization
  PackConfig
  Role
  Template
  TemplateExport
  User
  Workflow
  Trigger
  Form
  Site
  Page
}

type DropdownOption {
  label: String
  value: String
}
```

**Is where or search mandatory?**

Yes: required  `modelName` and `orgId`

Note: `search` here is a plain string matched against the option label, not a `SearchInput` with operator wrappers.

**Usage example**

```yaml
operation_type: "query"
operation: "localReferenceOptions"
variable_values:
  modelName: "Workflow"
  orgId: "{{ CTX.org_id }}"
  filterArg: {"enabled": true}
fields: "label, value"
```

</details>

<details>

<summary><strong><code>resourceTypesByPack</code></strong>-Gets resource types organized by pack.</summary>

**GraphQL schema**

```graphql
resourceTypesByPack: [PackResourceTypesContainer!]!

type PackResourceTypesContainer {
  id: ID!
  packName: String!
  resourceTypes: [String!]!
}
```

**Is where or search mandatory?**

No - takes no `where`, `search`, or pagination.

</details>

#### **Action management queries**

<details>

<summary><strong><code>action</code></strong>-Retrieves a specific action definition.</summary>

**GraphQL schema**

```graphql
action(where: ActionInput, search: ActionSearch): Action

type Action {
  actionOptions: [ActionOption!]!
  className: String
  defaultHumanSecondsSaved: Int
  deprecated: Boolean
  deprecationMessage: String
  description: String
  enabled: Boolean
  entryPoint: String
  category: String
  hidden: Boolean
  icon: String
  id: ID
  name: String
  organization: Organization
  orgId: ID
  outputSchema: JSON
  pack(where: PackInput): Pack
  packId: ID!
  parameters(populateOptions: Boolean = true): JSON
  ref: String
  runner: Runner
  uid: ID
  visibleForOrganizations: [Organization!]!
  workflow: Workflow
}
```

**`ActionInput` (where) supported fields**

| Field          | Type                 |
| -------------- | -------------------- |
| `runner_type`  | `String`             |
| `deprecated`   | `Boolean`            |
| `description`  | `String`             |
| `enabled`      | `Boolean`            |
| `hidden`       | `Boolean`            |
| `id`           | `ID`                 |
| `name`         | `String`             |
| `category`     | `String`             |
| `outputSchema` | `JSON`               |
| `pack`         | `PackInput` (nested) |
| `packId`       | `ID`                 |
| `parameters`   | `JSON`               |
| `ref`          | `String`             |
| `uid`          | `ID`                 |

**`ActionSearch` supported fields**

| Field          | Wrapper                    |
| -------------- | -------------------------- |
| `deprecated`   | `bool_comparison_exp`      |
| `description`  | `string_comparison_exp`    |
| `enabled`      | `bool_comparison_exp`      |
| `hidden`       | `bool_comparison_exp`      |
| `id`           | `id_comparison_exp`        |
| `name`         | `string_comparison_exp`    |
| `outputSchema` | `json_comparison_exp`      |
| `parameters`   | `json_comparison_exp`      |
| `ref`          | `string_comparison_exp`    |
| `uid`          | `id_comparison_exp`        |
| `category`     | `string_comparison_exp`    |
| `pack`         | `PackSearchInput` (nested) |

**Is** `where` **or** `search` **mandatory?**

`where` or `search` narrow enough to match a single action — typically `id`, or `packId` + `ref`. Note: `ActionInput` is the where-input despite the name. It's reused as the create/update input.

**Usage example**

```yaml
operation_type: "query"
operation: "action"
variable_values:
  where:
    ref: "http_request"
    packId: "core"
fields: "id, name, description, parameters, outputSchema"
```

</details>

<details>

<summary><strong><code>actions</code></strong>-Retrieves multiple actions with filtering.</summary>

**GraphQL schema**

```graphql
actions(
  where: ActionInput
  search: ActionSearch
  limit: Int = 100
  offset: Int
  order: [[String!]!] = [["name"]]
): [Action!]!
```

**`ActionInput` (where) supported fields**

| Field          | Type                 |
| -------------- | -------------------- |
| `runner_type`  | `String`             |
| `deprecated`   | `Boolean`            |
| `description`  | `String`             |
| `enabled`      | `Boolean`            |
| `hidden`       | `Boolean`            |
| `id`           | `ID`                 |
| `name`         | `String`             |
| `category`     | `String`             |
| `outputSchema` | `JSON`               |
| `pack`         | `PackInput` (nested) |
| `packId`       | `ID`                 |
| `parameters`   | `JSON`               |
| `ref`          | `String`             |
| `uid`          | `ID`                 |

**`ActionSearch` supported fields**

| Field          | Wrapper                    |
| -------------- | -------------------------- |
| `deprecated`   | `bool_comparison_exp`      |
| `description`  | `string_comparison_exp`    |
| `enabled`      | `bool_comparison_exp`      |
| `hidden`       | `bool_comparison_exp`      |
| `id`           | `id_comparison_exp`        |
| `name`         | `string_comparison_exp`    |
| `outputSchema` | `json_comparison_exp`      |
| `parameters`   | `json_comparison_exp`      |
| `ref`          | `string_comparison_exp`    |
| `uid`          | `id_comparison_exp`        |
| `category`     | `string_comparison_exp`    |
| `pack`         | `PackSearchInput` (nested) |

**Is** `where` **or** `search` **mandatory?**

`limit` (defaults to 100) and `offset`. Scope by `packId` (`where: { packId: <id> }`) or by `pack` (`search: { pack: { id: { _eq: <id> } } }`) when possible — unscoped calls return every action visible to your managed orgs.

</details>

<details>

<summary><strong><code>actionsForOrg</code></strong>-Gets actions available to a specific organization.</summary>

**GraphQL schema**

```graphql
actionsForOrg(
  where: ActionInput
  search: ActionSearch
  limit: Int = 100
  offset: Int
  order: [[String!]!] = [["name"]]
  orgId: ID
): [Action!]!
```

**`ActionInput` (where) supported fields**

| Field          | Type                 |
| -------------- | -------------------- |
| `runner_type`  | `String`             |
| `deprecated`   | `Boolean`            |
| `description`  | `String`             |
| `enabled`      | `Boolean`            |
| `hidden`       | `Boolean`            |
| `id`           | `ID`                 |
| `name`         | `String`             |
| `category`     | `String`             |
| `outputSchema` | `JSON`               |
| `pack`         | `PackInput` (nested) |
| `packId`       | `ID`                 |
| `parameters`   | `JSON`               |
| `ref`          | `String`             |
| `uid`          | `ID`                 |

**`ActionSearch` supported fields**

| Field          | Wrapper                    |
| -------------- | -------------------------- |
| `deprecated`   | `bool_comparison_exp`      |
| `description`  | `string_comparison_exp`    |
| `enabled`      | `bool_comparison_exp`      |
| `hidden`       | `bool_comparison_exp`      |
| `id`           | `id_comparison_exp`        |
| `name`         | `string_comparison_exp`    |
| `outputSchema` | `json_comparison_exp`      |
| `parameters`   | `json_comparison_exp`      |
| `ref`          | `string_comparison_exp`    |
| `uid`          | `id_comparison_exp`        |
| `category`     | `string_comparison_exp`    |
| `pack`         | `PackSearchInput` (nested) |

**Is** `where` **or** `search` **mandatory?**

`orgId` plus `limit`/`offset`. Use this instead of `actions` when you want the action list as it appears for one specific org.

</details>

#### **System and debug queries**

<details>

<summary><strong><code>announcement</code></strong>-Gets system announcements.</summary>



</details>

<details>

<summary><strong><code>debug-</code></strong>Debug endpoint for system information.</summary>

**GraphQL schema:**

```graphql
debug: Boolean
```

</details>

#### **Component management queries**

<details>

<summary><strong><code>component</code></strong>-Retrieves a specific component definition.</summary>

**GraphQL schema**

```graphql
component(id: ID!): Component

type Component {
  id: ID!
  orgId: ID!
  name: String!
  description: String
  currentVersion: Int
  createdBy: User
  createdById: ID
  createdAt: String
  updatedAt: String
  versions: [ComponentVersion!]
  updatedBy: User
  updatedById: ID
}
```

**Is** `where` **or** `search` **mandatory?**

No -  identified directly by `id`.

</details>

<details>

<summary><strong><code>components</code></strong>-Gets multiple components for an organization.</summary>

**GraphQL schema**

```graphql
components(orgId: ID!): [Component]
```

**Is** `where` **or** `search` **mandatory?**

No - scoped solely by `orgId`. Filter client-side or use `componentsByRoots` for specific IDs.

</details>

<details>

<summary><strong><code>componentsByRoots</code></strong>-Gets components by their root IDs.</summary>

**GraphQL schema**

```graphql
componentsByRoots(rootIds: [ID]!): [Component]
```

**Is** `where` **or** `search` **mandatory?**

No - identified by `rootIds` list.

</details>

<details>

<summary><strong><code>componentTree</code></strong>-Gets the component tree structure.</summary>

**GraphQL schema**

```graphql
componentTree(id: ID!): ComponentTree

type ComponentTree {
  encoded: String!
  component: Component!
  orgId: ID!
  versionNumber: Int
  createdAt: String
  updatedAt: String
  updatedBy: User
}
```

**Is** `where` **or** `search` **mandatory?**

No - identified by `id` and returns the latest version's tree.

</details>

#### **Crate management queries**

<details>

<summary><strong><code>crate</code></strong>-Retrieves a specific crate.</summary>

**GraphQL schema**

```graphql
crate(
  where: CrateWhereInput
  search: CrateSearchInput
  selectedOrgId: ID
): Crate

type Crate {
  associatedPacks: [Pack!]
  category: String
  crateTriggers: [CrateTrigger!]
  createdAt: String
  description: String
  id: ID!
  isPublic: Boolean!
  isUnpackedForSelectedOrg: Boolean
  lastPublishedAt: String
  maturity: CrateMaturity
  name: String!
  orgId: ID!
  primaryPack: Pack
  primaryPackId: ID
  providedValue: String
  replicationRegions: [CrateReplicationRegion!]
  requiredOrgVariables: [String!]
  setupAssistance: Boolean
  setupTime: Int
  sourceEnvironment: String
  status: CrateStatus!
  tags: [Tag!]
  tagIds: [ID!]
  tokens: [CrateToken!]!
  triggers: [Trigger!]
  unpackingCount: Int
  unpackedWorkflowId: ID
  updatedAt: String
  workflow: Workflow
  workflowId: ID
  gid: ID
  updatedById: ID
  createdById: ID
}
```

**`CrateWhereInput` supported fields**

| Field             | Type                          |
| ----------------- | ----------------------------- |
| `description`     | `String`                      |
| `id`              | `ID`                          |
| `lastPublishedAt` | `String`                      |
| `name`            | `String`                      |
| `orgId`           | `ID`                          |
| `primaryPack`     | `PackWhereInput` (nested)     |
| `status`          | `String`                      |
| `tokens`          | `JSON`                        |
| `workflow`        | `WorkflowWhereInput` (nested) |
| `workflowId`      | `ID`                          |
| `gid`             | `ID`                          |
| `isPublic`        | `Boolean`                     |

**`CrateSearchInput` supported fields**

| Field             | Wrapper                    |
| ----------------- | -------------------------- |
| `description`     | `string_comparison_exp`    |
| `id`              | `id_comparison_exp`        |
| `lastPublishedAt` | `string_comparison_exp`    |
| `name`            | `string_comparison_exp`    |
| `primaryPack`     | `PackSearchInput` (nested) |
| `tokens`          | `json_comparison_exp`      |
| `workflow`        | `WorkflowSearch` (nested)  |

**Is** `where` **or** `search` **mandatory?**

`where` or `search` narrow enough to match a single Crate — typically `id` or `gid`. Pass `selectedOrgId` to control the per-org `isUnpackedForSelectedOrg` flag.

</details>

<details>

<summary><strong><code>crates</code></strong>-Gets multiple crates with filtering and sorting.</summary>

**GraphQL schema**

```graphql
crates(
  where: CrateWhereInput
  search: CrateSearchInput
  selectedOrgId: ID
  limit: Int
  offset: Int
  order: [[String!]!] = [["unpackingCount", "desc"], ["createdAt", "asc"]]
): [Crate!]!
```

**`CrateWhereInput` supported fields**

| Field             | Type                          |
| ----------------- | ----------------------------- |
| `description`     | `String`                      |
| `id`              | `ID`                          |
| `lastPublishedAt` | `String`                      |
| `name`            | `String`                      |
| `orgId`           | `ID`                          |
| `primaryPack`     | `PackWhereInput` (nested)     |
| `status`          | `String`                      |
| `tokens`          | `JSON`                        |
| `workflow`        | `WorkflowWhereInput` (nested) |
| `workflowId`      | `ID`                          |
| `gid`             | `ID`                          |
| `isPublic`        | `Boolean`                     |

**`CrateSearchInput` supported fields**

| Field             | Wrapper                    |
| ----------------- | -------------------------- |
| `description`     | `string_comparison_exp`    |
| `id`              | `id_comparison_exp`        |
| `lastPublishedAt` | `string_comparison_exp`    |
| `name`            | `string_comparison_exp`    |
| `primaryPack`     | `PackSearchInput` (nested) |
| `tokens`          | `json_comparison_exp`      |
| `workflow`        | `WorkflowSearch` (nested)  |

**Is** `where` **or** `search` **mandatory?**

`limit` and `offset`, plus a scoping filter — typically `where: { orgId: <id> }`, `where: { isPublic: true }`, or `search: { name: { _ilike: "%foo%" } }`. Unscoped calls are slow.

</details>

<details>

<summary><strong><code>crateExportInfo</code></strong>-Gets export information for a workflow to crate.</summary>

**GraphQL schema**

```graphql
crateExportInfo(workflowId: ID!): JSON
```

**Is** `where` **or** `search` **mandatory?**

No - `workflowId` returns an unstructured JSON blob.

</details>

<details>

<summary><strong><code>crateTokenTypes</code></strong>-Gets available crate token types.</summary>

**GraphQL schema**

```graphql
crateTokenTypes: [String!]!
```

**Is** `where` **or** `search` **mandatory?**

No - Returns values like `text`, `linebreak`, `selectVar`, `inputVar`, `selectPackVar`, etc.

</details>

<details>

<summary><strong><code>crateUnpackingArgumentSet</code></strong>-Gets crate unpacking argument sets.</summary>

**GraphQL schema**

```graphql
crateUnpackingArgumentSet(
  where: CrateUnpackingArgumentSetWhereInput
): CrateUnpackingArgumentSet

type CrateUnpackingArgumentSet {
  arguments: [CrateUnpackingArgument!]!
  crate: Crate!
  crateId: ID!
  crateTriggerUnpackings: [CrateTriggerUnpacking!]!
  createdAt: String!
  createdBy: User!
  createdById: ID!
  humanSecondsSaved: Int!
  id: ID!
  orgId: ID!
  updatedAt: String
  updatedBy: User
  updatedById: ID
  workflowName: String!
}
```

**`CrateUnpackingArgumentSetWhereInput` supported fields**

| Field     | Type |
| --------- | ---- |
| `crateId` | `ID` |
| `id`      | `ID` |
| `orgId`   | `ID` |

**Is** `where` **or** `search` **mandatory?**

Yes - `where` narrow enough to match a single set — typically `id`, or `crateId` + `orgId`. No search input is needed.

</details>

#### **Feature preview queries**

<details>

<summary><strong><code>featurePreviewSetting</code></strong>-Gets a specific feature preview setting.</summary>

**GraphQL schema**

```graphql
featurePreviewSetting(where: FeaturePreviewSettingWhereInput): FeaturePreviewSetting

type FeaturePreviewSetting {
  description: String!
  id: ID!
  isStaffOnly: Boolean!
  label: String!
}
```

**`FeaturePreviewSettingWhereInput` supported fields**

| Field   | Type     |
| ------- | -------- |
| `id`    | `ID`     |
| `label` | `String` |

**Is** `where` **or** `search` **mandatory?**

Yes - at least one of `id` or `label` on `where`. No search input is needed.&#x20;

</details>

<details>

<summary><strong><code>featurePreviewSettings</code></strong>-Gets multiple feature preview settings.</summary>

**GraphQL schema**

```graphql
featurePreviewSettings(
  where: FeaturePreviewSettingWhereInput,
  order: [[String!]!] = [["createdAt"]]
): [FeaturePreviewSetting]
```

**Is** `where` **or** `search` **mandatory?**

No - no `search` input, no `limit`/`offset` . The table is small and unpaginated.

</details>

#### **Foreign object reference queries**

<details>

<summary><strong><code>foreignObjectReference</code></strong>-Gets a specific foreign object reference.</summary>

**GraphQL schema**

```graphql
foreignObjectReference(
  where: ForeignObjectReferenceWhereInput
): ForeignObjectReference

type ForeignObjectReference {
  action: Action
  actionId: ID
  id: ID!
  identifier: ID
  organization: Organization!
  orgId: ID!
  packConfig: PackConfig
  packConfigId: ID
  referenceId: ID!
  workflowExecution: WorkflowExecution
  workflowExecutionId: ID
}
```

**`ForeignObjectReferenceWhereInput` supported fields**

| Field               | Type                                   |
| ------------------- | -------------------------------------- |
| `id`                | `ID`                                   |
| `referenceId`       | `ID`                                   |
| `identifier`        | `ID`                                   |
| `workflowExecution` | `WorkflowExecutionWhereInput` (nested) |
| `action`            | `ActionInput` (nested)                 |
| `actionId`          | `ID`                                   |
| `packConfig`        | `PackConfigWhereInput` (nested)        |
| `packConfigId`      | `ID`                                   |
| `orgId`             | `ID`                                   |

**Is** `where` **or** `search` **mandatory?**

Yes - For `where`, at least one filter — typically `id`, or `referenceId` + `orgId`. No search input is needed.&#x20;

</details>

<details>

<summary><strong><code>foreignObjectReferences</code></strong>-Gets multiple foreign object references.</summary>

**GraphQL schema**

```graphql
foreignObjectReferences(
  where: ForeignObjectReferenceWhereInput
): [ForeignObjectReference!]!
```

**`ForeignObjectReferenceWhereInput` supported fields**

| Field               | Type                                   |
| ------------------- | -------------------------------------- |
| `id`                | `ID`                                   |
| `referenceId`       | `ID`                                   |
| `identifier`        | `ID`                                   |
| `workflowExecution` | `WorkflowExecutionWhereInput` (nested) |
| `action`            | `ActionInput` (nested)                 |
| `actionId`          | `ID`                                   |
| `packConfig`        | `PackConfigWhereInput` (nested)        |
| `packConfigId`      | `ID`                                   |
| `orgId`             | `ID`                                   |

**Is** `where` **or** `search` **mandatory?**

No `search` input and no `limit`/`offset` — scope with `where: { orgId: <id> }` to avoid pulling cross-organization rows.

</details>

#### **Form management queries**

<details>

<summary><strong><code>form</code></strong>-Retrieves a specific form definition, gets a single form.</summary>

**GraphQL schema**

```graphql
form(
  where: FormWhereInput
  search: FormSearchInput
  orgContextId: ID
): Form

type Form {
  clonedFrom: Form
  clonedFromId: ID
  cloneOverrides: JSON
  clones: [Form]
  createdBy: User
  createdById: ID
  createdAt: String
  description: String
  fields(orgContextId: ID): [FormField]
  id: ID!
  isSynchronized: Boolean
  name: String!
  organization: Organization!
  orgId: ID!
  tags: [Tag!]!
  triggers: [Trigger!]
  unpackedFrom: Crate
  unpackedFromId: ID
  updatedAt: String
  updatedBy: User
  updatedById: ID
  warrant: Warrant
}
```

**`FormWhereInput` — supported fields**

| Field            | Type                         |
| ---------------- | ---------------------------- |
| `clonedFromId`   | `ID`                         |
| `id`             | `ID`                         |
| `isSynchronized` | `Boolean`                    |
| `name`           | `String`                     |
| `orgId`          | `ID`                         |
| `triggers`       | `TriggerWhereInput` (nested) |
| `triggerId`      | `[ID]`                       |
| `unpackedFromId` | `ID`                         |

**`FormSearchInput` — supported fields**

| Field            | Wrapper                            |
| ---------------- | ---------------------------------- |
| `clonedFromId`   | `id_comparison_exp`                |
| `createdBy`      | `UserSearchInput` (nested)         |
| `id`             | `id_comparison_exp`                |
| `isSynchronized` | `bool_comparison_exp`              |
| `name`           | `string_comparison_exp`            |
| `organization`   | `OrganizationSearchInput` (nested) |
| `organizationId` | `id_comparison_exp`                |
| `triggerId`      | `id_comparison_exp`                |
| `unpackedFromId` | `id_comparison_exp`                |
| `updatedBy`      | `UserSearchInput` (nested)         |

**Is** `where` **or** `search` **mandatory?**

Yes - At least one filter is needed, identifying a single form - typically `id` on `where`.

</details>

<details>

<summary><strong><code>forms</code></strong>-Gets multiple forms with filtering.</summary>

**GraphQL schema**

```graphql
forms(
  where: FormWhereInput
  search: FormSearchInput
  limit: Int
  offset: Int
  hasTagIds: [ID]
  order: [[String!]!] = [["name"]]
): [Form!]!
```

**`FormWhereInput` — supported fields**

| Field            | Type                         |
| ---------------- | ---------------------------- |
| `clonedFromId`   | `ID`                         |
| `id`             | `ID`                         |
| `isSynchronized` | `Boolean`                    |
| `name`           | `String`                     |
| `orgId`          | `ID`                         |
| `triggers`       | `TriggerWhereInput` (nested) |
| `triggerId`      | `[ID]`                       |
| `unpackedFromId` | `ID`                         |

**`FormSearchInput` — supported fields**

| Field            | Wrapper                            |
| ---------------- | ---------------------------------- |
| `clonedFromId`   | `id_comparison_exp`                |
| `createdBy`      | `UserSearchInput` (nested)         |
| `id`             | `id_comparison_exp`                |
| `isSynchronized` | `bool_comparison_exp`              |
| `name`           | `string_comparison_exp`            |
| `organization`   | `OrganizationSearchInput` (nested) |
| `organizationId` | `id_comparison_exp`                |
| `triggerId`      | `id_comparison_exp`                |
| `unpackedFromId` | `id_comparison_exp`                |
| `updatedBy`      | `UserSearchInput` (nested)         |

**Is** `where` **or** `search` **mandatory?**

`limit` and `offset`.&#x20;

Note: `forms` runs SpiceDB permission filtering with a scan-budget cap (default 5× `limit`). For low-auth-ratio tenants the helper may return `hasMore: false` before exhausting the table — raise `limit` if a `while (hasMore)` paginator stops short.

</details>

<details>

<summary><strong><code>packConfigsForForm</code></strong>-Gets pack configurations associated with a form.</summary>

**GraphQL schema**

```graphql
packConfigsForForm(formId: ID!, orgId: ID!, triggerId: ID): [PackConfig!]!
```

**Is** `where` **or** `search` **mandatory?**

No - `formId`, `orgId`.

</details>

<details>

<summary><strong><code>evaluatedForm</code></strong>-Gets an evaluated form for a specific trigger.</summary>

**GraphQL schema**

```graphql
evaluatedForm(
  where: EvaluatedFormWhereInput
  orgContextId: ID
): Form
```

**`EvaluatedFormWhereInput` supported fields**

| Field       | Type             |
| ----------- | ---------------- |
| `orgId`     | `ID!` (required) |
| `triggerId` | `ID!` (required) |

**Is** `where` **or** `search` **mandatory?**

No `search` input is needed. Use both `orgId` and `triggerId` on `where` - both non-null.

</details>

#### **Microsoft CSP queries**

<details>

<summary><strong><code>microsoftCSPCustomer</code></strong>-Gets Microsoft CSP customer information.</summary>

**GraphQL schema**

```graphql
microsoftCSPCustomer(
  cspPackConfigId: ID!
  where: MicrosoftCSPCustomerWhereInput
): MicrosoftCSPCustomer

type MicrosoftCSPCustomer {
  createdAt: String!
  companyName: String!
  cspTenantId: String!
  hasConsent: Boolean!
  id: ID!
  linkedOrganizations: [Organization!]
  tenantId: String!
  updatedAt: String!
}
```

**`MicrosoftCSPCustomerWhereInput` supported fields**

| Field                 | Type                              |
| --------------------- | --------------------------------- |
| `companyName`         | `String`                          |
| `cspTenantId`         | `String`                          |
| `hasConsent`          | `Boolean`                         |
| `id`                  | `ID`                              |
| `linkedOrganizations` | `OrganizationWhereInput` (nested) |
| `tenantId`            | `String`                          |

**Is** `where` **or** `search` **mandatory?**

Yes - `cspPackConfigId` plus at least one filter on `where` to identify the customer. No `search` input is needed.&#x20;

</details>

<details>

<summary><strong><code>microsoftCSPCustomers</code></strong>-Gets multiple Microsoft CSP customers.</summary>

**GraphQL schema**

```graphql
microsoftCSPCustomers(
  cspPackConfigId: ID!
  search: MicrosoftCSPCustomerSearchInput,
  where: MicrosoftCSPCustomerWhereInput
): [MicrosoftCSPCustomer!]!
```

**`MicrosoftCSPCustomerSearchInput` supported fields**

| Field                 | Wrapper                            |
| --------------------- | ---------------------------------- |
| `companyName`         | `string_comparison_exp`            |
| `cspTenantId`         | `string_comparison_exp`            |
| `hasConsent`          | `bool_comparison_exp`              |
| `id`                  | `id_comparison_exp`                |
| `linkedOrganizations` | `OrganizationSearchInput` (nested) |
| `tenantId`            | `string_comparison_exp`            |

**Is** `where` **or** `search` **mandatory?**

`cspPackConfigId`. No `limit`/`offset` — results are scoped to the supplied pack config.

</details>

#### **Trigger instance queries**

<details>

<summary><strong><code>orgTriggerInstance</code></strong>-Gets a specific organization trigger instance.</summary>

**GraphQL schema**

```graphql
orgTriggerInstance(
  where: OrgTriggerInstanceWhereInput
  search: OrgTriggerInstanceSearchInput
): OrgTriggerInstance

type OrgTriggerInstance {
  id: ID!
  isManualActivation: Boolean
  organization: Organization
  orgId: ID
  lastSearchedAt: String
  trigger: Trigger
  triggerId: ID
  state: JSON
  createdAt: String!
  updatedAt: String!
}
```

**`OrgTriggerInstanceWhereInput` supported fields**

| Field          | Type                         |
| -------------- | ---------------------------- |
| `id`           | `ID`                         |
| `orgId`        | `ID`                         |
| `organization` | `OrganizationInput` (nested) |
| `triggerId`    | `ID`                         |
| `trigger`      | `TriggerWhereInput` (nested) |

**`OrgTriggerInstanceSearchInput` supported fields**

| Field          | Wrapper                       |
| -------------- | ----------------------------- |
| `id`           | `id_comparison_exp`           |
| `orgId`        | `id_comparison_exp`           |
| `organization` | `OrganizationInput` (nested)  |
| `triggerId`    | `id_comparison_exp`           |
| `trigger`      | `TriggerSearchInput` (nested) |

**Is** `where` **or** `search` **mandatory?**

At least one filter is needed identifying a single instance — typically `id`, or `orgId` + `triggerId`.

</details>

<details>

<summary><strong><code>orgTriggerInstances</code></strong>-Gets multiple organization trigger instances.</summary>

**GraphQL schema**

```graphql
orgTriggerInstances(
  where: OrgTriggerInstanceWhereInput
  search: OrgTriggerInstanceSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["createdAt"]]
): [OrgTriggerInstance!]!
```

**`OrgTriggerInstanceWhereInput` supported fields**

| Field          | Type                         |
| -------------- | ---------------------------- |
| `id`           | `ID`                         |
| `orgId`        | `ID`                         |
| `organization` | `OrganizationInput` (nested) |
| `triggerId`    | `ID`                         |
| `trigger`      | `TriggerWhereInput` (nested) |

**`OrgTriggerInstanceSearchInput` supported fields**

| Field          | Wrapper                       |
| -------------- | ----------------------------- |
| `id`           | `id_comparison_exp`           |
| `orgId`        | `id_comparison_exp`           |
| `organization` | `OrganizationInput` (nested)  |
| `triggerId`    | `id_comparison_exp`           |
| `trigger`      | `TriggerSearchInput` (nested) |

**Is** `where` **or** `search` **mandatory?**

`limit` and `offset` .

</details>

#### **Organization variable queries**

<details>

<summary><strong><code>orgVariable</code></strong>-Gets a specific organization variable.</summary>

**GraphQL schema**

```graphql
orgVariable(
  where: OrgVariableWhereInput
  search: OrgVariableSearchInput
  maskSecrets: Boolean
): OrgVariable

type OrgVariable {
  cascade: Boolean!
  category: OrgVariableCategory!
  createdAt: String!
  id: ID!
  name: String!
  organization: Organization!
  orgId: ID!
  packConfig: PackConfig
  packConfigId: ID
  updatedAt: String
  value: String
}

enum OrgVariableCategory {
  contact
  general
  secret
  system
}
```

**`OrgVariableWhereInput` supported fields**

| Field          | Type                              |
| -------------- | --------------------------------- |
| `id`           | `ID`                              |
| `name`         | `String`                          |
| `value`        | `String`                          |
| `category`     | `OrgVariableCategory`             |
| `orgId`        | `ID`                              |
| `organization` | `OrganizationWhereInput` (nested) |
| `packConfigId` | `ID`                              |
| `packConfig`   | `PackConfigWhereInput` (nested)   |

**`OrgVariableSearchInput` supported fields**

| Field          | Wrapper                            |
| -------------- | ---------------------------------- |
| `id`           | `id_comparison_exp`                |
| `name`         | `string_comparison_exp`            |
| `value`        | `string_comparison_exp`            |
| `category`     | `OrgVariableCategorySearchInput`   |
| `orgId`        | `id_comparison_exp`                |
| `organization` | `OrganizationSearchInput` (nested) |
| `packConfigId` | `id_comparison_exp`                |
| `packConfig`   | `PackConfigSearch` (nested)        |

**Is** `where` **or** `search` **mandatory?**

At least one filter is required— typically `id`, or `orgId` + `name`. Pass `maskSecrets: false` only when raw secret values are required.

</details>

<details>

<summary><strong><code>orgVariables</code></strong>-Gets multiple organization variables.</summary>

**GraphQL schema**

```graphql
orgVariables(
  where: OrgVariableWhereInput
  search: OrgVariableSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
  maskSecrets: Boolean
): [OrgVariable!]!
```

**`OrgVariableWhereInput` supported fields**

| Field          | Type                              |
| -------------- | --------------------------------- |
| `id`           | `ID`                              |
| `name`         | `String`                          |
| `value`        | `String`                          |
| `category`     | `OrgVariableCategory`             |
| `orgId`        | `ID`                              |
| `organization` | `OrganizationWhereInput` (nested) |
| `packConfigId` | `ID`                              |
| `packConfig`   | `PackConfigWhereInput` (nested)   |

**`OrgVariableSearchInput` supported fields**

| Field          | Wrapper                            |
| -------------- | ---------------------------------- |
| `id`           | `id_comparison_exp`                |
| `name`         | `string_comparison_exp`            |
| `value`        | `string_comparison_exp`            |
| `category`     | `OrgVariableCategorySearchInput`   |
| `orgId`        | `id_comparison_exp`                |
| `organization` | `OrganizationSearchInput` (nested) |
| `packConfigId` | `id_comparison_exp`                |
| `packConfig`   | `PackConfigSearch` (nested)        |

**Is** `where` **or** `search` **mandatory?**

Yes - `limit` and `offset`; scope with `where: { orgId: <id> }`.

</details>

<details>

<summary><strong><code>visibleOrgVariables</code></strong>-Gets organization variables visible to a specific organization.</summary>

**GraphQL schema**

```graphql
visibleOrgVariables(
  search: OrgVariableSearchInput
  visibleForOrgId: ID!
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [OrgVariable!]!
```

**`OrgVariableWhereInput` supported fields**

| Field          | Type                              |
| -------------- | --------------------------------- |
| `id`           | `ID`                              |
| `name`         | `String`                          |
| `value`        | `String`                          |
| `category`     | `OrgVariableCategory`             |
| `orgId`        | `ID`                              |
| `organization` | `OrganizationWhereInput` (nested) |
| `packConfigId` | `ID`                              |
| `packConfig`   | `PackConfigWhereInput` (nested)   |

**`OrgVariableSearchInput` supported fields**

| Field          | Wrapper                            |
| -------------- | ---------------------------------- |
| `id`           | `id_comparison_exp`                |
| `name`         | `string_comparison_exp`            |
| `value`        | `string_comparison_exp`            |
| `category`     | `OrgVariableCategorySearchInput`   |
| `orgId`        | `id_comparison_exp`                |
| `organization` | `OrganizationSearchInput` (nested) |
| `packConfigId` | `id_comparison_exp`                |
| `packConfig`   | `PackConfigSearch` (nested)        |

**Is** `where` **or** `search` **mandatory?**

Yes - filter via `search`. Results include cascading variables from parent orgs. No `where` input is required. `visibleForOrgId`, `limit`, `offset`.

</details>

#### **Organization management queries**

<details>

<summary><strong><code>organization</code></strong>-Gets a specific organization.</summary>

**GraphQL schema**

```graphql
organization(
  where: OrganizationWhereInput
  search: OrganizationSearchInput
): Organization

type Organization {
  actions: [Action!]!
  activatedTriggers: [Trigger!]!
  createdAt: String
  createdTags: [Tag!]!
  domain: String
  deletedAt: String
  forms: [Form!]!
  id: ID
  isMsp: Boolean
  isStaff: Boolean
  isEnabled: Boolean
  isDeleted: Boolean
  isInternal: Boolean
  installedPacks: [Pack!]!
  featurePreviewSettings: [OrganizationFeaturePreviewSetting]
  managedOrgAutoInstallingWorkflows: [Workflow!]!
  managedAndSubOrgs: [Organization!]!
  managedOrgs: [Organization!]!
  managingOrg: Organization
  managingOrgId: ID
  name: String!
  orgSlug: String
  packConfigs: [PackConfig!]!
  resultsRetentionDays: Int
  rocSiteId: String
  tags: [Tag!]!
  templates: [Template!]!
  tid: ID
  triggerInstances: [OrgTriggerInstance!]!
  triggers: [Trigger!]!
  users: [User!]!
  variables: [OrgVariable!]!
  visibleActions: [Action!]!
  visiblePackConfigs: [PackConfig!]!
  visibleWorkflows: [Workflow!]!
  workflowExecutions: [WorkflowExecution!]!
  workflows: [Workflow!]!
  supportAccessStatus: SupportAccessStatus
}
```

**`OrganizationWhereInput` supported fields**

| Field           | Type                                 | Notes                      |
| --------------- | ------------------------------------ | -------------------------- |
| `id`            | `ID`                                 |                            |
| `isStaff`       | `Boolean`                            |                            |
| `managedOrgs`   | `OrganizationWhereInput` (recursive) |                            |
| `managingOrg`   | `OrganizationWhereInput` (recursive) |                            |
| `managingOrgId` | `ID`                                 |                            |
| `name`          | `String`                             | Exact match only           |
| `orgSlug`       | `String`                             |                            |
| `rocSiteId`     | `String`                             |                            |
| `tags`          | `OrganizationTagsWhereInput`         | Nested: `{ id: [ID!] }`    |
| `users`         | `UserWhereInput`                     | Filter orgs by their users |
| `domain`        | `String`                             |                            |

**`OrganizationSearchInput` supported fields**

| Field                  | Wrapper                               |
| ---------------------- | ------------------------------------- |
| `createdAt`            | `string_comparison_exp`               |
| `id`                   | `id_comparison_exp`                   |
| `installedPacks`       | `PackSearchInput`                     |
| `isDeleted`            | `bool_comparison_exp`                 |
| `isEnabled`            | `bool_comparison_exp`                 |
| `isInternal`           | `bool_comparison_exp`                 |
| `isOnboarding`         | `bool_comparison_exp`                 |
| `isStaff`              | `bool_comparison_exp`                 |
| `managedOrgs`          | `OrganizationSearchInput` (recursive) |
| `managingOrg`          | `OrganizationSearchInput` (recursive) |
| `managingOrgId`        | `id_comparison_exp`                   |
| `name`                 | `string_comparison_exp`               |
| `orgSlug`              | `string_comparison_exp`               |
| `resultsRetentionDays` | `int_comparison_exp`                  |
| `rocSiteId`            | `string_comparison_exp`               |
| `tags`                 | `TagSearchInput`                      |
| `users`                | `UserSearchInput`                     |

**Is `where` or `search` mandatory?**

At least one of `where` or `search` to identify the org — typically `where: { id: <id> }` or `where: { orgSlug: <slug> }`.

</details>

<details>

<summary><strong><code>organizations</code></strong>-Gets multiple organizations.</summary>

**GraphQL schema**

```graphql
organizations(
  where: OrganizationWhereInput
  search: OrganizationSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Organization!]!
```



**`OrganizationWhereInput` supported fields**

| Field           | Type                                 | Notes                      |
| --------------- | ------------------------------------ | -------------------------- |
| `id`            | `ID`                                 |                            |
| `isStaff`       | `Boolean`                            |                            |
| `managedOrgs`   | `OrganizationWhereInput` (recursive) |                            |
| `managingOrg`   | `OrganizationWhereInput` (recursive) |                            |
| `managingOrgId` | `ID`                                 |                            |
| `name`          | `String`                             | Exact match only           |
| `orgSlug`       | `String`                             |                            |
| `rocSiteId`     | `String`                             |                            |
| `tags`          | `OrganizationTagsWhereInput`         | Nested: `{ id: [ID!] }`    |
| `users`         | `UserWhereInput`                     | Filter orgs by their users |
| `domain`        | `String`                             |                            |

Not filterable via `where` -  available via `search`: `isEnabled`, `isInternal`, `isDeleted`, `isOnboarding`, `createdAt`, `resultsRetentionDays`

Not filterable at all - neither `where` nor `search`): `isMsp`, `tid`, `deletedAt`

**`OrganizationSearchInput` supported fields**

| Field                  | Wrapper                               |
| ---------------------- | ------------------------------------- |
| `createdAt`            | `string_comparison_exp`               |
| `id`                   | `id_comparison_exp`                   |
| `installedPacks`       | `PackSearchInput`                     |
| `isDeleted`            | `bool_comparison_exp`                 |
| `isEnabled`            | `bool_comparison_exp`                 |
| `isInternal`           | `bool_comparison_exp`                 |
| `isOnboarding`         | `bool_comparison_exp`                 |
| `isStaff`              | `bool_comparison_exp`                 |
| `managedOrgs`          | `OrganizationSearchInput` (recursive) |
| `managingOrg`          | `OrganizationSearchInput` (recursive) |
| `managingOrgId`        | `id_comparison_exp`                   |
| `name`                 | `string_comparison_exp`               |
| `orgSlug`              | `string_comparison_exp`               |
| `resultsRetentionDays` | `int_comparison_exp`                  |
| `rocSiteId`            | `string_comparison_exp`               |
| `tags`                 | `TagSearchInput`                      |
| `users`                | `UserSearchInput`                     |

**Is `where` or `search` mandatory?**

Yes, in practice. `organizations` is one of the three unbounded tables. Always pass:

* `where: { managingOrgId: CTX.organization.id }` or a `search` filter, and
* `limit` (recommended ≤ 100) and `offset` for pagination.

**Worked example: Listing disabled organizations**

`isEnabled` is not on `OrganizationWhereInput`, so this fails:

```yaml
# ❌ WRONG — isEnabled is not on OrganizationWhereInput
operation: organizations
variables:
  where: { isEnabled: false }
```

Use `search` instead:

```yaml
# ✅ CORRECT
operation: organizations
variables:
  search:
    isEnabled: { _eq: false }
    managingOrgId: { _eq: "{{ CTX.organization.id }}" }
  limit: 100
  offset: 0
```

</details>

<details>

<summary><strong><code>orgSearch</code></strong>-Performs organization search with breadcrumbs.</summary>

**GraphQL schema**

```graphql
orgSearch(
  search: String
  rootOrgId: ID!
  breadcrumbRootOrgId: ID!
): [OrgSearchResult!]!

type OrgSearchResult {
  id: ID!
  name: String!
  hasChildren: Boolean!
  breadcrumbs: [OrgBreadcrumb]
  managingOrgId: ID
  supportAccessStatus: SupportAccessStatus
  isInternal: Boolean
  }
```

**Is `where` or `search` mandatory?**

No - WhereInput`/`SearchInput - search here is a plain free-text string matched against org name, not an operator-wrapper type. ReturnsOrgSearchResult (id, name, hasChildren, breadcrumbs, managingOrgId, supportAccessStatus, isInternal), not fullOrganization\`.

</details>

<details>

<summary><strong><code>softDeletedOrgs</code></strong>-Gets soft-deleted organizations.</summary>

**GraphQL schema**

```graphql
softDeletedOrgs(managingOrgId: ID!): [Organization!]!
```

**Is `where` or `search` mandatory?**

There is no `where`/`search`/pagination. Scoping is solely `managingOrgId`.

</details>

#### **Pack action option queries**

<details>

<summary><strong><code>packActionOption</code></strong>-Gets a specific pack action option.</summary>

**GraphQL schema**

```graphql
packActionOption(where: PackActionOptionWhereInput): PackActionOption

type PackActionOption {
  id: ID!
  name: String!
  packId: ID!
  path: String!
  method: HTTPMethod
  paginate: Boolean
  queryParams: JSON
  pathParams: JSON
  headers: JSON
  requiredPathVars: [String!]
  requiredQueryVars: [String!]
  requiredHeaderVars: [String!]
  resultsKey: String
  valueField: String!
  label: String!
  labelIsTemplate: Boolean
  valueFieldIsPath: Boolean
  maxPages: Int
  pageSize: Int
}
```

**`PackActionOptionWhereInput` supported fields**

| Field                | Type         |
| -------------------- | ------------ |
| `id`                 | `ID`         |
| `packId`             | `ID`         |
| `name`               | `String`     |
| `path`               | `String`     |
| `method`             | `HTTPMethod` |
| `paginate`           | `Boolean`    |
| `queryParams`        | `JSON`       |
| `pathParams`         | `JSON`       |
| `headers`            | `JSON`       |
| `requiredPathVars`   | `[String!]`  |
| `requiredQueryVars`  | `[String!]`  |
| `requiredHeaderVars` | `[String!]`  |
| `resultsKey`         | `String`     |
| `valueField`         | `String`     |
| `label`              | `String`     |
| `labelIsTemplate`    | `Boolean`    |
| `valueFieldIsPath`   | `Boolean`    |

**Is `where` or `search` mandatory?**

Yes - There is no `search` input — equality filtering via `where` only. `PackActionOptionWhereInput`

</details>

<details>

<summary><strong><code>packActionOptions</code></strong>-Gets multiple pack action options.</summary>

```graphql
packActionOptions(
  where: PackActionOptionWhereInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["label"]]
): [PackActionOption!]!
```

**GraphQL schema**

**`PackActionOptionsWhereInput` supported fields**

| Field                | Type         |
| -------------------- | ------------ |
| `id`                 | `ID`         |
| `packId`             | `ID`         |
| `name`               | `String`     |
| `path`               | `String`     |
| `method`             | `HTTPMethod` |
| `paginate`           | `Boolean`    |
| `queryParams`        | `JSON`       |
| `pathParams`         | `JSON`       |
| `headers`            | `JSON`       |
| `requiredPathVars`   | `[String!]`  |
| `requiredQueryVars`  | `[String!]`  |
| `requiredHeaderVars` | `[String!]`  |
| `resultsKey`         | `String`     |
| `valueField`         | `String`     |
| `label`              | `String`     |
| `labelIsTemplate`    | `Boolean`    |
| `valueFieldIsPath`   | `Boolean`    |

**Is `where` or `search` mandatory?**

There is no `search` input — equality filtering via `where` only. `limit`, `offset`; scope with `where: { packId: <id> }`.

</details>

#### **Pack bundle queries**

<details>

<summary><strong><code>packBundle</code></strong>-Gets a specific pack bundle.</summary>

**GraphQL schema**

```graphql
packBundle(where: PackBundleWhereInput!): PackBundle

type PackBundle {
  configSchema: JSON
  description: String
  id: ID!
  name: String!
  packs: [Pack!]!
  ref: String!
}
```

**`PackBundleWhereInput` supported fields**

| Field         | Type                      |
| ------------- | ------------------------- |
| `description` | `String`                  |
| `id`          | `ID`                      |
| `name`        | `String`                  |
| `packs`       | `PackWhereInput` (nested) |
| `ref`         | `String`                  |

**Is `where` or `search` mandatory?**

Yes - there is no `search` input. Use `where` (non-null) with at least one identifying field — typically `id` or `ref`.

</details>

<details>

<summary><strong><code>packBundles</code></strong>-Gets multiple pack bundles.</summary>

**GraphQL schema**

```graphql
packBundles(
  where: PackBundleWhereInput
  search: PackBundleSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [PackBundle]!
```

**`PackBundleSearchInput` — supported fields**

| Field         | Wrapper                                                       |
| ------------- | ------------------------------------------------------------- |
| `description` | `string_comparison_exp`                                       |
| `id`          | `id_comparison_exp`                                           |
| `name`        | `string_comparison_exp`                                       |
| `packs`       | `PackSearchInput` (nested)                                    |
| `ref`         | `String` (equality only — plain string, not a comparison exp) |

**Is `where` or `search` mandatory?**

`limit` and `offset`

</details>

#### **Pack configuration queries**

<details>

<summary><strong><code>packConfig</code></strong>-Gets a specific pack configuration.</summary>

**GraphQL schema**

```graphql
packConfig(
  where: PackConfigWhereInput
  search: PackConfigSearch
  includeSpec: Boolean
): PackConfig

type PackConfig {
  appliedToTriggers: [Trigger!]!
  config: JSON
  default: Boolean
  description: String
  id: ID
  metadata: JSON
  name: String!
  organization: Organization
  foreignObjectReferences: [ForeignObjectReference!]!
  orgId: ID
  orgVariables: [OrgVariable!]!
  pack: Pack
  packId: ID
  actionOptions: [ActionOption!]!
  updatedAt: String
  createdAt: String
  visibleForOrganizations: [Organization!]!
}
```

**`PackConfigWhereInput` supported fields**

| Field           | Type                              |
| --------------- | --------------------------------- |
| `actionOptions` | `ActionOptionWhereInput` (nested) |
| `config`        | `JSON`                            |
| `default`       | `Boolean`                         |
| `description`   | `String`                          |
| `id`            | `ID`                              |
| `metadata`      | `JSON`                            |
| `name`          | `String`                          |
| `orgId`         | `ID`                              |
| `pack`          | `PackWhereInput` (nested)         |
| `packId`        | `ID`                              |
| `ref`           | `ID`                              |

**`PackConfigSearch` supported fields**

| Field         | Wrapper                    |
| ------------- | -------------------------- |
| `id`          | `id_comparison_exp`        |
| `name`        | `string_comparison_exp`    |
| `default`     | `bool_comparison_exp`      |
| `description` | `string_comparison_exp`    |
| `config`      | `json_comparison_exp`      |
| `metadata`    | `json_comparison_exp`      |
| `orgId`       | `id_comparison_exp`        |
| `pack`        | `PackSearchInput` (nested) |
| `packId`      | `id_comparison_exp`        |

**Is `where` or `search` mandatory?**

Yes - Use at least one of `where` or `search` to identify the config.&#x20;

Note: `config` and `metadata` are `@sensitive` and may be redacted depending on caller permissions.

</details>

<details>

<summary><strong><code>packConfigs</code></strong>-Gets multiple pack configurations.</summary>

**GraphQL schema**

```graphql
packConfigs(
  where: PackConfigWhereInput
  search: PackConfigSearch
  resourceNames: String
  order: [[String!]!]
  includeSpec: Boolean
): [PackConfig!]!
```

**`PackConfigWhereInput` supported fields**

| Field           | Type                              |
| --------------- | --------------------------------- |
| `actionOptions` | `ActionOptionWhereInput` (nested) |
| `config`        | `JSON`                            |
| `default`       | `Boolean`                         |
| `description`   | `String`                          |
| `id`            | `ID`                              |
| `metadata`      | `JSON`                            |
| `name`          | `String`                          |
| `orgId`         | `ID`                              |
| `pack`          | `PackWhereInput` (nested)         |
| `packId`        | `ID`                              |
| `ref`           | `ID`                              |

**`PackConfigSearch` supported fields**

| Field         | Wrapper                    |
| ------------- | -------------------------- |
| `id`          | `id_comparison_exp`        |
| `name`        | `string_comparison_exp`    |
| `default`     | `bool_comparison_exp`      |
| `description` | `string_comparison_exp`    |
| `config`      | `json_comparison_exp`      |
| `metadata`    | `json_comparison_exp`      |
| `orgId`       | `id_comparison_exp`        |
| `pack`        | `PackSearchInput` (nested) |
| `packId`      | `id_comparison_exp`        |

**Is `where` or `search` mandatory?**

Yes - `orgId` scoping via `where` or `search` — unscoped calls return everything visible to the caller.

There is no **`limit`/`offset`** — this query does not accept pagination args. Always scope aggressively - e.g. `where: { orgId: <id>, packId: <id> }`.

</details>

<details>

<summary><strong><code>packConfigsForOrg</code></strong>-Gets pack configurations for a specific organization.</summary>

**GraphQL schema**

```graphql
packConfigsForOrg(
  packIds: [ID!]!
  orgId: ID!
  includeSpec: Boolean
): [PackConfig!]!
```

**Is `where` or `search` mandatory?**

No - There is no `where`/`search`/pagination. It's scoped solely by `packIds` + `orgId`.

</details>

#### **Pack management queries**

<details>

<summary><strong><code>pack</code></strong>-Gets a specific integration pack.</summary>

**GraphQL schema**

```graphql
pack(where: PackWhereInput): Pack

type Pack {
  actions: [Action!]!
  configFormSchema: JSON
  configSchema: JSON
  metadata: JSON
  description: String
  id: String
  orgId: ID
  installedBy: [Organization]
  isDefault: Boolean
  isOauthConfiguration: Boolean
  isMultitenancyEnabled: Boolean
  name: String
  orgVariables: JSON
  packBundle: PackBundle
  packBundleId: ID
  packConfigs: [PackConfig!]!
  packOverrides: [PackOverride]
  packTestAction: Action
  packType: PackType
  ref: String
  icon: String
  sensorTypes: [SensorType!]!
  setupInstructions: String
  status: PackStatus!
  tags: [Tag!]!
  triggerTypes: [TriggerType!]!
  uid: String
  version: String
}
```

**`PackWhereInput` supported fields**

| Field                  | Type                              |
| ---------------------- | --------------------------------- |
| `actions`              | `ActionInput` (nested)            |
| `packType`             | `PackType`                        |
| `description`          | `String`                          |
| `id`                   | `ID`                              |
| `installedBy`          | `OrganizationWhereInput` (nested) |
| `name`                 | `String`                          |
| `packBundleId`         | `ID`                              |
| `ref`                  | `String`                          |
| `orgId`                | `ID`                              |
| `status`               | `PackStatus`                      |
| `isOauthConfiguration` | `Boolean`                         |

**Is `where` or `search` mandatory?**

Yes - `where` with at least one identifying field — typically `id` or `ref`. There is no `search` input.

</details>

<details>

<summary><strong><code>packsAndBundlesByInstalledState</code></strong>-Gets packs and bundles organized by installation state.</summary>

**GraphQL schema**

```graphql
packsAndBundlesByInstalledState(
  orgId: ID!
  includeCustomPack: Boolean
): PacksAndBundlesByInstalledState!

type PacksAndBundlesByInstalledState {
  installedPacksAndBundles: [PackOrPackBundle!]
  marketplacePacksAndBundles: [PackOrPackBundle!]
}
```

**Is `where` or `search` mandatory?**

There is no `where`/`search`/pagination. Returns `installedPacksAndBundles` and `marketplacePacksAndBundles`. `orgId` is mandatory.&#x20;

</details>

#### **Page management queries**

<details>

<summary><strong><code>page</code></strong>-Gets a specific page definition.</summary>

**GraphQL schema**

```graphql
page(where: PageWhereInput!): Page

type Page {
  createdBy: User
  createdById: ID
  createdAt: String
  id: ID!
  loader: Loader
  name: String!
  path: String!
  site: Site
  siteId: ID
  updatedAt: String
  updatedBy: User
  updatedById: ID
  workflows: [Workflow!]!
  nodes: [PageNode]
  permission: Permission
  orgId: ID
  variables: [JSON]
  organization: Organization
  isSynchronized: Boolean
  clonedFromId: ID
  clonedFrom: Site
  cloneOverrides: JSON
  clones: [Page]
  title: String
}
```

**`PageWhereInput` supported fields**

| Field          | Type                                                         |
| -------------- | ------------------------------------------------------------ |
| `id`           | `ID`                                                         |
| `name`         | `String`                                                     |
| `siteId`       | `ID`                                                         |
| `site`         | `SitePropertiesInput` (nested: `{ id: ID, domain: String }`) |
| `path`         | `String`                                                     |
| `domain`       | `String`                                                     |
| `orgId`        | `ID`                                                         |
| `clonedFromId` | `ID`                                                         |
| `_`            | `String` (editor render hint — ignored server-side)          |

**Is `where` or `search` mandatory?**

Yes - `where` (non-null) with at least one identifying field — typically `id` or `siteId` + `path`. There is no `search` input.

</details>

<details>

<summary><strong><code>pages</code></strong>-Gets multiple pages.</summary>

**GraphQL schema**

```graphql
pages(
  where: PageWhereInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
  search: PageSearchInput
): [Page!]!
```

**`PageSearchInput` supported fields**

| Field    | Type     | Notes                                                       |
| -------- | -------- | ----------------------------------------------------------- |
| `name`   | `String` | Equality only — plain string, NOT a `string_comparison_exp` |
| `siteId` | `ID`     | Equality only                                               |

**Is `where` or `search` mandatory?**

Yes - `limit` and `offset`; scope with `where: { orgId: <id> }` or `where: { siteId: <id> }`.

`PageSearchInput` does not accept `_eq`/`_in`/`_like` wrappers despite being named `search`.

</details>

<details>

<summary><strong><code>pageVars</code></strong>-Gets page variables.</summary>

**GraphQL schema**

```graphql
pageVars(id: ID!, query: JSON): JSON
```

**Is `where` or `search` mandatory?**

`id`. `query` is an arbitrary JSON object passed as URL query params for variable resolution.

</details>

#### **Permission queries**

<details>

<summary><strong><code>permission</code></strong>-Gets a specific permission.</summary>

**GraphQL schema**

```graphql
permission(where: PermissionWhereInput): Permission

type Permission {
  id: ID
  templateId: ID
  authorizedForOrganizations: [Organization]
  authorizedForSubOrganizations: [Organization]
  excludeOrganizations: [Organization]
  roleIds: [String]
  override: String
  objectType: String
  objectId: String
  orgId: ID
  relation: String
  permissionType: String
  subjectType: String
  subjectId: String
}
```

**`PermissionWhereInput` supported fields**

| Field            | Type     |
| ---------------- | -------- |
| `id`             | `ID`     |
| `templateId`     | `ID`     |
| `objectId`       | `String` |
| `objectType`     | `String` |
| `permissionType` | `String` |

**Is `where` or `search` mandatory?**

There is no `search` input and no `limit`/`offset`. Scope to a specific object to keep result sets small (typically `objectId` + `objectType`).

</details>

<details>

<summary><strong><code>permissions</code></strong>-Gets multiple permissions.</summary>

**GraphQL schema**

```graphql
permissions(where: PermissionWhereInput): [Permission!]!
```

**`PermissionWhereInput` supported fields**

| Field            | Type     |
| ---------------- | -------- |
| `id`             | `ID`     |
| `templateId`     | `ID`     |
| `objectId`       | `String` |
| `objectType`     | `String` |
| `permissionType` | `String` |

**Is `where` or `search` mandatory?**

There is no `search` input and no `limit`/`offset`. Scope to a specific object to keep result sets small (typically `objectId` + `objectType`).

</details>

#### **Sensor type queries**

<details>

<summary><strong><code>sensorType</code></strong>-Gets a specific sensor type.</summary>

**GraphQL schema**

```graphql
sensorType(
  where: SensorTypeInput
  search: SensorTypeSearchInput
): SensorType

type SensorType {
  description: String
  enabled: Boolean
  entryPoint: String
  id: ID
  name: String
  notifyOnTriggerChanges: Boolean
  pack: Pack
  ref: String
  triggerTypes: [TriggerType!]!
}
```

**`SensorTypeInput` (where) supported fields**

| Field                    | Type      |
| ------------------------ | --------- |
| `description`            | `String`  |
| `enabled`                | `Boolean` |
| `entryPoint`             | `String`  |
| `id`                     | `ID`      |
| `name`                   | `String`  |
| `notifyOnTriggerChanges` | `Boolean` |
| `packId`                 | `ID`      |
| `ref`                    | `String`  |

**`SensorTypeSearchInput` supported fields**

| Field                    | Wrapper                   |
| ------------------------ | ------------------------- |
| `description`            | `string_comparison_exp`   |
| `enabled`                | `bool_comparison_exp`     |
| `entryPoint`             | `string_comparison_exp`   |
| `id`                     | `id_comparison_exp`       |
| `name`                   | `string_comparison_exp`   |
| `notifyOnTriggerChanges` | `Boolean` (equality only) |
| `packId`                 | `id_comparison_exp`       |
| `ref`                    | `string_comparison_exp`   |

**Is `where` or `search` mandatory?**

Yes - `where` or `search` with at least one filter field is required.

</details>

<details>

<summary><strong><code>sensorTypes</code></strong>-Gets multiple sensor types.</summary>

**GraphQL schema**

```graphql
sensorTypes(
  where: SensorTypeInput
  search: SensorTypeSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [SensorType!]!
```

**`SensorTypeInput` (where) supported fields**

| Field                    | Type      |
| ------------------------ | --------- |
| `description`            | `String`  |
| `enabled`                | `Boolean` |
| `entryPoint`             | `String`  |
| `id`                     | `ID`      |
| `name`                   | `String`  |
| `notifyOnTriggerChanges` | `Boolean` |
| `packId`                 | `ID`      |
| `ref`                    | `String`  |

**`SensorTypeSearchInput` supported fields**

| Field                    | Wrapper                   |
| ------------------------ | ------------------------- |
| `description`            | `string_comparison_exp`   |
| `enabled`                | `bool_comparison_exp`     |
| `entryPoint`             | `string_comparison_exp`   |
| `id`                     | `id_comparison_exp`       |
| `name`                   | `string_comparison_exp`   |
| `notifyOnTriggerChanges` | `Boolean` (equality only) |
| `packId`                 | `id_comparison_exp`       |
| `ref`                    | `string_comparison_exp`   |

**Is `where` or `search` mandatory?**

`limit` and `offset`.

</details>

#### **Site and app management queries**

<details>

<summary><strong><code>site</code></strong>-Gets a specific site/app.</summary>

**GraphQL schema**

```graphql
site(where: SiteWhereInput, search: SiteSearchInput): Site

type Site {
  createdBy: User
  createdById: ID
  createdAt: String
  domain: String
  id: ID!
  isLive: Boolean
  statusCode: Int
  statusMessage: String
  name: String!
  organization: Organization
  orgId: ID!
  shared: Boolean
  updatedAt: String
  updatedBy: User
  updatedById: ID
  template: String
  theme: JSON
  themeReferenceOrgVariable: String
  pages: [Page]
  permission: Permission
  customDomain: String
  isDnsValidated: Boolean
  useCustomDomain: Boolean
  isSynchronized: Boolean
  clonedFromId: ID
  clonedFrom: Site
  cloneOverrides: JSON
  clones: [Site]
  faviconUrl: String
}
```

**`SiteWhereInput`  supported fields**

| Field             | Type      |
| ----------------- | --------- |
| `id`              | `ID`      |
| `isLive`          | `Boolean` |
| `name`            | `String`  |
| `domain`          | `String`  |
| `orgId`           | `ID`      |
| `customDomain`    | `String`  |
| `isDnsValidated`  | `Boolean` |
| `useCustomDomain` | `Boolean` |
| `clonedFromId`    | `ID`      |
| `isSynchronized`  | `Boolean` |

**`SiteSearchInput` supported fields**

| Field             | Wrapper                            |
| ----------------- | ---------------------------------- |
| `id`              | `id_comparison_exp`                |
| `isLive`          | `bool_comparison_exp`              |
| `name`            | `string_comparison_exp`            |
| `domain`          | `string_comparison_exp`            |
| `organization`    | `OrganizationSearchInput` (nested) |
| `organizationId`  | `id_comparison_exp`                |
| `customDomain`    | `string_comparison_exp`            |
| `isDnsValidated`  | `bool_comparison_exp`              |
| `useCustomDomain` | `bool_comparison_exp`              |
| `clonedFromId`    | `id_comparison_exp`                |

**Is `where` or `search` mandatory?**

Yes - `where` or `search` with at least one filter field.

</details>

<details>

<summary><strong><code>sites</code></strong>-Gets multiple sites/apps.</summary>

**GraphQL schema**

```graphql
sites(where: SiteWhereInput, search: SiteSearchInput): [Site!]!
```

**`SiteWhereInput` supported fields**

| Field             | Type      |
| ----------------- | --------- |
| `id`              | `ID`      |
| `isLive`          | `Boolean` |
| `name`            | `String`  |
| `domain`          | `String`  |
| `orgId`           | `ID`      |
| `customDomain`    | `String`  |
| `isDnsValidated`  | `Boolean` |
| `useCustomDomain` | `Boolean` |
| `clonedFromId`    | `ID`      |
| `isSynchronized`  | `Boolean` |

**`SiteSearchInput` supported fields**

| Field             | Wrapper                            |
| ----------------- | ---------------------------------- |
| `id`              | `id_comparison_exp`                |
| `isLive`          | `bool_comparison_exp`              |
| `name`            | `string_comparison_exp`            |
| `domain`          | `string_comparison_exp`            |
| `organization`    | `OrganizationSearchInput` (nested) |
| `organizationId`  | `id_comparison_exp`                |
| `customDomain`    | `string_comparison_exp`            |
| `isDnsValidated`  | `bool_comparison_exp`              |
| `useCustomDomain` | `bool_comparison_exp`              |
| `clonedFromId`    | `id_comparison_exp`                |

**Is `where` or `search` mandatory?**

There is no `limit`/`offset`. Always scope by `orgId` to keep result sets small.

</details>

<details>

<summary><strong><code>getAppPermissions</code></strong>-Gets app permissions for an organization.</summary>

**GraphQL schema**

<pre class="language-graphql"><code class="lang-graphql"><strong>getAppPermissions(orgId: ID!): [Site!]!
</strong></code></pre>

**Is `where` or `search` mandatory?**

`orgId`

</details>

<details>

<summary><strong><code>getSiteTheme</code></strong>-Gets site theme configuration.</summary>

**GraphQL schema**

```graphql
getSiteTheme(id: ID, domain: String): JSON
```

**Is `where` or `search` mandatory?**

One of `id` or `domain`.

</details>

#### **Tag management queries**

<details>

<summary><strong><code>tag</code></strong>-Gets a specific tag.</summary>

**GraphQL schema**

```graphql
tag(where: TagWhereInput, search: TagSearchInput): Tag

type Tag {
  crates: [Crate!]
  createdAt: String
  description: String
  id: ID
  name: String
  organization: Organization
  organizations: [Organization!]!
  orgId: ID
  packs: [Pack!]!
  triggers: [Trigger!]!
  updatedAt: String
  color: String
}
```

**`TagWhereInput`  supported fields**

| Field           | Type                         | Notes                                                                    |
| --------------- | ---------------------------- | ------------------------------------------------------------------------ |
| `id`            | `ID`                         |                                                                          |
| `name`          | `String`                     | Exact match only — use `search.name` for `_like`/`_ilike`                |
| `orgId`         | `ID`                         | Recommended on every call (see scoping rule above)                       |
| `organizations` | `TagOrganizationsWhereInput` | Nested filter: `{ id: [ID] }` — match tags assigned to any of these orgs |

**`TagSearchInput`  supported fields**

| Field           | Wrapper                               |
| --------------- | ------------------------------------- |
| `id`            | `id_comparison_exp`                   |
| `name`          | `string_comparison_exp`               |
| `orgId`         | `id_comparison_exp`                   |
| `organizations` | `OrganizationSearchInput` (recursive) |



**Is `where` or `search` mandatory?**

Use `limit` and `offset`.

It is not filterable via **`where`** , despite existing on the `Tag` model: `color`, `description`, `createdAt`, `updatedAt`, `crates`, `packs`, `triggers`.

</details>

<details>

<summary><strong><code>tags</code></strong>-Gets multiple tags.</summary>

**GraphQL schema**

```graphql
tags(
  where: TagWhereInput
  search: TagSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
  includeTagsWithNoOwner: Boolean = false
): [Tag!]!
```

**`TagWhereInput`  supported fields**

| Field           | Type                         | Notes                                                                    |
| --------------- | ---------------------------- | ------------------------------------------------------------------------ |
| `id`            | `ID`                         |                                                                          |
| `name`          | `String`                     | Exact match only — use `search.name` for `_like`/`_ilike`                |
| `orgId`         | `ID`                         | Recommended on every call (see scoping rule above)                       |
| `organizations` | `TagOrganizationsWhereInput` | Nested filter: `{ id: [ID] }` — match tags assigned to any of these orgs |

It is not filterable via **`where`** , despite existing on the `Tag` model: `color`, `description`, `createdAt`, `updatedAt`, `crates`, `packs`, `triggers`.

**`TagSearchInput`  supported fields**

| Field           | Wrapper                               |
| --------------- | ------------------------------------- |
| `id`            | `id_comparison_exp`                   |
| `name`          | `string_comparison_exp`               |
| `orgId`         | `id_comparison_exp`                   |
| `organizations` | `OrganizationSearchInput` (recursive) |

**Is `where` or `search` mandatory?**

Schema-level: no. \
Practically: yes — pass `where: { orgId: CTX.organization.id }` to avoid the auto-inject path. This is the operation that produced the `Symbol(or)/Symbol(eq)/Symbol(in)` error.

</details>

<details>

<summary><strong><code>crateTags</code></strong>-Gets tags associated with crates.</summary>

**GraphQL schema**

```graphql
crateTags(
  where: TagWhereInput
  search: TagSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Tag!]!

input TagWhereInput {
  id: ID
  name: String
  orgId: ID
  organizations: TagOrganizationsWhereInput
}

input TagSearchInput {
  id: id_comparison_exp
  name: string_comparison_exp
  orgId: id_comparison_exp
  organizations: OrganizationSearchInput
}
```

**Is `where` or `search` mandatory?**

`tag.orgId`, `limit` and `offset`.

</details>

#### **Task and execution analytics queries**

<details>

<summary><strong><code>dailyTaskCountsByDateRange</code></strong>-Gets daily task counts within a date range.</summary>

**GraphQL schema**

```graphql
dailyTaskCountsByDateRange(
  orgId: ID!
  startDate: String!
  endDate: String!
): [TaskCountByDate!]!

type TaskCountByDate {
  date: String!
  count: Int!
}
```

**Is `where` or `search` mandatory?**

`orgId`, `startDate`, `endDate`

</details>

<details>

<summary><strong><code>taskExecutionStats</code></strong>-Gets task execution statistics.</summary>

**GraphQL schema**

```graphql
taskExecutionStats(orgId: ID!, createdSince: String): Int!
```

**Is `where` or `search` mandatory?**

`orgId`. `createdSince` is optional but recommended to bound the scan.

</details>

<details>

<summary><strong><code>taskLog</code></strong>-Gets a specific task log entry.</summary>

**GraphQL schema**

```graphql
taskLog(
  where: TaskLogWhereInput
  search: TaskLogSearchInput
): TaskLog

type TaskLog {
  createdAt: String
  executionId: String
  executionTime: String
  id: ID
  input: JSON
  message: String
  originalParentTaskId: String
  originalPrincipalOrgId: ID
  originalPrincipalOrgName: String
  originalRunAsOrgId: String
  originalRunAsOrgName: String
  originalWorkflowExecutionId: String
  originalWorkflowTaskId: String
  originalWorkflowTaskName: String
  parentTask: WorkflowTask
  parentTaskId: ID
  result: JSON
  runAsOrg: Organization
  runAsOrgId: ID
  principalOrg: Organization
  principalOrgId: ID
  status: String
  taskExecutionId: ID
  updatedAt: String
  workflow: Workflow
  workflowExecution: WorkflowExecution
  workflowExecutionId: String
  workflowTask: WorkflowTask
  workflowTaskId: ID
}
```

**`TaskLogWhereInput` supported fields**

| Field                         | Type     |
| ----------------------------- | -------- |
| `executionTime`               | `String` |
| `id`                          | `ID`     |
| `input`                       | `JSON`   |
| `message`                     | `String` |
| `originalParentTaskId`        | `String` |
| `originalPrincipalOrgId`      | `String` |
| `originalPrincipalOrgName`    | `String` |
| `originalRunAsOrgId`          | `String` |
| `originalRunAsOrgName`        | `String` |
| `originalWorkflowExecutionId` | `String` |
| `originalWorkflowTaskId`      | `String` |
| `parentTaskId`                | `ID`     |
| `principalOrgId`              | `ID`     |
| `result`                      | `JSON`   |
| `runAsOrgId`                  | `ID`     |
| `status`                      | `String` |
| `taskExecutionId`             | `ID`     |
| `workflowExecutionId`         | `ID`     |
| `workflowTaskId`              | `ID`     |

**`TaskLogSearchInput` supported fields**

| Field                      | Wrapper                 |
| -------------------------- | ----------------------- |
| `id`                       | `ID` (equality only)    |
| `originalPrincipalOrgId`   | `string_comparison_exp` |
| `originalPrincipalOrgName` | `string_comparison_exp` |
| `originalRunAsOrgId`       | `string_comparison_exp` |
| `originalRunAsOrgName`     | `string_comparison_exp` |
| `principalOrgId`           | `id_comparison_exp`     |
| `runAsOrgId`               | `id_comparison_exp`     |
| `status`                   | `string_comparison_exp` |
| `workflowExecutionId`      | `id_comparison_exp`     |

**Is `where` or `search` mandatory?**

Yes - `where` or `search` with at least `id` or `workflowExecutionId` is required.

&#x20;Note: `input` and `result` are sensitive fields and may be redacted.

</details>

<details>

<summary><strong><code>taskLogs</code></strong>-Gets multiple task log entries.</summary>

**GraphQL schema**

```graphql
taskLogs(
  where: TaskLogWhereInput
  search: TaskLogSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["createdAt"]]
  ): [TaskLog!]!
```

**`TaskLogWhereInput` supported fields**

| Field                         | Type     |
| ----------------------------- | -------- |
| `executionTime`               | `String` |
| `id`                          | `ID`     |
| `input`                       | `JSON`   |
| `message`                     | `String` |
| `originalParentTaskId`        | `String` |
| `originalPrincipalOrgId`      | `String` |
| `originalPrincipalOrgName`    | `String` |
| `originalRunAsOrgId`          | `String` |
| `originalRunAsOrgName`        | `String` |
| `originalWorkflowExecutionId` | `String` |
| `originalWorkflowTaskId`      | `String` |
| `parentTaskId`                | `ID`     |
| `principalOrgId`              | `ID`     |
| `result`                      | `JSON`   |
| `runAsOrgId`                  | `ID`     |
| `status`                      | `String` |
| `taskExecutionId`             | `ID`     |
| `workflowExecutionId`         | `ID`     |
| `workflowTaskId`              | `ID`     |

**`TaskLogSearchInput` supported fields**

| Field                      | Wrapper                 |
| -------------------------- | ----------------------- |
| `id`                       | `ID` (equality only)    |
| `originalPrincipalOrgId`   | `string_comparison_exp` |
| `originalPrincipalOrgName` | `string_comparison_exp` |
| `originalRunAsOrgId`       | `string_comparison_exp` |
| `originalRunAsOrgName`     | `string_comparison_exp` |
| `principalOrgId`           | `id_comparison_exp`     |
| `runAsOrgId`               | `id_comparison_exp`     |
| `status`                   | `string_comparison_exp` |
| `workflowExecutionId`      | `id_comparison_exp`     |

**Is `where` or `search` mandatory?**

workflowExecutionId`(via`where`or`search`),` limit`, and` offset`.` task\_logs\` is one of the three large unbounded tables — unscoped or unpaginated calls will time out.

</details>

#### **Template management queries**

<details>

<summary><strong><code>template</code></strong>- Gets a specific template.</summary>

**GraphQL schema**

```graphql
template(where: TemplateInput): Template

type Template {
  body: String!
  clonedFrom: Template
  clonedFromId: ID
  cloneOverrides: JSON
  clones: [Template]
  contentType: String!
  context: JSON
  createdAt: String!
  description: String
  id: ID!
  isShared: Boolean
  isSynchronized: Boolean
  language: String!
  name: String!
  organization: Organization!
  orgId: ID!
  permission: Permission
  tags: [Tag!]!
  unpackedFrom: Crate
  unpackedFromId: ID
  updatedAt: String!
  updatedBy: User
  updatedById: ID
}
```

**`TemplateInput` (where) supported fields**

| Field            | Type      |
| ---------------- | --------- |
| `body`           | `String`  |
| `clonedFromId`   | `ID`      |
| `contentType`    | `String`  |
| `description`    | `String`  |
| `id`             | `ID`      |
| `isSynchronized` | `Boolean` |
| `language`       | `String`  |
| `name`           | `String`  |
| `orgId`          | `ID`      |
| `tagIds`         | `[ID!]`   |
| `unpackedFromId` | `ID`      |

**Is `where` or `search` mandatory?**

Yes - `where` with at least one filter field, typically `id`. There is no `search` input.



</details>

<details>

<summary><strong><code>templates</code></strong>-Gets multiple templates.</summary>

**GraphQL schema**

```graphql
templates(
  where: TemplateInput
  search: TemplateSearch
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Template!]!
```

**`TemplateSearch` supported fields**

| Field            | Wrapper                            |
| ---------------- | ---------------------------------- |
| `clonedFromId`   | `id_comparison_exp`                |
| `contentType`    | `string_comparison_exp`            |
| `description`    | `string_comparison_exp`            |
| `id`             | `id_comparison_exp`                |
| `isSynchronized` | `bool_comparison_exp`              |
| `name`           | `string_comparison_exp`            |
| `organization`   | `OrganizationSearchInput` (nested) |
| `unpackedFromId` | `id_comparison_exp`                |

**Is `where` or `search` mandatory?**

`limit` and `offset`

</details>

<details>

<summary><strong><code>jinjaTemplate</code></strong>-Gets a Jinja template for rendering.</summary>

**GraphQL schema**

```graphql
jinjaTemplate(where: TemplateInput): Template
```



</details>

#### **Trigger type queries**

<details>

<summary><strong><code>triggerType</code></strong>-Gets a specific trigger type.</summary>

**GraphQL schema**

```graphql
triggerType(where: TriggerTypeWhereInput): TriggerType

type TriggerType {
  description: String
  id: ID
  name: String
  pack: Pack
  parametersSchema(filterArg: JSON, orgId: ID): JSON
  outputSchema: JSON
  ref: String
  isPoll: Boolean
  isWebhook: Boolean
  sensorType: SensorType
  triggers: [Trigger!]!
  webhookUrlTemplate: String
  canRunForManagedOrgs: Boolean
  enabled: Boolean
}
```

**`TriggerTypeWhereInput` supported fields**

| Field              | Type                         |
| ------------------ | ---------------------------- |
| `description`      | `String`                     |
| `id`               | `ID`                         |
| `isPoll`           | `Boolean`                    |
| `isWebhook`        | `Boolean`                    |
| `name`             | `String`                     |
| `packId`           | `ID`                         |
| `parametersSchema` | `JSON`                       |
| `outputSchema`     | `JSON`                       |
| `ref`              | `String`                     |
| `triggers`         | `TriggerWhereInput` (nested) |
| `enabled`          | `Boolean`                    |

**Is `where` or `search` mandatory?**

Yes - `where` with at least one filter field. There is no `search` input.

</details>

<details>

<summary><strong><code>triggerTypes</code></strong>-Gets multiple trigger types.</summary>

**GraphQL schema**

```graphql
triggerTypes(
  where: TriggerTypeWhereInput
  search: TriggerTypesSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [TriggerType!]!

input TriggerTypesSearchInput {
  description: string_comparison_exp
  id: id_comparison_exp
  isPoll: Boolean
  isWebhook: Boolean
  name: string_comparison_exp
  pack: PackSearchInput
  parametersSchema: json_comparison_exp
  outputSchema: json_comparison_exp
  ref: string_comparison_exp
  triggers: TriggerSearchInput
  enabled: bool_comparison_exp
```

| Field              | Wrapper                       |
| ------------------ | ----------------------------- |
| `description`      | `string_comparison_exp`       |
| `id`               | `id_comparison_exp`           |
| `isPoll`           | `Boolean` (equality only)     |
| `isWebhook`        | `Boolean` (equality only)     |
| `name`             | `string_comparison_exp`       |
| `pack`             | `PackSearchInput` (nested)    |
| `parametersSchema` | `json_comparison_exp`         |
| `outputSchema`     | `json_comparison_exp`         |
| `ref`              | `string_comparison_exp`       |
| `triggers`         | `TriggerSearchInput` (nested) |
| `enabled`          | `bool_comparison_exp`         |

**Is `where` or `search` mandatory?**

`limit` and `offset`

</details>

#### **Trigger management queries**

<details>

<summary><strong><code>trigger</code></strong>-Gets a specific trigger.</summary>

**GraphQL schema**

```graphql
trigger(
  where: TriggerWhereInput
  search: TriggerSearchInput
): Trigger

type Trigger {
  activatedForOrgs: [Organization!]!
  autoActivateManagedOrgs: Boolean!
  clonedFrom: Trigger
  clonedFromId: ID
  cloneOverrides: JSON
  clones: [Trigger]!
  criteria: JSON
  description: String
  enabled: Boolean
  id: ID!
  isSynchronized: Boolean
  name: String
  organization: Organization!
  orgId: ID
  orgInstances: [OrgTriggerInstance]
  packOverrides: [PackOverride!]
  parameters: JSON
  state: JSON
  tags: [Tag!]!
  triggerType: TriggerType
  triggerTypeId: ID!
  unpackedFrom: Crate
  unpackedFromId: ID
  vars: [JSON]
  workflowId: ID!
  form: Form
  formId: ID
  workflow: Workflow!
}
```

**`TriggerWhereInput` supported fields**

| Field            | Type                                    |
| ---------------- | --------------------------------------- |
| `clonedFromId`   | `ID`                                    |
| `criteria`       | `JSON`                                  |
| `description`    | `String`                                |
| `enabled`        | `Boolean`                               |
| `formId`         | `ID`                                    |
| `id`             | `ID`                                    |
| `isSynchronized` | `Boolean`                               |
| `name`           | `String`                                |
| `orgId`          | `ID`                                    |
| `orgInstances`   | `OrgTriggerInstanceWhereInput` (nested) |
| `parameters`     | `JSON`                                  |
| `state`          | `JSON`                                  |
| `triggerType`    | `TriggerTypeInput` (nested)             |
| `triggerTypeId`  | `ID`                                    |
| `unpackedFromId` | `ID`                                    |
| `workflowId`     | `ID`                                    |

**`TriggerSearchInput` supported fields**

| Field            | Wrapper                                  |
| ---------------- | ---------------------------------------- |
| `clonedFromId`   | `id_comparison_exp`                      |
| `criteria`       | `json_comparison_exp`                    |
| `description`    | `string_comparison_exp`                  |
| `enabled`        | `Boolean` (equality only)                |
| `formId`         | `id_comparison_exp`                      |
| `id`             | `id_comparison_exp`                      |
| `isSynchronized` | `bool_comparison_exp`                    |
| `name`           | `string_comparison_exp`                  |
| `organization`   | `OrganizationSearchInput` (nested)       |
| `orgId`          | `id_comparison_exp`                      |
| `orgInstances`   | `OrgTriggerInstanceSearchInput` (nested) |
| `packOverrides`  | `PackOverrideSearchInput` (nested)       |
| `parameters`     | `json_comparison_exp`                    |
| `state`          | `json_comparison_exp`                    |
| `triggerType`    | `TriggerTypesSearchInput` (nested)       |
| `triggerTypeId`  | `id_comparison_exp`                      |
| `unpackedFromId` | `id_comparison_exp`                      |
| `workflow`       | `WorkflowSearch` (nested)                |
| `workflowId`     | `id_comparison_exp`                      |

**Is `where` or `search` mandatory?**

Yes - `where` or `search` with at least one filter field.

</details>

<details>

<summary><strong><code>workflowCompletionListeners</code></strong>-Gets triggers configured to listen for workflow completion events.</summary>

**GraphQL schema:**

```graphql
workflowCompletionListeners(
  where: TriggerWhereInput
  search: TriggerSearchInput
): [Trigger!]!
```

</details>

<details>

<summary><strong><code>triggers</code></strong>-Gets multiple triggers.</summary>

**GraphQL schema**

```graphql
triggers(
  includeUnlisted: Boolean
  where: TriggerWhereInput
  search: TriggerSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Trigger!]!
```

**`TriggerWhereInput` supported fields**

| Field            | Type                                    |
| ---------------- | --------------------------------------- |
| `clonedFromId`   | `ID`                                    |
| `criteria`       | `JSON`                                  |
| `description`    | `String`                                |
| `enabled`        | `Boolean`                               |
| `formId`         | `ID`                                    |
| `id`             | `ID`                                    |
| `isSynchronized` | `Boolean`                               |
| `name`           | `String`                                |
| `orgId`          | `ID`                                    |
| `orgInstances`   | `OrgTriggerInstanceWhereInput` (nested) |
| `parameters`     | `JSON`                                  |
| `state`          | `JSON`                                  |
| `triggerType`    | `TriggerTypeInput` (nested)             |
| `triggerTypeId`  | `ID`                                    |
| `unpackedFromId` | `ID`                                    |
| `workflowId`     | `ID`                                    |

**`TriggerSearchInput` supported fields**

| Field            | Wrapper                                  |
| ---------------- | ---------------------------------------- |
| `clonedFromId`   | `id_comparison_exp`                      |
| `criteria`       | `json_comparison_exp`                    |
| `description`    | `string_comparison_exp`                  |
| `enabled`        | `Boolean` (equality only)                |
| `formId`         | `id_comparison_exp`                      |
| `id`             | `id_comparison_exp`                      |
| `isSynchronized` | `bool_comparison_exp`                    |
| `name`           | `string_comparison_exp`                  |
| `organization`   | `OrganizationSearchInput` (nested)       |
| `orgId`          | `id_comparison_exp`                      |
| `orgInstances`   | `OrgTriggerInstanceSearchInput` (nested) |
| `packOverrides`  | `PackOverrideSearchInput` (nested)       |
| `parameters`     | `json_comparison_exp`                    |
| `state`          | `json_comparison_exp`                    |
| `triggerType`    | `TriggerTypesSearchInput` (nested)       |
| `triggerTypeId`  | `id_comparison_exp`                      |
| `unpackedFromId` | `id_comparison_exp`                      |
| `workflow`       | `WorkflowSearch` (nested)                |
| `workflowId`     | `id_comparison_exp`                      |

**Is `where` or `search` mandatory?**

Yes - `limit` and `offset`, plus a scoping filter (typically `where: { orgId: <id> }` or `workflowId`). `hasTagIds` and `excludeTagIds` are convenience filters layered on top of `where`/`search`.

</details>

<details>

<summary><strong><code>triggerDbNotificationErrors</code></strong>-Gets database notification errors for a trigger.</summary>

**GraphQL schema**

```graphql
triggerDbNotificationErrors(triggerId: ID!): [DatabaseNotificationError!]!

type DatabaseNotificationError {
  detail: String!
  raised_at: String!
  type: String!
}
```

**Is `where` or `search` mandatory?**

`triggerId`

</details>

#### **User invite queries**

<details>

<summary><strong><code>userInvite</code></strong>-Gets a specific user invite.</summary>

**GraphQL schema**

```graphql
userInvite(
  where: UserInviteWhereInput
  search: UserInviteSearchInput
): UserInvite

type UserInvite {
  acceptedAt: String
  createdAt: String
  createdBy: User
  createdById: ID
  email: String!
  id: ID!
  isAccepted: Boolean
  organization: Organization!
  orgId: ID!
  roleIds: [String]
  roles: [JSON]
  sendEmail: Boolean
}
```

**`UserInviteWhereInput` supported fields**

| Field          | Type                              |
| -------------- | --------------------------------- |
| `acceptedAt`   | `String`                          |
| `email`        | `String`                          |
| `id`           | `ID`                              |
| `isAccepted`   | `Boolean`                         |
| `organization` | `OrganizationWhereInput` (nested) |
| `orgId`        | `ID`                              |
| `sendEmail`    | `Boolean`                         |

**`UserInviteSearchInput` supported fields**

| Field          | Wrapper                            |
| -------------- | ---------------------------------- |
| `email`        | `string_comparison_exp`            |
| `id`           | `id_comparison_exp`                |
| `organization` | `OrganizationSearchInput` (nested) |
| `orgId`        | `id_comparison_exp`                |
| `sendEmail`    | `bool_comparison_exp`              |

**Is `where` or `search` mandatory?**

Yes - use `where` or `search` with at least one filter field. Only available when `ENABLE_ADMIN_APPROVAL_REQUESTS` is OFF.

</details>

<details>

<summary><strong><code>userInvites</code></strong>-Gets multiple user invites.</summary>

**GraphQL schema**

```graphql
userInvites(
  where: UserInviteWhereInput
  search: UserInviteSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["email"]]
): [UserInvite]
```

**`UserInviteWhereInput` supported fields**

| Field          | Type                              |
| -------------- | --------------------------------- |
| `acceptedAt`   | `String`                          |
| `email`        | `String`                          |
| `id`           | `ID`                              |
| `isAccepted`   | `Boolean`                         |
| `organization` | `OrganizationWhereInput` (nested) |
| `orgId`        | `ID`                              |
| `sendEmail`    | `Boolean`                         |

**`UserInviteSearchInput` supported fields**

| Field          | Wrapper                            |
| -------------- | ---------------------------------- |
| `email`        | `string_comparison_exp`            |
| `id`           | `id_comparison_exp`                |
| `organization` | `OrganizationSearchInput` (nested) |
| `orgId`        | `id_comparison_exp`                |
| `sendEmail`    | `bool_comparison_exp`              |

**Is `where` or `search` mandatory?**

`limit`, `offset`, and a scoping filter, typically `where: { orgId: <id> }`). Only available when `ENABLE_ADMIN_APPROVAL_REQUESTS` is OFF.

</details>

#### **User management queries**

<details>

<summary><strong><code>me</code></strong>-Gets current user information.</summary>

**GraphQL schema**

```graphql
me: User

type User {
  createdAt: String
  favoriteActions: [UserFavoriteAction!]!
  id: ID
  isApiUser: Boolean
  isSuperuser: Boolean
  isTestUser: Boolean
  managedOrgs: [Organization!]!
  orgId: ID
  organization: Organization
  preferences: UserPreferences!
  roleIds: [String!]!
  roles: [JSON]
  sub: String
  username: String
  parentUserId: ID
  parentUsername: String
}
```

**Is `where` or `search` mandatory?**

No - returns the currently authenticated user and their organization respectively.

</details>

<details>

<summary><strong><code>userOrganization</code></strong>-Gets the user's organization.</summary>

**GraphQL schema:**

```graphql
userOrganization: Organization
```

</details>

<details>

<summary><strong><code>user</code></strong>-Gets a specific user.</summary>

**GraphQL schema**

```graphql
user(where: UserWhereInput, search: UserSearchInput): User
```

**`GetUserWhereInput` supported fields**

| Field          | Type                              |
| -------------- | --------------------------------- |
| `id`           | `ID`                              |
| `isSuperuser`  | `Boolean`                         |
| `managedOrgs`  | `OrganizationWhereInput` (nested) |
| `organization` | `OrganizationWhereInput` (nested) |
| `orgId`        | `ID!` (required)                  |
| `roleIds`      | `[String!]`                       |
| `sub`          | `String`                          |
| `username`     | `String`                          |
| `isTestUser`   | `Boolean`                         |
| `isApiUser`    | `Boolean`                         |

**`UserSearchInput` supported fields**

| Field          | Wrapper                            |
| -------------- | ---------------------------------- |
| `createdAt`    | `string_comparison_exp`            |
| `id`           | `id_comparison_exp`                |
| `isApiUser`    | `bool_comparison_exp`              |
| `isSuperuser`  | `bool_comparison_exp`              |
| `isTestUser`   | `bool_comparison_exp`              |
| `managedOrgs`  | `OrganizationSearchInput` (nested) |
| `organization` | `OrganizationSearchInput` (nested) |
| `orgId`        | `id_comparison_exp`                |
| `roleIds`      | `string_comparison_exp`            |
| `sub`          | `string_comparison_exp`            |
| `username`     | `string_comparison_exp`            |

**Is `where` or `search` mandatory?**

`orgId` on `where` is non-null — every user lookup must be scoped to an org. `createdAt` is filterable only via `search`, not `where`.

</details>

<details>

<summary><strong><code>users</code></strong>-Gets multiple users.</summary>

**GraphQL schema**

```graphql
users(
  where: UserWhereInput
  search: UserSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["username"]]
): [User!]!
```

**`GetUserWhereInput` supported fields**

| Field          | Type                              |
| -------------- | --------------------------------- |
| `id`           | `ID`                              |
| `isSuperuser`  | `Boolean`                         |
| `managedOrgs`  | `OrganizationWhereInput` (nested) |
| `organization` | `OrganizationWhereInput` (nested) |
| `orgId`        | `ID!` (required)                  |
| `roleIds`      | `[String!]`                       |
| `sub`          | `String`                          |
| `username`     | `String`                          |
| `isTestUser`   | `Boolean`                         |
| `isApiUser`    | `Boolean`                         |

**`UserSearchInput` supported fields**

| Field          | Wrapper                            |
| -------------- | ---------------------------------- |
| `createdAt`    | `string_comparison_exp`            |
| `id`           | `id_comparison_exp`                |
| `isApiUser`    | `bool_comparison_exp`              |
| `isSuperuser`  | `bool_comparison_exp`              |
| `isTestUser`   | `bool_comparison_exp`              |
| `managedOrgs`  | `OrganizationSearchInput` (nested) |
| `organization` | `OrganizationSearchInput` (nested) |
| `orgId`        | `id_comparison_exp`                |
| `roleIds`      | `string_comparison_exp`            |
| `sub`          | `string_comparison_exp`            |
| `username`     | `string_comparison_exp`            |

**Is `where` or `search` mandatory?**

`orgId` on `where` (non-null), `limit`, and `offset`.

</details>

<details>

<summary><strong><code>getTestUsers</code></strong>-Gets test users.</summary>

**GraphQL schema**

```graphql
getTestUsers(where: UserWhereInput): [User!]!
```

**Is `where` or `search` mandatory?**

Yes - requires `orgId` on `where`.

</details>

<details>

<summary><strong><code>getTestUserSession</code></strong>-Gets current test user session.</summary>

**GraphQL schema**

```graphql
getTestUserSession: User
```

**Is `where` or `search` mandatory?**

No.

</details>

#### **Workflow analytics queries**

<details>

<summary><strong><code>timeSavedGroupByWorkflow</code></strong>-Gets time saved statistics grouped by workflow.</summary>

**GraphQL schema**

```graphql
timeSavedGroupByWorkflow(
  orgId: ID!
  workflowStatus: String
  updatedAt: String!
  useStatsTable: Boolean! = true
): [TimeSavedGroupByWorkflow!]!

type TimeSavedGroupByWorkflow {
  workflowId: ID!
  workflowName: String
  secondsSaved: Int
  totalExecutions: Int
  successfulExecutions: Int
  failedExecutions: Int
}
```

**Is `where` or `search` mandatory?**

`orgId`, `updatedAt`, `useStatsTable`

</details>

<details>

<summary><strong><code>timeSavedGroupBySubOrg</code></strong>-Gets time saved statistics grouped by sub-organization.</summary>

**GraphQL schema:**

```graphql
timeSavedGroupBySubOrg(
  orgId: ID!
  workflowStatus: String
  updatedAt: String!
  useStatsTable: Boolean! = true
): [TimeSavedGroupByOrg!]!

type TimeSavedGroupByOrg {
  workflowId: ID!
  workflowName: String
  secondsSaved: Int
  totalExecutions: Int
  ranForOrg: String
  }
```

</details>

<details>

<summary><strong><code>workflowExecutionStats</code></strong>-Gets workflow execution statistics.</summary>

**GraphQL schema**

```graphql
workflowExecutionStats(
  orgId: ID!
  createdSince: String!
  rollUpTimeSaved: Boolean
  includeSubWorkflows: Boolean
): WorkflowExecutionStats

type WorkflowExecutionStats {
  delayed: Int!
  failed: Int!
  humanSecondsSaved: Int!
  paused: Int!
  pending: Int!
  running: Int!
  succeeded: Int!
}
```

**Is `where` or `search` mandatory?**

`orgId`, `createdSince`.

</details>

<details>

<summary><strong><code>workflowExecution</code></strong>-Gets a specific workflow execution.</summary>

**GraphQL schema**

```graphql
workflowExecution(
  where: WorkflowExecutionWhereInput
  search: WorkflowExecutionSearchInput
): WorkflowExecution

type WorkflowExecution {
  childExecutions: [WorkflowExecution!]!
  completionHandledExecution: WorkflowExecution
  completionHandlerExecutions: [WorkflowExecution!]!
  conductor: WorkflowExecutionConductor
  createdAt: String
  id: ID
  numAwaitingResponseTasks: Int
  numSuccessfulTasks: Int
  organization: Organization!
  orgId: ID!
  originatingExecutionId: ID
  parentExecution: WorkflowExecution
  parentExecutionId: ID
  parentTaskExecutionId: ID
  pendingTasks: [PendingTask]
  processedCompletionAt: String
  status: String
  subExecutions: [WorkflowExecution!]!
  taskLogs: [TaskLog!]!
  updatedAt: String
  workflow: Workflow!
}
```

**`WorkflowExecutionWhereInput` supported fields**

| Field                      | Type                 | Notes                            |
| -------------------------- | -------------------- | -------------------------------- |
| `id`                       | `ID`                 |                                  |
| `orgId`                    | `ID`                 | **Required in practice**         |
| `originatingExecutionId`   | `ID`                 |                                  |
| `status`                   | `String`             | Exact match only                 |
| `numAwaitingResponseTasks` | `Int`                |                                  |
| `workflow`                 | `WorkflowWhereInput` | Nested filter on parent workflow |
| `workflowId`               | `ID`                 |                                  |

Not filterable via `where` - use `search` instead: `createdAt`, `processedCompletionAt`, `organization`

**`WorkflowExecutionSearchInput` supported fields**

| Field                      | Wrapper                   |
| -------------------------- | ------------------------- |
| `id`                       | `id_comparison_exp`       |
| `orgId`                    | `id_comparison_exp`       |
| `originatingExecutionId`   | `id_comparison_exp`       |
| `status`                   | `string_comparison_exp`   |
| `numAwaitingResponseTasks` | `int_comparison_exp`      |
| `workflow`                 | `WorkflowSearch`          |
| `createdAt`                | `string_comparison_exp`   |
| `processedCompletionAt`    | `string_comparison_exp`   |
| `organization`             | `OrganizationSearchInput` |

**Is `where` or `search` mandatory?**

Yes - `id` via `where` or `search`. `workflow_executions` is partitioned — pass `id` so the lookup hits a single partition. `createdAt` and `processedCompletionAt` are filterable only via `search`.

</details>

<details>

<summary><strong><code>workflowExecutions</code></strong>-Gets multiple workflow executions.</summary>

**GraphQL schema**

```graphql
workflowExecutions(
  where: WorkflowExecutionWhereInput
  search: WorkflowExecutionSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["createdAt"]]
  includeSubOrgs: Boolean
): [WorkflowExecution]
```

**`WorkflowExecutionWhereInput` supported fields**

| Field                      | Type                 | Notes                            |
| -------------------------- | -------------------- | -------------------------------- |
| `id`                       | `ID`                 |                                  |
| `orgId`                    | `ID`                 | **Required in practice**         |
| `originatingExecutionId`   | `ID`                 |                                  |
| `status`                   | `String`             | Exact match only                 |
| `numAwaitingResponseTasks` | `Int`                |                                  |
| `workflow`                 | `WorkflowWhereInput` | Nested filter on parent workflow |
| `workflowId`               | `ID`                 |                                  |

Not filterable via `where` - use `search` instead: `createdAt`, `processedCompletionAt`, `organization`

**`WorkflowExecutionSearchInput` supported fields**

| Field                      | Wrapper                   |
| -------------------------- | ------------------------- |
| `id`                       | `id_comparison_exp`       |
| `orgId`                    | `id_comparison_exp`       |
| `originatingExecutionId`   | `id_comparison_exp`       |
| `status`                   | `string_comparison_exp`   |
| `numAwaitingResponseTasks` | `int_comparison_exp`      |
| `workflow`                 | `WorkflowSearch`          |
| `createdAt`                | `string_comparison_exp`   |
| `processedCompletionAt`    | `string_comparison_exp`   |
| `organization`             | `OrganizationSearchInput` |

**Is `where` or `search` mandatory?**

Yes, strongly. `workflow_executions` is the largest of the three unbounded tables. An unscoped query is essentially guaranteed to time-out. Always pass:

* `orgId` (via `where` or `search`)
* `limit` (recommended ≤ 50; payloads are large)
* `offset` for pagination
* A `createdAt` lower bound on `search` if you can will drastically narrow the partition scan

Shared pagination rule: Every plural query should be called with `limit` and `offset`. Queries against the largest tables—  `workflowExecutions`, `taskLogs`, `organizations`, and anything that traverses into them— will time out without it.

**Worked example: Recent failed executions for the current org**

```yaml
operation: workflowExecutions
variables:
  where:
    orgId: "{{ CTX.organization.id }}"
    status: "FAILED"
  search:
    createdAt: { _gte: "{{ CTX.now.minus(days=7).isoformat() }}" }
  limit: 50
  offset: 0
  order: [["createdAt", "DESC"]]
```



</details>

<details>

<summary><strong><code>workflowExecutionContexts</code></strong>-Gets workflow execution contexts.</summary>

**GraphQL schema**

```graphql
workflowExecutionContexts(workflowExecutionId: ID!): JSON
```

**Is `where` or `search` mandatory?**

`workflowExecutionId`. Always scoped to one execution — there is no list form.

</details>

<details>

<summary><strong><code>dailyTimeSavedByDateRange</code></strong>-Gets daily time saved within a date range.</summary>

**GraphQL schema**

```graphql
dailyTimeSavedByDateRange(
  orgId: ID!
  startDate: String!
  endDate: String!
): [TimeSavedByDate!]!

type TimeSavedByDate {
  date: String!
  seconds: Int!
}
```

**Is `where` or `search` mandatory?**

`orgId`, `startDate`, `endDate`

</details>

#### **Workflow patch queries**

<details>

<summary><strong><code>workflowPatch</code></strong>-Gets a specific workflow patch.</summary>

**GraphQL schema**

```graphql
workflowPatch(id: ID!): WorkflowPatch!

type WorkflowPatch {
  id: ID!
  patchType: PatchType!
  patch: JSON!
  comment: String!
  commentDescription: String
  user: User
  workflowId: ID!
  foreignId: ID
  createdAt: String!
  updatedAt: String!
}
```

**Is `where` or `search` mandatory?**

`id`

</details>

<details>

<summary><strong><code>workflowPatches</code></strong>-Gets multiple workflow patches.</summary>

**GraphQL schema**

```graphql
workflowPatches(
  where: WorkflowPatchWhereInput
  orderBy: WorkflowPatchOrderByInput = createdAt_DESC
  limit: Int
  offset: Int
  createdSince: String
): [WorkflowPatch!]!
```

**`WorkflowPatchWhereInput` — supported fields**

| Field        | Type                              |
| ------------ | --------------------------------- |
| `comment`    | `String`                          |
| `user`       | `UserWhereInput` (nested)         |
| `patchType`  | `PatchType`                       |
| `workflowId` | `ID`                              |
| `foreignId`  | `ID`                              |
| `createdAt`  | `String`                          |
| `updatedAt`  | <p></p><p><code>String</code></p> |

**Is `where` or `search` mandatory?**

Uses `orderBy` (an enum), not the `order` array used by most other plural queries. `where: { workflowId }`, `limit`, `offset`.

There is no `search` input.

</details>

#### **Workflow management queries**

<details>

<summary><strong><code>workflow</code></strong>-Gets a specific workflow.</summary>

**GraphQL schema**

```graphql
workflow(
  where: WorkflowWhereInput
  search: WorkflowSearch
): Workflow

input WorkflowWhereInput {
  clonedFromId: ID
  unpackedFromId: ID
  crates: CrateWhereInput
  description: String
  id: ID
  input: [String]
  isSynchronized: Boolean
  name: String
  orgId: ID
  output: [JSON]
  schemaVersion: String
  timeout: Int
  version: String
  type: WorkflowType
  visibleForOrganizations: ID
}

input WorkflowSearch {
  createdAt: string_comparison_exp
  clonedFromId: id_comparison_exp
  description: string_comparison_exp
  id: id_comparison_exp
  input: string_comparison_exp
  isSynchronized: bool_comparison_exp
  name: string_comparison_exp
  orgId: id_comparison_exp
  organization: OrganizationSearchInput
  org_id: id_comparison_exp
  output: string_comparison_exp
  schemaVersion: string_comparison_exp
  tags: TagSearchInput
  tasks: id_comparison_exp
  timeout: int_comparison_exp
  tokens: json_comparison_exp
  updatedAt: string_comparison_exp
  updatedBy: UserSearchInput
  version: string_comparison_exp
  visibleForOrganizations: id_comparison_exp
}
```

**`WorkflowWhereInput` supported fields**

| Field                     | Type                       |
| ------------------------- | -------------------------- |
| `clonedFromId`            | `ID`                       |
| `unpackedFromId`          | `ID`                       |
| `crates`                  | `CrateWhereInput` (nested) |
| `description`             | `String`                   |
| `id`                      | `ID`                       |
| `input`                   | `[String]`                 |
| `isSynchronized`          | `Boolean`                  |
| `name`                    | `String`                   |
| `orgId`                   | `ID`                       |
| `output`                  | `[JSON]`                   |
| `schemaVersion`           | `String`                   |
| `timeout`                 | `Int`                      |
| `version`                 | `String`                   |
| `type`                    | `WorkflowType`             |
| `visibleForOrganizations` | `ID`                       |

**`WorkflowSearch` supported fields**

| Field                     | Wrapper                            |
| ------------------------- | ---------------------------------- |
| `createdAt`               | `string_comparison_exp`            |
| `clonedFromId`            | `id_comparison_exp`                |
| `description`             | `string_comparison_exp`            |
| `id`                      | `id_comparison_exp`                |
| `input`                   | `string_comparison_exp`            |
| `isSynchronized`          | `bool_comparison_exp`              |
| `name`                    | `string_comparison_exp`            |
| `orgId`                   | `id_comparison_exp`                |
| `organization`            | `OrganizationSearchInput` (nested) |
| `org_id`                  | `id_comparison_exp` (alias)        |
| `output`                  | `string_comparison_exp`            |
| `schemaVersion`           | `string_comparison_exp`            |
| `tags`                    | `TagSearchInput` (nested)          |
| `tasks`                   | `id_comparison_exp`                |
| `timeout`                 | `int_comparison_exp`               |
| `tokens`                  | `json_comparison_exp`              |
| `updatedAt`               | `string_comparison_exp`            |
| `updatedBy`               | `UserSearchInput` (nested)         |
| `version`                 | `string_comparison_exp`            |
| `visibleForOrganizations` | `id_comparison_exp`                |

**Is `where` or `search` mandatory?**

Yes - `id` via `where` or `search`. \
Note: `createdAt`, `updatedAt`, and `tokens` are filterable only via `search`.

</details>

<details>

<summary><strong><code>workflows</code></strong>-Gets multiple workflows.</summary>

**GraphQL schema**

```graphql
workflows(
  where: WorkflowWhereInput
  search: WorkflowSearch
  hasListeners: Boolean
  hasParentWorkflows: Boolean
  hasTriggers: Boolean
  hasTriggerOfType: TriggerOfType
  hasTokens: Boolean
  isOptionsGenerator: Boolean
  isClone: Boolean
  isSyncClone: Boolean
  hasClones: Boolean
  isCrate: Boolean
  isCrateSource: Boolean
  hasTagIds: [ID!]
  excludeTagIds: [ID!]
  requireMatchingTasks: Boolean
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [Workflow!]!
```

**`WorkflowWhereInput` supported fields**

| Field                     | Type                       |
| ------------------------- | -------------------------- |
| `clonedFromId`            | `ID`                       |
| `unpackedFromId`          | `ID`                       |
| `crates`                  | `CrateWhereInput` (nested) |
| `description`             | `String`                   |
| `id`                      | `ID`                       |
| `input`                   | `[String]`                 |
| `isSynchronized`          | `Boolean`                  |
| `name`                    | `String`                   |
| `orgId`                   | `ID`                       |
| `output`                  | `[JSON]`                   |
| `schemaVersion`           | `String`                   |
| `timeout`                 | `Int`                      |
| `version`                 | `String`                   |
| `type`                    | `WorkflowType`             |
| `visibleForOrganizations` | `ID`                       |

**`WorkflowSearch` supported fields**

| Field                     | Wrapper                            |
| ------------------------- | ---------------------------------- |
| `createdAt`               | `string_comparison_exp`            |
| `clonedFromId`            | `id_comparison_exp`                |
| `description`             | `string_comparison_exp`            |
| `id`                      | `id_comparison_exp`                |
| `input`                   | `string_comparison_exp`            |
| `isSynchronized`          | `bool_comparison_exp`              |
| `name`                    | `string_comparison_exp`            |
| `orgId`                   | `id_comparison_exp`                |
| `organization`            | `OrganizationSearchInput` (nested) |
| `org_id`                  | `id_comparison_exp` (alias)        |
| `output`                  | `string_comparison_exp`            |
| `schemaVersion`           | `string_comparison_exp`            |
| `tags`                    | `TagSearchInput` (nested)          |
| `tasks`                   | `id_comparison_exp`                |
| `timeout`                 | `int_comparison_exp`               |
| `tokens`                  | `json_comparison_exp`              |
| `updatedAt`               | `string_comparison_exp`            |
| `updatedBy`               | `UserSearchInput` (nested)         |
| `version`                 | `string_comparison_exp`            |
| `visibleForOrganizations` | `id_comparison_exp`                |

**Is `where` or `search` mandatory?**

`limit` and `offset`. Scope by `orgId` — `workflows` is a large table and unscoped calls will be slow.

</details>

<details>

<summary><strong><code>workflowNote</code></strong>-Gets a specific workflow note.</summary>

**GraphQL schema**

```graphql
workflowNote(where: WorkflowNoteWhereInput): WorkflowNote

type WorkflowNote {
  id: ID
  title: String
  clonedFrom: WorkflowNote
  clonedFromId: ID
  createdAt: String
  content: String
  metadata: JSON
  index: Int!
  updatedAt: String
  workflow: Workflow
  workflowId: ID
}
```

**`WorkflowNoteWhereInput` supported fields**

| Field          | Type     |
| -------------- | -------- |
| `id`           | `ID`     |
| `title`        | `String` |
| `content`      | `String` |
| `metadata`     | `JSON`   |
| `clonedFromId` | `ID`     |
| `index`        | `Int`    |
| `workflowId`   | `ID`     |

**Is `where` or `search` mandatory?**

`id` or `workflowId` on `where` . There is no `search` input.

</details>

<details>

<summary><strong><code>workflowNotes</code></strong>-Gets multiple workflow notes.</summary>

**GraphQL schema**

```graphql
workflowNotes(
  where: WorkflowNoteWhereInput
  search: WorkflowNoteSearchInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["index"]]
  ): [WorkflowNote!]!
```

**`WorkflowNoteSearchInput` supported fields**

| Field          | Wrapper                 |
| -------------- | ----------------------- |
| `id`           | `id_comparison_exp`     |
| `title`        | `string_comparison_exp` |
| `content`      | `string_comparison_exp` |
| `metadata`     | `json_comparison_exp`   |
| `clonedFromId` | `id_comparison_exp`     |
| `index`        | `int_comparison_exp`    |
| `workflowId`   | `id_comparison_exp`     |

**Is `where` or `search` mandatory?**

`limit` and `offset`. Scope by `workflowId`.

</details>

<details>

<summary><strong><code>workflowTask</code></strong>-Gets a specific workflow task.</summary>

**GraphQL schema**

```graphql
workflowTask(where: WorkflowTaskWhereInput): WorkflowTask

type WorkflowTask {
  action: Action
  actionId: ID
  description: String
  humanSecondsSaved: Int
  id: ID
  input: JSON
  isMocked: Boolean
  join: Int
  metadata: JSON
  mockInput: JSON
  name: String
  next: [WorkflowTransition!]!
  packOverrides: [PackOverride!]
  publishResultAs: String
  retry: WorkflowTaskRetry
  runAsOrgId: String
  timeout: Int
  transitionMode: TransitionModes
  with: WorkflowTaskWithItems
  workflow: Workflow
  workflowId: ID
  securitySchema: JSON
}
```

`WorkflowTaskWhereInput` supported fields

| Field               | Type                          |
| ------------------- | ----------------------------- |
| `action`            | `ActionInput` (nested)        |
| `actionId`          | `ID`                          |
| `description`       | `String`                      |
| `humanSecondsSaved` | `Int`                         |
| `id`                | `ID`                          |
| `input`             | `JSON`                        |
| `isMocked`          | `Boolean`                     |
| `join`              | `Int`                         |
| `metadata`          | `JSON`                        |
| `mockInput`         | `JSON`                        |
| `name`              | `String`                      |
| `next`              | `[WorkflowTransitionInput!]`  |
| `retry`             | `WorkflowTaskRetryInput`      |
| `runAsOrgId`        | `String`                      |
| `timeout`           | `Int`                         |
| `with`              | `WorkflowTaskWithItemsInput`  |
| `workflowId`        | `ID`                          |
| `workflow`          | `WorkflowWhereInput` (nested) |

**Is `where` or `search` mandatory?**

Yes - `id` or `workflowId` and a discriminator on `where`. There is no `search` input.

</details>

<details>

<summary><strong><code>workflowTasks</code></strong>-Gets multiple workflow tasks.</summary>

**GraphQL schema**

```graphql
workflowTasks(
  where: WorkflowTaskWhereInput
  limit: Int
  offset: Int
  order: [[String!]!] = [["name"]]
): [WorkflowTask!]!
```

`WorkflowTaskWhereInput` supported fields

| Field               | Type                          |
| ------------------- | ----------------------------- |
| `action`            | `ActionInput` (nested)        |
| `actionId`          | `ID`                          |
| `description`       | `String`                      |
| `humanSecondsSaved` | `Int`                         |
| `id`                | `ID`                          |
| `input`             | `JSON`                        |
| `isMocked`          | `Boolean`                     |
| `join`              | `Int`                         |
| `metadata`          | `JSON`                        |
| `mockInput`         | `JSON`                        |
| `name`              | `String`                      |
| `next`              | `[WorkflowTransitionInput!]`  |
| `retry`             | `WorkflowTaskRetryInput`      |
| `runAsOrgId`        | `String`                      |
| `timeout`           | `Int`                         |
| `with`              | `WorkflowTaskWithItemsInput`  |
| `workflowId`        | `ID`                          |
| `workflow`          | `WorkflowWhereInput` (nested) |

**Is `where` or `search` mandatory?**

Yes - `where: { workflowId }`, `limit`, `offset`. `workflow_tasks` is large — unscoped calls will be slow. There is no `search` input.

</details>

{% hint style="info" %}
Each of the mutation expanders below contains information that includes the necessary updates you'll need to make for use of the mutation. Be sure to reference this information accordingly.
{% endhint %}

### Operation type: Mutations

#### **Action option mutations**

<details>

<summary><strong><code>createActionOptions</code></strong>-Creates multiple action options.</summary>

**GraphQL schema**

```graphql
createActionOptions(
  actionOptions: [ActionOptionInput!]!
  replace: Boolean
): [ActionOption]
```

**Necessary modifications**

Each item should supply `packConfigId`, `organizationId`, `optionLabel`, `optionValue`, and `resourceName`. Pass `replace: true` to overwrite the existing set; otherwise rows are appended.

**Usage example**

```yaml
operation_type: "mutation"
operation: "createActionOptions"
variable_values:
  actionOptions:
    - optionLabel: "Environment"
      optionValue: "production"
      organizationId: "{{ CTX.org_id }}"
      packConfigId: "{{ CTX.pack_config_id }}"
      resourceName: "server"
  replace: false
fields: "id, optionLabel, optionValue"
```

</details>

#### **Clone operations mutations**

<details>

<summary><strong><code>unlinkClone</code></strong>-Unlinks a cloned object from its source.</summary>

**GraphQL schema**

```graphql
unlinkClone(id: ID!, objectType: CloneableObjectType!): ID

enum CloneableObjectType {
  form
  template
  trigger
  workflow
  page
  site
}
```

**Necessary modifications**

&#x20;`id` and `objectType`. \
Note: this only severs the link. The object itself is not deleted.

**Usage example**

```yaml
operation_type: "mutation"
operation: "unlinkClone"
variable_values:
  id: "{{ CTX.workflow_id }}"
  objectType: "workflow"
```

</details>

#### **Component mutations**

<details>

<summary><strong><code>createComponent</code></strong>-Creates a new component.</summary>

**GraphQL schema**

```graphql
createComponent(component: CreateComponentInput!): Component

input CreateComponentInput {
  orgId: ID!
  name: String!
  description: String
  nodeTree: JSON!
  workflows: [ID]
  isSynced: Boolean
}
```

**Necessary modifications**

`component.orgId`, `component.name`, `component.nodeTree`.

</details>

<details>

<summary><strong><code>updateComponent</code></strong>-Updates an existing component.</summary>

**GraphQL schema**

```graphql
updateComponent(component: UpdateComponentInput!): Component
```

**Necessary modifications**

`component.id`, `component.name`, `component.orgId`. Pass through existing `name`/`orgId` values when only editing the tree.

</details>

<details>

<summary><strong><code>deleteComponent</code></strong>-Deletes a component.</summary>

**GraphQL schema**

```graphql
deleteComponent(id: ID!): Boolean
```

**Necessary modifications**

&#x20;`Id`.

</details>

<details>

<summary><strong><code>duplicateComponent</code></strong>-Duplicates an existing component.</summary>

**GraphQL schema**

```graphql
duplicateComponent(id: ID!): Component
```

**Necessary modifications**

&#x20;`Id`.

</details>

#### **Foreign object reference mutations**

<details>

<summary><strong><code>createForeignObjectReference</code></strong>-Creates a foreign object reference.</summary>

**GraphQL schema**

```graphql
createForeignObjectReference(
  foreignObjectReference: CreateForeignObjectReferenceInput
): ForeignObjectReference

input CreateForeignObjectReferenceInput {
  actionId: ID
  id: ID
  identifier: ID
  orgId: ID!
  packConfigId: ID
  referenceId: ID!
  workflowExecutionId: ID
}
```

**Necessary modifications**

`orgId` and `referenceId` on the input

</details>

<details>

<summary><strong><code>createOrUpdateForeignObjectReference</code></strong>-Creates or updates a foreign object reference.</summary>

**GraphQL schema**

```graphql
createOrUpdateForeignObjectReference(
  foreignObjectReference: CreateForeignObjectReferenceInput
): ForeignObjectReference
```

**Necessary modifications**

`orgId` and `referenceId`

</details>

#### **Form mutations**

<details>

<summary><strong><code>createForm</code></strong>-Creates a new form.</summary>

**GraphQL schema**

```graphql
createForm(form: FormCreateInput!): Form

input FormCreateInput {
  clonedFromId: ID
  cloneOverrides: JSON
  description: String
  fields: [FormFieldInput!]
  id: ID
  isSynchronized: Boolean
  name: String
  orgId: ID!
  unpackedFromId: ID
}

```

**Necessary modifications**

`form` with `orgId`.

**Usage example**

```yaml
operation_type: "mutation"
operation: "createForm"
variable_values:
  form:
    name: "User Information Form"
    description: "Collects user information for onboarding"
    orgId: "{{ CTX.org_id }}"
    fields:
      - type: "TEXT_INPUT"
        index: 0
        schema:
          label: "Full Name"
          required: true
fields: "id, name, description, fields { id, type, schema }"
```

</details>

<details>

<summary><strong><code>submitForm</code></strong>-Submits form data and triggers associated workflow.</summary>

**GraphQL schema**

```graphql
submitForm(
  id: ID!
  values: JSON!
  triggerId: ID!
  orgId: ID!
): JSON
```

**Necessary modifications**

`id`, `values`, `triggerId`, `orgId`

</details>

<details>

<summary><strong><code>setFormTags</code></strong>-Sets tags for a form.</summary>

**GraphQL schema**

```graphql
setFormTags(form: SetFormTagsInput!): Form

input SetFormTagsInput {
  id: ID!
  tagIds: [ID!]!
}
```

**Necessary modifications**

`id` and `tagIds`.

</details>

<details>

<summary><strong><code>shallowCloneForm</code></strong>-Creates a shallow clone of a form.</summary>

**GraphQL schema**

```graphql
shallowCloneForm(
  id: ID!
  orgId: ID!
  overrides: ShallowCloneOverridesInput
  : Form)
```

**Necessary modifications**

`id`, `orgId`.

</details>

<details>

<summary><strong><code>updateForm</code></strong>-Updates an existing form.</summary>

**GraphQL schema**

```graphql
updateForm(form: FormUpdateInput!): Form
```

**Necessary modifications**

`form` with `id`.

</details>

<details>

<summary><strong><code>deleteForm</code></strong>-Deletes a form.</summary>

**GraphQL schema**

```graphql
deleteForm(id: ID!): Void
```

**Necessary modifications**

`id`

</details>

#### **Organization trigger instance mutations**

<details>

<summary><strong><code>updateOrgTriggerInstance</code></strong>-Updates an organization trigger instance.</summary>

**GraphQL schema**

```graphql
updateOrgTriggerInstance(
  orgTriggerInstance: OrgTriggerInstanceInput!
): OrgTriggerInstance

input OrgTriggerInstanceInput {
  id: ID
  isManualActivation: Boolean
  organization: OrganizationInput
  orgId: ID
  lastSearchedAt: String
  trigger: TriggerUpdateInput
  triggerId: ID
  state: JSON
}
```

**Necessary modifications**

`orgTriggerInstance`, and an `id` or `orgId` + `triggerId` on the input to identify the row.

</details>

#### **Organization variable mutations**

<details>

<summary><strong><code>createOrgVariable</code></strong>-Creates a new organization variable.</summary>

**GraphQL schema:**

```graphql
createOrgVariable(orgVariable: OrgVariableCreateInput!): OrgVariable

input OrgVariableCreateInput {
  cascade: Boolean!
  id: ID
  name: String!
  value: String!
  category: OrgVariableCategory
  orgId: ID!
  packConfigId: ID
}
```

**Necessary modifications**

`cascade`, `name`, `value`, `orgId`.

**Usage example**

```yaml
operation_type: "mutation"
operation: "createOrgVariable"
variable_values:
  orgVariable:
    name: "api_endpoint"
    value: "https://api.example.com/v1"
    category: "general"
    cascade: true
    orgId: "{{ CTX.org_id }}"
fields: "id, name, value, category, cascade"
```

</details>

<details>

<summary><strong><code>deleteOrgVariable</code></strong>-Deletes an organization variable.</summary>

**GraphQL schema**

```graphql
deleteOrgVariable(id: ID!): ID
```

**Necessary modifications**

`id`

</details>

<details>

<summary><strong><code>updateOrgVariables</code></strong>-Updates multiple organization variables.</summary>

**GraphQL schema**

```graphql
updateOrgVariables(
  orgVariables: [OrgVariableUpdateInput!]!
): [OrgVariable!]!

input OrgVariableUpdateInput {
  cascade: Boolean
  category: OrgVariableCategory
  id: ID
  name: String!
  value: String
  orgId: ID
  packConfigId: ID
}
```

**Necessary modifications**

`orgVariables` (non-empty); each entry requires `id` and `name`.

</details>

#### **Organization management mutations**

<details>

<summary><strong><code>bulkCreateOrganizations</code></strong>-Creates multiple organizations in bulk.</summary>

**GraphQL schema**

```graphql
bulkCreateOrganizations(
  organizations: [OrganizationInput!]!
): [Organization!]!
```

**Necessary modifications**

`organizations` (non-empty); each item requires `name`.

</details>

<details>

<summary><strong><code>bulkDeleteOrganizations</code></strong>-Deletes multiple organizations in bulk.</summary>

**GraphQL schema**

```graphql
bulkDeleteOrganizations(organizationIds: [ID!]!): Void
```

**Necessary modifications**

`organizationIds`

</details>

<details>

<summary><strong><code>createOrganization</code></strong>-Creates a single organization.</summary>

**GraphQL schema**

```graphql
createOrganization(organization: OrganizationInput): Organization

input OrganizationInput {
  domain: String
  id: ID
  isEnabled: Boolean
  managingOrgId: ID
  name: String!
  orgSlug: String
  rocSiteId: String
  tid: String
  tagIds: [ID!]
}
```

**Necessary modifications**

`name` on each item.&#x20;

Note: `createOrganizations` returns nullable elements — a per-row failure yields a `null` slot rather than aborting the batch.

</details>

<details>

<summary><strong><code>createOrganizations</code></strong>-Creates multiple organizations.</summary>

**GraphQL schema**

```graphql
createOrganizations(
  organizations: [OrganizationInput!]!
): [Organization]
```

**Necessary modifications**

**`organizationinput`**

</details>

<details>

<summary><strong><code>deleteOrganization</code></strong>-Deletes an organization.</summary>

**GraphQL schema**

```graphql
deleteOrganization(id: ID!): Void
```

**Necessary modifications**

`id`

</details>

<details>

<summary><strong><code>updateManagedAndSubOrganizations</code></strong>-Updates all managed and suborganizations.</summary>

**GraphQL schema**

```graphql
updateManagedAndSubOrganizations(
  organization: OrganizationUpdateInput!
): Int

input OrganizationUpdateInput {
  domain: String
  id: ID!
  isEnabled: Boolean
  isInternal: Boolean
  isDeleted: Boolean
  isOnboarding: Boolean
  deletedAt: String
  name: String
  orgSlug: String
  resultsRetentionDays: Int
  rocSiteId: String
  tagIds: [ID!]
  tid: ID
}
```

**Necessary modifications**

`organization.id` (the parent org whose tree is being updated). Returns the count of affected rows.

</details>

<details>

<summary><strong><code>updateOrganization</code></strong>-Updates an organization.</summary>

**GraphQL schema**

```graphql
updateOrganization(
  organization: OrganizationUpdateInput
  cascadeChildOrgReenable: Boolean = false
): Organization

input OrganizationUpdateInput {
  domain: String
  id: ID!
  isEnabled: Boolean
  isInternal: Boolean
  isDeleted: Boolean
  isOnboarding: Boolean
  deletedAt: String
  name: String
  orgSlug: String
  resultsRetentionDays: Int
  rocSiteId: String
  tagIds: [ID!]
  tid: ID
}
```

**Necessary modifications**

`organization.id`. Pass `cascadeChildOrgReenable: true` to propagate `isEnabled: true` to child orgs when re-enabling.

</details>

<details>

<summary><strong><code>bulkUpdateOrganizationFeaturePreviewSettingByLabel</code></strong>-Bulk updates feature preview settings by label.</summary>

**Necessary modifications**

```graphql
bulkUpdateOrganizationFeaturePreviewSettingByLabel(
  isEnabled: Boolean!
  label: String!
  orgIds: [ID!]!
): [OrganizationFeaturePreviewSetting!]!
```

</details>

#### **Pack configuration mutations**

<details>

<summary><strong><code>synchronizePackBundleConfigs</code></strong>-Synchronizes pack bundle configurations.</summary>

**GraphQL schema**

```graphql
synchronizePackBundleConfigs(
  orgId: ID!
  packBundleId: ID!
  primaryPackConfigId: ID!
): [SynchronizedPackConfig!]!
```

**Necessary modifications**

`orgId`, `packBundleId`, `primaryPackConfigId`

</details>

<details>

<summary><strong><code>createPackConfig</code></strong>-Creates a new pack configuration.</summary>

**GraphQL schema**

```graphql
createPackConfig(packConfig: PackConfigCreateInput!): PackConfig

input PackConfigCreateInput {
  id: ID
  name: String!
  default: Boolean
  description: String
  config: JSON
  metadata: JSON
  orgId: ID!
  packId: ID!
}
```

**Necessary modifications**

`packConfig.name`, `packConfig.orgId`, `packConfig.packId`.

</details>

<details>

<summary><strong><code>deletePackConfig</code></strong>-Deletes a pack configuration.</summary>

**GraphQL schema**

```graphql
deletePackConfig(id: ID!, orgId: ID!): Void
```

**Necessary modifications**

`id`, `orgId`.

</details>

<details>

<summary><strong><code>refetchPackConfigRefOptions</code></strong>-Refetches pack configuration reference options.</summary>

**GraphQL schema**

```graphql
refetchPackConfigRefOptions(
  packConfigId: ID!
  reference: JSON
): JobRequestedResponse
```

**Necessary modifications**

`packConfigId` returns a `JobRequestedResponse` — work is asynchronous.

</details>

<details>

<summary><strong><code>testPackConfig</code></strong>-Tests a pack configuration.</summary>

**GraphQL schema**

```graphql
testPackConfig(packConfig: PackConfigTestInput!): JobRequestedResponse
```

**Necessary modifications**

`packConfig.id` returns a `JobRequestedResponse` — results delivered via `actionResults` subscription.

</details>

<details>

<summary><strong><code>updatePackConfig</code></strong>-Updates a pack configuration.</summary>

**GraphQL schema**

```graphql
updatePackConfig(packConfig: PackConfigUpdateInput!): PackConfig
```

**Necessary modifications**

`id` on each entry

</details>

<details>

<summary><strong><code>updatePackConfigs</code></strong>-Updates multiple pack configurations.</summary>

**GraphQL schema**

```graphql
updatePackConfigs(
  packConfigs: [PackConfigUpdateInput!]!
): [PackConfig!]!
```

</details>

#### **Pack mutations**

<details>

<summary><strong><code>generatePackOrBundleAuthUrl</code></strong>-Generates authorization URL for pack or bundle.</summary>

**GraphQL schema**

```graphql
generatePackOrBundleAuthUrl(
  orgId: ID!
  packBundleId: ID
  packConfigId: ID
  extra: JSON
): AuthUrlResponse

type AuthUrlResponse {
  authUrl: String
  error: String
}
```

**Necessary modifications**

`orgId`, plus exactly one of `packBundleId` or `packConfigId`.

</details>

<details>

<summary><strong><code>installPack</code></strong>-Installs a pack for an organization. Returns the updated Organization, not the pack.</summary>

**GraphQL schema**

```graphql
installPack(orgId: ID!, packId: ID!, name: String): Organization
```

**Necessary modifications**

`orgId`, `packId`

</details>

<details>

<summary><strong><code>getPackInstallations</code></strong>-Gets pack installation information. Defined as a mutation despite being read-only.</summary>

**GraphQL schema**

```graphql
getPackInstallations(packId: ID!): PackInstalledByResponse
```

**Necessary modifications**

`packId`

</details>

<details>

<summary><strong><code>getPackPageUrl</code></strong>-Gets the URL for a pack page. Defined as a mutation despite being read-only.</summary>

**GraphQL schema**

```graphql
getPackPageUrl(integrationRef: String!, pagePath: String!): String
```

**Necessary modifications**

`integrationRef`, `pagePath`

</details>

<details>

<summary><strong><code>updatePack</code></strong>-Updates a pack.</summary>

**GraphQL schema**

```graphql
updatePack(pack: PackUpdateInput!): Pack

input PackUpdateInput {
  actions: [ActionUpdateInput!]
  configSchema: JSON
  description: String
  icon: String
  id: ID
  isDefault: Boolean
  isMultitenancyEnabled: Boolean
  isOauthConfiguration: Boolean
  metadata: JSON
  name: String
  orgId: ID
  orgVariables: JSON
  packTestActionId: ID
  ref: String
  setupInstructions: String
  status: PackStatus
  tags: [String!]
  uid: String
  version: String
}
```

**Necessary modifications**

`pack` with `id` to identify the row

</details>

#### **Page mutations**

<details>

<summary><strong><code>createPage</code></strong>-Creates a new page.</summary>

**GraphQL schema**

```graphql
createPage(
  page: PageCreateInput!
  preset: String
  nodes: [PageNodeInput]
): Page

input PageCreateInput {
  id: ID
  loader: Loader
  siteId: ID
  workflows: [WorkflowInput]
  name: String!
  path: String!
  variables: [JSON]
  orgId: ID!
  clonedFromId: ID
  isSynchronized: Boolean
  cloneOverrides: JSON
}
```

**Necessary modifications**

`page.name`, `page.path`, `page.orgId`

</details>

<details>

<summary><strong><code>updatePage</code></strong>-Updates an existing page.</summary>

**GraphQL schema**

```graphql
updatePage(
  page: PageUpdateInput!
  nodes: [PageNodeInput]
): Page
```

**Necessary modifications**

`page.id`, `page.siteId`. \
Note: `pageNodes` is the encoded editor state passed as a string — decoded server-side.

</details>

<details>

<summary><strong><code>deletePage</code></strong>-Deletes a page.</summary>

**GraphQL schema**

```graphql
deletePage(id: ID!): Void
```

**Necessary modifications**

`deletePage`: requires `id`.&#x20;

</details>

<details>

<summary><strong><code>updatePageNode</code></strong>-Updates a page node.</summary>

**GraphQL schema**

```graphql
updatePageNode(id: ID!, props: JSON!): PageNode
```

**Necessary modifications**

`updatePageNode`: requires `id`, `props`.&#x20;

</details>

<details>

<summary><strong><code>updatePageNodeByCraftId</code></strong>-Updates a page node by craft ID.</summary>

**GraphQL schema**

```graphql
updatePageNodeByCraftId(
  craftId: String!
  pageId: ID!
  props: JSON!
): PageNode
```

**Necessary modifications**

`updatePageNodeByCraftId`: requires `craftId`, `pageId`, `props` — use when you have the Craft.js editor id rather than the persisted `PageNode.id`.

</details>

#### **Site mutations**

<details>

<summary><strong><code>createSite</code></strong>-Creates a new site/app.</summary>

**GraphQL schema**

```graphql
createSite(site: SiteCreateInput!): Site

input SiteCreateInput {
  name: String
  domain: String
  orgId: ID!
  template: String
  theme: JSON
  pages: [PagesImportInput]
  clonedFromId: ID
  isSynchronized: Boolean
  cloneOverrides: JSON
}
```

**Necessary modifications**

`site.orgId`

</details>

<details>

<summary><strong><code>updateSite</code></strong>-Updates an existing site/app.</summary>

**GraphQL schema**

```graphql
updateSite(site: SiteUpdateInput!): Site
updateSites(sites: [SiteUpdateInput!]!): [Site!]!

input SiteUpdateInput {
  id: ID!
  name: String
  domain: String
  orgId: ID
  layout: String
  theme: JSON
  isLive: Boolean
  statusCode: Int
  statusMessage: String
  customDomain: String
  isDnsValidated: Boolean
  useCustomDomain: Boolean
  themeReferenceOrgVariable: String
  pages: [PagesImportInput]
  clonedFromId: ID
  isSynchronized: Boolean
  cloneOverrides: JSON
  faviconUrl: String
}
```

**Necessary modifications**

`id` on each entry

</details>

<details>

<summary><strong><code>updateSites</code></strong>-Updates multiple sites.</summary>

**GraphQL schema**

```graphql
updateSites(sites: [SiteUpdateInput!]!): [Site!]!
```

**Necessary modifications**

`id`

</details>

<details>

<summary><strong><code>deleteSite</code></strong>-Deletes a site/app.</summary>

**GraphQL schema**

```graphql
deleteSite(id: ID!): Void
```

**Necessary modifications**

`id`

</details>

<details>

<summary><strong><code>validateSiteCustomDomainDNS</code></strong>-Validates custom domain DNS settings.</summary>

**GraphQL schema**

```graphql
validateSiteCustomDomainDNS(id: ID!): DNSValidationResponse

type DNSValidationResponse {
  isValid: Boolean
  message: String
}
```

**Necessary modifications**

`id`

</details>

#### **Tag mutations**

<details>

<summary><strong><code>createTag</code>  -</strong> Creates a new tag.</summary>

**GraphQL schema**

```graphql
createTag(tag: TagCreateInput!): Tag

input TagCreateInput {
  id: ID
  name: String
  description: String
  orgId: ID!
  color: String
}
```

**Necessary modifications**

Use `id`, `name`, and `orgId` on each entry.&#x20;

</details>

<details>

<summary><strong><code>deleteTag</code></strong>-Deletes a tag.</summary>

**GraphQL schema**

```graphql
deleteTag(id: ID!): ID
```

**Necessary modifications**

`id`

</details>

<details>

<summary><strong><code>updateTag or updateTags</code></strong>-Updates one tag, updates multiple tags.</summary>

**GraphQL schema**

```graphql
updateTag(tag: TagUpdateInput!): Tag!
updateTags(tags: [TagUpdateInput!]!): [Tag!]!

input TagUpdateInput {
  id: ID!
  name: String!
  description: String
  orgId: ID!
  color: String
}
```

**Necessary modifications**

`id`, `name`, and `orgId` on each entry.

</details>

<details>

<summary><strong><code>setOrganizationTags</code></strong>-Sets tags for an organization.</summary>

**GraphQL schema**

```graphql
setOrganizationTags(tagIds: [ID!]!, orgId: ID!): Organization
```

**Necessary modifications**

Use `tagIds` and `orgId`. This is a replace operation — passing `tagIds: []` clears all tags on the org.

</details>

#### **Template mutations**

<details>

<summary><strong><code>createTemplate</code></strong>-Creates a new template.</summary>

**GraphQL schema**

````graphql
createTemplate(template: TemplateCreateInput!): Template

input TemplateCreateInput {
  body: String!
  clonedFromId: ID
  cloneOverrides: JSON
  contentType: String
  context: JSON
  description: String
  id: ID
  isShared: Boolean
  isSynchronized: Boolean
  language: String
  name: String!
  orgId: ID!
  tags: [TagInput!]
  unpackedFromId: ID
}

## Best Practices

### Query Optimization

1. **Limit Data Retrieval**: Only request the fields you actually need
2. **Use Pagination**: Implement proper limit and offset for large datasets
3. **Filter Early**: Apply filters at the query level rather than post-processing

### Error Handling

```yaml
# Example workflow task with error handling
- name: execute_graphql_query
  action: rewst.generic_graph_request
  parameters:
    operation_type: "query"
    operation: "workflows"
    variable_values:
      limit: 100
      where:
        orgId: "{{ CTX.org_id }}"
  on_failure:
    - log_error:
        message: "GraphQL query failed: {{ RESULT.error }}"
````

**Necessary modifications**

`body`, `name`, `orgId`.

</details>

<details>

<summary>update<strong><code>Template</code></strong>-Updates an existing template.</summary>

**GraphQL schema**

```graphql
updateTemplate(template: TemplateUpdateInput!): Template

input TemplateUpdateInput {
  body: String
  clonedFromId: ID
  cloneOverrides: JSON
  contentType: String
  context: JSON
  description: String
  id: ID!
  isShared: Boolean
  isSynchronized: Boolean
  language: String
  name: String
  orgId: ID
  tags: [TagInput!]
  unpackedFromId: ID
}
```

**Necessary modifications**

`template.id`

</details>

<details>

<summary><code>update</code><strong><code>Template</code></strong>-Updates an existing template.</summary>

**GraphQL schema**

```graphql
updateTemplate(template: TemplateUpdateInput!): Template

input TemplateUpdateInput {
  body: String
  clonedFromId: ID
  cloneOverrides: JSON
  contentType: String
  context: JSON
  description: String
  id: ID!
  isShared: Boolean
  isSynchronized: Boolean
  language: String
  name: String
  orgId: ID
  tags: [TagInput!]
  unpackedFromId: ID
}
```

**Necessary modifications**

`template.id`

</details>

#### Trigger mutations

<details>

<summary><code>Createtrigger</code><strong>- Creates a trigger.</strong></summary>

**GraphQL schema**

```graphql
CreateTrigger(trigger: TriggerCreateInput!, createPatch: Boolean): Trigger

input TriggerCreateInput {
  activatedForOrgIds: [ID!]
  activatedForTagIds: [ID!]
  autoActivateManagedOrgs: Boolean
  clonedFromId: ID
  cloneOverrides: JSON
  criteria: JSON
  description: String
  enabled: Boolean
  formId: ID
  id: ID
  isActivatedForOwner: Boolean
  isSynchronized: Boolean
  name: String
  orgId: ID
  packOverrides: [PackOverrideInput]
  parameters: JSON
  state: JSON
  triggerTypeId: ID
  unpackedFromId: ID
  vars: [JSON!]
  workflow: WorkflowInput
  workflowBuilderInfo: JSON
  workflowId: ID
}
```

**Necessary modifications**

`trigger` with `triggerTypeId`, `orgId`, and either `workflowId` or `workflow.id`.

</details>

<details>

<summary><code>updatetrigger</code><strong>- Updates a trigger.</strong></summary>

**GraphQL schema**

```graphql
updateTrigger(
  trigger: TriggerUpdateInput!
  comment: String
  commentDescription: String
  createPatch: Boolean
): Trigger

input TriggerUpdateInput {
  activatedForOrgIds: [ID!]
  activatedForTagIds: [ID!]
  autoActivateManagedOrgs: Boolean
  clonedFromId: ID
  cloneOverrides: JSON
  criteria: JSON
  description: String
  enabled: Boolean
  formId: ID
  id: ID
  isActivatedForOwner: Boolean
  isSynchronized: Boolean
  name: String
  orgId: ID
  packOverrides: [PackOverrideInput]
  parameters: JSON
  state: JSON
  unpackedFromId: ID
  vars: [JSON!]
  workflow: WorkflowInput
  workflowBuilderInfo: JSON
  workflowId: ID
}

```

**Necessary modifications**

`trigger.id`

</details>

<details>

<summary><code>testworkflowtrigger</code><strong>-</strong> Fires a trigger against a workflow for testing.</summary>

**GraphQL schema**

```graphql
testWorkflowTrigger(
  triggerInstance: OrgTriggerInstanceInput!
  workflowId: ID
  input: JSON
): JobRequestedResponse
```

**Necessary modifications**

`triggerInstance`. `workflowId` and `input` are optional but typically supplied.

</details>

<details>

<summary><code>deletetrigger</code><strong>- Deletes a trigger.</strong></summary>

**GraphQL schema**

```graphql
deleteTrigger(id: ID!): ID
```

**Necessary modifications**

`id`

</details>

#### User mutations

<details>

<summary><code>updateuserpreferences</code> - Updates preferences for a user</summary>

**GraphQL schema**

```graphql
updateUserPreferences(userId: ID!, preferences: UserPreferencesInput!): User!

input UserPreferencesInput {
  isDarkModePreferred: Boolean
  dateFormat: String
  datetimeFormat: String
}
```

**Necessary modifications**

`userId`, `preferences`

</details>

<details>

<summary><code>createuser</code> - Creates a new user in an organization</summary>

**GraphQL schema**

```graphql
createUser(user: CreateUserInput!): User

input CreateUserInput {
  orgId: ID!
  isTestUser: Boolean
  username: String!
  roleIds: [String!]!
}
```

**Necessary modifications**

`orgId`, `username`, `roleIds`. Only available when `ENABLE_ADMIN_APPROVAL_REQUESTS` is OFF.

</details>

<details>

<summary><code>deleteuser</code> - Deletes a user in an organization</summary>

**GraphQL schema**

```graphql
deleteUser(id: ID!): Void

input UserRolesInput {
  id: ID!
  roleIds: [String!]!
}
```

**Necessary modifications**

Only available when `ENABLE_ADMIN_APPROVAL_REQUESTS` is OFF.

</details>

<details>

<summary><code>addfavoriteaction</code> - Adds a favorite action</summary>

**GraphQL schema**

```graphql
addFavoriteAction(userId: ID!, actionId: ID!): Void
```

**Necessary modifications**

`actionId` and `index`

</details>

<details>

<summary><code>removefavoriteaction</code> - Removes a favorite action</summary>

**GraphQL schema**



```graphql
removeFavoriteAction(userId: ID!, actionId: ID!): Void
```

**Necessary modifications**

`actionId` and `index`

</details>

<details>

<summary><code>setFavoriteActions</code> - Replaces the entire favorites list</summary>

**GraphQL schema**

```graphql
setFavoriteActions(userId: ID!, favoriteActions: [UserFavoriteActionInput!]!): [UserFavoriteAction!]!
```

**Necessary modifications**

`actionId` and `index`

</details>

#### Workflow mutations

<details>

<summary><code>createworkflow</code> - Creates a new workflow</summary>

**GraphQL schema**

{% include "../../../.gitbook/includes/createworkflow-workflow-wo....md" %}

</details>

<details>

<summary><code>deleteworkflow</code> - Deletes a workflow</summary>

**GraphQL schema**

{% include "../../../.gitbook/includes/createworkflow-workflow-wo....md" %}

</details>

<details>

<summary><code>deleteworkflows</code> - Deletes multiple workflows</summary>

**GraphQL schema**

{% include "../../../.gitbook/includes/createworkflow-workflow-wo....md" %}

</details>

<details>

<summary><code>deleteWorkflowExecution</code> - Deletes workflow executions</summary>

**GraphQL schema**

```graphql
deleteWorkflowExecution(id: ID!): Boolean
```

**Necessary modifications**

`id`

</details>

<details>

<summary><code>killWorkflowExecution</code> - Kills active workflow executions</summary>

**GraphQL schema**

```graphql
killWorkflowExecution(id: ID!): JSON
```

**Necessary modifications**

`id`

</details>

<details>

<summary><code>shallowcloneworkflow</code> - Creates a shallow clone of a workflow into an org.</summary>

**GraphQL schema**

```graphql
shallowCloneWorkflow(id: ID!, orgId: ID!, overrides: ShallowCloneOverridesInput): Workflow

input ShallowCloneOverridesInput {
  name: String
}
```

**Necessary modifications**

`id`, `orgId`. Does not deep-clone referenced objects.

</details>

<details>

<summary><code>testworkflow</code> - Triggers a one-off test execution of a workflow.</summary>

**GraphQL schema**



```graphql
testWorkflow(id: ID!, orgId: ID!, input: JSON, context: ExecuteContextType): JobRequestedResponse
```

**Necessary modifications**

`id`, `orgId`.

</details>

<details>

<summary><code>bulksetworkflowtags</code> - Replaces tag assignments on multiple workflows in one call.</summary>

**GraphQL schema**

```graphql
bulkSetWorkflowTags(workflowIds: [ID!]!, tagIds: [ID!]!): [Workflow!]!
```

**Necessary modifications**

`workflowIds`, `tagIds`.

</details>

<details>

<summary><code>createWorkflowCompletionListener</code> - Creates a completion listener trigger.</summary>

**GraphQL schema**

```graphql
createWorkflowCompletionListener(listener: CompletionListenerCreateInput!): Trigger

input CompletionListenerCreateInput {
  enabled: Boolean
  listeningToWorkflowId: ID!
  orgId: ID!
  packOverrides: [PackOverrideInput]
  handlerWorkflowId: ID!
  triggerOnStatuses: [String!]!
}
```

**Necessary modifications**

`listeningToWorkflowId`, `orgId`, `handlerWorkflowId`, `triggerOnStatuses`

</details>

<details>

<summary><code>updateWorkflowCompletionListener</code> - Updates a completion listener trigger.</summary>

**GraphQL schema**

```graphql
updateWorkflowCompletionListener(listener: CompletionListenerUpdateInput!): Trigger

input CompletionListenerUpdateInput {
  enabled: Boolean
  triggerId: ID!
  listeningToWorkflowId: ID!
  orgId: ID!
  packOverrides: [PackOverrideInput]
  handlerWorkflowId: ID!
  triggerOnStatuses: [String!]!
  cloneOverrides: JSON
}
```

**Necessary modifications**

`triggerId`, `listeningToWorkflowId`, `orgId`, `handlerWorkflowId`, `triggerOnStatuses`.

</details>

<details>

<summary><code>deleteWorkflowCompletionListener</code> - Deletes a completion listener trigger.</summary>

**GraphQL schema**

```graphql
deleteWorkflowCompletionListener(id: ID!): Void

input CompletionListenerUpdateInput {
  enabled: Boolean
  triggerId: ID!
  listeningToWorkflowId: ID!
  orgId: ID!
  packOverrides: [PackOverrideInput]
  handlerWorkflowId: ID!
  triggerOnStatuses: [String!]!
  cloneOverrides: JSON
}
```

**Necessary modifications**

`id`

</details>



## Security considerations

1. Always validate user inputs before including in queries
2. Use organization and permission filters to restrict data access
3. Track usage patterns for potential security issues

## Common use cases for the Generic GraphQL request action

### Bulk data operations

**Action configuration:**

* **Operation type**: `mutation`
* **Operation**: `updateOrgVariables`
*   **Variable values**:

    ```json
    {
      "orgVariables": [
        {
          "id": "var1",
          "name": "setting1",
          "value": "updated_value1"
        },
        {
          "id": "var2",
          "name": "setting2",
          "value": "updated_value2"
        }
      ]
    }
    ```

### Complex reporting

**Action configuration:**

* **Operation type**: `query`
* **Operation**: `workflows`
*   **Variable values**:

    ```json
    {
      "where": {
        "orgId": "{{ CTX.org_id }}"
      },
      "limit": 1000
    }
    ```
*   **Fields**:

    ```
    id
    name
    description
    createdAt
    updatedAt
    tasks {
      id
      name
      action {
        name
        pack {
          name
        }
      }
    }
    triggers {
      id
      name
      enabled
    }
    ```

### Data synchronization

**Action configuration:**

* **Operation type**: `query`
* **Operation**: `organizations`
*   **Variable values**:

    ```json
    {
      "where": {
        "managingOrgId": "{{ CTX.parent_org_id }}"
      },
      "order": [["name"]]
    }
    ```
* **Fields**: `id, name, domain, createdAt, managedOrgs { id, name }`

## Troubleshoot the Generic GraphQL request action

### **Query syntax errors**

* Validate GraphQL syntax using a GraphQL validator
* Check field names against the schema
* Ensure variable types match the expected schema types

### **Rate limiting**

* Implement exponential backoff for retries
* Consider breaking large operations into smaller batches
* Monitor API usage patterns

### Debug tips

1. Begin with basic queries before building complex operations
2. For debugging, use the `raw_query` parameter to see exact queries
3. Review workflow execution logs for detailed error messages
4. Build queries incrementally, adding fields and filters gradually
