# \[REWST - TASK] Nodeware: Decommission Asset

This workflow automates the removal of assets from Nodeware vulnerability management by retrieving the asset information and executing the decommission process, serving as a critical component in device lifecycle management and client offboarding automations. MSPs will find this function valuable during hardware refresh cycles, client terminations, or when removing compromised devices from security monitoring to maintain an accurate, billable asset inventory. Technically, the workflow validates the asset UUID, retrieves current asset details from Nodeware to confirm its existence, and then executes the formal decommissioning process with optional justification documentation for compliance purposes. This automation eliminates the manual effort of logging into Nodeware to decommission devices individually, preventing ongoing vulnerability scans against retired assets that could trigger false alerts or create unnecessary security noise.

This workflow contains 6 tasks.

### Inputs

* **justification** - string
  * Reason for removal of the asset.
* **nodeware\_asset\_uuid** - string
  * UUID of the Nodeware asset to decommission.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.
* **decommissioned\_data**: data about the decommissioned device.
* **asset name**: name of asset

### Key tasks

* **get\_asset**: Data retrieval
* **failure\_catch**: Core integration: noop
* **decommission\_asset**: Nodeware integration: Decommission An Asset
* **check\_uuid**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ CTX.nodeware_asset_uuid|d }}
```

Unknown context

#### Example 2

```jinja
{{ CTX.get_asset_result.alias|d or CTX.get_asset_result.report.host.hostname|d }}
```

Used in publishing 'asset\_name'
