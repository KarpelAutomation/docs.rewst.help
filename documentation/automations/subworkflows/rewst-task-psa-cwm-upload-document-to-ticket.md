# \[REWST - TASK] PSA-CWM: Upload Document to Ticket

This workflow provides a streamlined method for uploading documents to ConnectWise Manage tickets through API integration, serving as a reusable component that can be incorporated into larger automation processes whenever document attachments are required. MSPs will find this particularly valuable for automatically attaching diagnostic reports, compliance documentation, invoices, or remediation evidence to service tickets without manual intervention. Technically, the workflow executes an authenticated API request to ConnectWise Manage that uploads the specified document to a designated ticket, handling all the authentication and formatting requirements behind the scenes. This building block eliminates repetitive document handling tasks for technicians and ensures consistent documentation practices across client tickets.

This workflow contains 4 tasks.

### Inputs

* **record\_id** - string
* **attachment** - string
* **record\_type** - string
* **attachment\_name** - string

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **connect\_wise\_manage\_cwm\_api\_request**: ConnectWise PSA integration: CW PSA API Request
* **BEGIN**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{CTX.record_id}}
```

Used in generating the multi-part form data.

#### Example 2

```jinja
{{CTX.attachment_name}}
```

Used in generating the multi-part form data.
