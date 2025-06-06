# \[REWST - TASK] General: Check Running Org

This workflow serves as a lightweight utility to verify that a workflow is running in the MSP orgs context instead of a customer context.

This is useful for workflows that need to run as the MSP (such as billing counts).

### Inputs

This sub workflow has no inputs.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **continue\_workflow**: This returns a boolean value indicating whether the parent workflow should continue or not.

### Key tasks

* **BEGIN**: Core integration: noop
* **check\_running\_org**: Validation/verification

### Jinja examples

#### Example 1

```jinja
{{ CTX.should_run }}
```

Used in publishing 'continue\_workflow'
