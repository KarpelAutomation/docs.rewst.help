# \[REWST - TASK] Grant OneDrive Sharing Permissions

This workflow automates the granting of OneDrive sharing permissions and subsequent notification delivery, serving as a critical building block in larger automation processes such as user onboarding, ticket resolution, and resource provisioning. MSPs will find this particularly valuable for standardizing file-sharing protocols across client organizations, reducing manual admin tasks for common access requests, and creating auditable permission trails for compliance documentation. Technically, the workflow validates input parameters, leverages Microsoft Graph API to retrieve the user's OneDrive URL, applies the specified permissions via another Graph API call, and sends an automated notification email with access details to relevant parties. This automation can be triggered from PSA tickets, incorporated into RMM-initiated workflows, or deployed as a self-service portal option for clients to request access within pre-approved parameters.

This workflow contains 8 tasks.

### Inputs

* **recipients** - array
  * List of recipient email addresses
  * Default: `{{ [ ] }}`
* **permissions** - array
  * List of permissions, acceptable enums are: read, write, owner
  * Default: `{{ [ ] }}`
* **target\_user\_id** - string
  * User ID of whom we are granting permissions for.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **failure\_catch**: Core integration: noop
* **format\_endpoint**: Core integration: noop
* **BEGIN**: Core integration: noop
* **send\_invite\_link**: Communication/notification
* **get\_user\_drive\_url**: Data retrieval

### Jinja examples

#### Example 1

```jinja
{{ - 'u!' ~ encoded - }}
```

Used in publishing 'endpoint'

#### Example 2

```jinja
{{ - data_ns.status - }}
```

Used in publishing 'automation\_log'
