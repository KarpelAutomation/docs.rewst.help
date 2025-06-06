# \[REWST - TASK] Delay Automation

This workflow functions as a critical scheduling component that pauses automation processes until a specified date/time, updating PSA tickets with delay status and ensuring requested delays fall within a reasonable timeframe (30 days). For MSPs, this building block enables scheduling maintenance windows during off-hours, implementing mandatory cooling periods on escalation processes, creating time-based follow-up actions for tickets, and facilitating multistage onboarding/offboarding processes that require time separation between steps. Technically, the workflow validates the requested delay timeframe, documents the pending delay in the PSA system, pauses execution using the core.delay\_until\_time function, and then allows the parent automation to resume when the specified time arrives—providing MSPs with precise timing control in their automated processes.

This workflow contains 9 tasks.

### Inputs

* **psa** - string
  * Specify the PSA if an override needed, otherwise we will default to the ORG Var within the automation.
* **workflow\_name** - string (Required)
  * Specifies the workflow name that the approval process kicks off for
* **existing\_ticket** - string (Required)
  * Specify the existing ticket id in order to update an existing ticket. If none specified, we will create a new ticket.
* **automation\_run\_date** - string (Required)
  * Enter the date to start the automation. Note that if the date is null, it'll be considered as "now"
* **automation\_run\_timezone** - string
  * Specify the timezone to convert the run date. If not specified, will assume UTC.

### Outputs

* **automation\_log**: Standardized Rewst automation log

### Key tasks

* **delay\_automation**: Waiting/delay
* **validate\_within\_30\_days**: Validation/verification
* **set\_date\_time\_var**: Core integration: noop
* **update\_psa\_ticket\_automation\_delayed**: Data modification
* **update\_psa\_ticket\_unable\_to\_delay**: Data modification

### Jinja examples

#### Example 1

```jinja
{{ CTX.delay_time|format_datetime('%Y-%m-%dT%H:%M:%S.%f%z') }}
```

Used in input parameter 'expires\_at'

