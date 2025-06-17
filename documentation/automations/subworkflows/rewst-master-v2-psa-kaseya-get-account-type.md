# \[Rewst Master v2] PSA-Kaseya: Get Account Type

This workflow retrieves account information from Kaseya BMS, making it a key component for automations that depend on client types or classifications. MSPs can use it for onboarding, tiered service delivery, or billing workflows that require different handling based on account data. It runs a single API call to pull account details, then makes that info available for other workflows, helping standardize and simplify client-specific automation without repeating the same logic.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of account type.

### Key tasks

* **kaseya\_bms\_list\_accounts**: Kaseya BMS integration: List Accounts

### Jinja example

```jinja
{{
    [
        {
        "id": account_type.accountTypeId,
        "name": account_type.accountType,
        "default": true if account_type.accountTypeId|string in ORG.VARIABLES[CTX.choose_variable]|d else false
        }
        for account_type in TASKS.kaseya_bms_list_accounts.result.result
        if account_type.isActive == true
    ] | sort(attribute="name") | unique(attribute="id")
}}
```

This is used in defining the data alias for account\_type.
