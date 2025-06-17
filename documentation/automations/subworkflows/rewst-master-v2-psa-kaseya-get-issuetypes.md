# \[Rewst Master v2] PSA-Kaseya: Get IssueTypes

This workflow pulls the full list of issue types from Kaseya BMS via an authenticated API call, making it essential for ticket categorization and routing automation. MSPs can use it to build dynamic ticket creation flows, trigger actions based on issue types, or populate forms without hardcoding values. It ensures downstream processes always reference up-to-date issue classifications, helping maintain consistent, accurate ticket handling across the service desk.

This workflow contains 1 task.

### Inputs

* **choose\_variable** - string

### Outputs

* **options**: Array of issue types.

### Key tasks

* **kaseya\_get\_issues**: Data retrieval

### Jinja example

```jinja
{{
    [
        {
            "label": issue.name,
            "id": issue.id,
            "default": true if issue.id == ORG.VARIABLES[CTX.choose_variable]|d|int else false
        }
        for issue in TASKS.kaseya_get_issues.result.result
        if issue.isActive == true
    ] | unique(attribute='id')
}}
```

This is used in defining the issueType data alias.
