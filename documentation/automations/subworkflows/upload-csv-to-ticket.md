# Upload CSV To Ticket

This reusable workflow lets MSPs automatically attach CSV files to tickets in ConnectWise PSA, Datto Autotask, or HaloPSA using a standardized method. It takes a CSV file and ticket ID, identifies the correct PSA, and runs the right API calls to upload the attachment. MSPs can use it to add reports like compliance scans, inventories, or license data—removing the need for manual uploads and keeping ticket documentation consistent across platforms.

This workflow contains 7 tasks.

### Inputs

* **psa** - string
  * Defaults to organization varilable `default_psa` if not provided.
* **file** - string
* **title** - string
* **ticket\_id** - string (Required)
* **attachment\_name** - string (Required)

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **cw\_psa\_upload\_csv\_to\_ticket**: Workflows integration: \[REWST - TASK] PSA-CWM: Upload Document to Ticket
* **FAILED**: Core integration: noop
* **datto\_upload\_csv\_to\_ticket**: Datto Autotask PSA integration: Datto PSA API Request
* **halo\_psa\_add\_or\_update\_attachments**: Data modification
* **select\_psa**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{- CTX.ticket_id -}}
```

Used in input parameter 'record\_id' on the ConnectWise PSA task.
