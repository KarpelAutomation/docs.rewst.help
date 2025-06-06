# \[REWST - TASK] M365: Invalidate User Sessions

This workflow serves as a critical security building block that forces sign-out of all active Microsoft 365 sessions for specified users through Microsoft Graph API calls. MSPs can leverage this automation in security incident response when accounts are potentially compromised, during employee offboarding processes to immediately revoke access, or as part of compliance-driven security protocols requiring session termination. Technically, the workflow validates input parameters, executes a Microsoft Graph API request to invalidate the user's sessions, and includes error handling to ensure reliable execution. This automation component integrates seamlessly with larger workflows like offboarding sequences or security incident response playbooks, enabling MSPs to implement immediate access revocation without manual intervention.

This workflow contains 5 tasks.

### Inputs

* **user\_id** - string
  * The GUID of the user in Azure/Entra

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **invalidate\_sessions**: Validation/verification
* **check\_inputs**: Validation/verification
* **failure\_catch**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ CTX.user_id }}
```

Used in input parameter 'endpoint'

#### Example 2

```jinja
{{ CTX.user_id|d }}
```

Used in transition condition
