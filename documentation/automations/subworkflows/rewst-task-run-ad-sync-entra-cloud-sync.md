# \[REWST - TASK] Run AD Sync/Entra Cloud Sync

This workflow functions as a critical automation building block that triggers both Active Directory and Microsoft Entra ID (formerly Azure AD) synchronization processes, ensuring consistent identity data across on-premises and cloud environments. The workflow orchestrates two key operations: initiating an Entra Cloud Sync task and executing AD synchronization via PowerShell commands through the client's RMM tool. MSPs will find this particularly valuable when building user onboarding/offboarding automations, troubleshooting identity inconsistencies, implementing scheduled maintenance routines, or within any workflow that modifies directory objects and requires synchronized updates to cloud services. This synchronization workflow eliminates the need for manual intervention during identity-related changes, reducing human error and ensuring reliable, consistent directory services for clients.

This workflow contains 5 tasks.

### Inputs

* **ad\_sync\_result**
  * Input identified from code reference
* **cloud\_sync\_result**
  * Input identified from code reference
* **output**
  * Input identified from code reference

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **attempt\_entra\_cloud\_sync**: Workflows integration: \[REWST - TASK] M365: Start Entra Cloud Sync
* **run\_ad\_sync**: Execution
* **failure\_catch**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ CTX.cloud_sync_result.success|d(false) }}
```

Used in transition condition

