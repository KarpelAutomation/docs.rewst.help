# \[Rewst Master v2] PSA-Halo: Get SLAs

This workflow pulls all SLA configurations from HaloPSA using an authenticated API call, making it a key data source for more advanced automations. MSPs can use it to power ticket prioritization, SLA dashboards, proactive alerts, or custom reports. It returns detailed info like response times, resolution targets, and business hours—removing the need to rebuild SLA retrieval and auth logic in every workflow, and ensuring consistent, efficient access to SLA data.

This workflow contains 1 task.

### Inputs

No inputs defined.

### Outputs

* **options**: Array of SLAs.

### Key Tasks

* **list\_slas**: HaloPSA integration: HaloPSA API Request

### Jinja Examples

#### Example 1

```jinja
{{ [{"id": slas.id, "name": slas.name} for slas in TASKS.list_slas.result.result]}}
```

This Jinja is used in building out the options array that is output by the options output.
