# \[PROD - TASK] Ninja: Get Device Counts

This workflow functions as a data-gathering utility that connects to NinjaRMM, retrieves all managed organizations, and calculates the total count of workstations and servers for each client. As a building block, it provides standardized device inventory data that can be consumed by other workflows for billing automation, client reporting, compliance verification, and device management processes. The workflow executes in three main technical steps: first retrieving the organization list from NinjaRMM, then making separate API calls to collect workstation and server device lists, and finally calculating the per-organization device counts for consumption by other systems. MSPs will find this particularly valuable for usage-based billing automation, reconciling device counts against agreements, generating executive reports for clients, and tracking environment growth trends across their client base.

This workflow contains 8 tasks.

### Inputs

This sub workflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **ninja\_device\_counts**: List of Ninja RMM companies and their counts.

### Key tasks

* **BEGIN**: Core integration: noop
* **ninja\_rmm\_list\_organizations**: NinjaRMM integration: List Organizations
* **list\_workstations**: NinjaRMM integration: List Devices
* **list\_servers**: NinjaRMM integration: List Devices
* **calculate\_org\_device\_counts**: Calculation

### Jinja examples

#### Example 1

```jinja
{{ [ { "company": org.name, "company_id": org.id, "workstation_count": [item for item in CTX.ninja_workstations if item.organizationId == org.id] | length, "server_count":[item for item in CTX.ninja_servers if item.organizationId == org.id] | length, "network_device_count": [item for item in CTX.ninja_network_devices if item.organizationId == org.id] | length, } for org in CTX.ninja_orgs ] }}
```

This expression creates a detailed inventory report by iterating through all organizations in NinjaRMM and counting their workstations, servers, and network devices. It accesses NinjaRMM data stored in the CTX variable (context), filtering devices by organization ID to generate accurate device counts for each client.
