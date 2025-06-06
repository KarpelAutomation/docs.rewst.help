# \[REWST - PROCESS] PSA: Update Ticket

This workflow functions as a universal PSA ticket updating mechanism that abstracts the underlying complexity of different PSA platforms, allowing MSPs to programmatically update ticket details across Freshdesk, Halo, Kaseya BMS, ConnectWise, ServiceNow, or Datto PSA from a single standardized interface. It serves as a critical building block for automating ticket lifecycle management, enabling more complex workflows like auto-responses, SLA adherence tracking, and customer communication updates without needing platform-specific code. Technically, the workflow operates by first determining which PSA provider is in use through the "determine\_provider" task, then routes the request to the appropriate platform-specific ticket update task, creating a vendor-agnostic approach that simplifies cross-platform automation development. This function proves especially valuable for MSPs implementing advanced service desk automation, cross-platform data synchronization, and consistent multi-system ticket management processes.

This workflow contains 11 tasks.

### Inputs

* **psa** - string
  * Ability to override PSA. Set to organization varilable default\_psa is not supplied
* **ticket\_id** - string
  * ID of the ticket to be updated
* **cwm\_tech\_id** - string
  * Connectwise PSA Technician ID
* **work\_minutes** - string
  * Number of minutes worked
* **external\_note** - string
  * Note that will be exposed to Customer
* **internal\_note** - string
  * Note that only your PSA users will see
* **resolution\_note** - string
  * Note to be placed in the Resolution field
* **complete\_workflow** - string
  * Mark ticket as templete
* **set\_ticket\_status** - string
  * Set Ticket Status ID
* **datto\_ticket\_number** - string
  * Ticket number used in Datto

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **begin**: Core integration: noop
* **determine\_provider**: Core integration: noop
* **freshdesk\_update\_ticket**: Data modification
* **halo\_psa\_update\_ticket**: Data modification
* **kaseya\_bms\_update\_ticket**: Data modification

### Jinja examples

#### Example 1

```jinja
{{- CTX.psa -}}
```

Used in publishing 'psa'

#### Example 2

```jinja
{{- ORG.VARIABLES.default_psa -}}
```

Used in publishing 'psa'
