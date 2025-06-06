# \[PROD - TASK] Rewst: Send Email with Attachment

This workflow provides a reliable method for sending emails with attachments through Rewst, functioning as a critical communication component that can be called from other automations to deliver documents, reports, or files to clients or team members. MSPs can leverage this building block to automate client communications for service completion notifications, scheduled security reports, license renewals, or documentation delivery—all with proper attachments and consistent branding. Technically, the workflow accepts inputs including recipient addresses, subject, body content, and attachment details, then determines whether to send via standard email or through Microsoft Graph (allowing for user impersonation), with built-in error handling for failed deliveries or missing user accounts. This reusable component eliminates the need to rebuild email functionality in every workflow, allowing MSPs to standardize client communications while focusing on building more complex automation processes.

This workflow contains 13 tasks.

### Inputs

* **send\_to** - array (Required)
  * Default: `{{ [ ] }}`
* **subject** - string
* **send\_as\_guid** - string (Required)
* **use\_failover** - boolean
  * Default: `{{ true }}`
* **attachment\_name** - string
* **attachment\_type** - string
* **encoded\_contents** - string
* **message\_contents** - string
* **no\_failover\_attachment** - boolean
  * Default: `{{ false }}`

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **output**: Outputs a dictionary object with a key for success, the value for success is a boolean value indicating whether the workflow was successful or not.

### Key tasks

* **check\_sendas\_field**: Communication/notification
* **Send\_Email**: Communication/notification
* **core\_sendmail**: Communication/notification
* **microsoft\_graph\_get\_user**: Data retrieval
* **user\_not\_found**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ CTX.subject|d }}
```

Used in input parameter 'subject'
