# \[PROD - TASK] Duo: Get User Counts

This workflow queries Duo Security to retrieve a comprehensive count of users across all client accounts, serving as a critical building block for MSPs to automate billing, license management, and security compliance reporting. It's particularly valuable for MSPs who bill per user, need to verify MFA deployment completeness, or must generate regular security compliance documentation for clients requiring multi-factor authentication. Technically, the workflow functions by first listing all Duo accounts, then retrieving all users from the Duo platform, and finally merging this data to generate accurate user counts that can feed into reporting systems, PSA tools, or client-facing dashboards.

This workflow contains 7 tasks.

### Inputs

This sub workflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **duo\_user\_count**: List of DUO companies and their counts.

### Key tasks

* **build automation log**: Logging
* **get\_user\_count**: Data retrieval
* **duo\_list\_accounts**: Duo integration: List Accounts
* **duo\_list\_users**: Duo integration: List Users
* **BEGIN**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ CTX.accounts.response }}
```

Used in setting the duo\_accounts alias.
