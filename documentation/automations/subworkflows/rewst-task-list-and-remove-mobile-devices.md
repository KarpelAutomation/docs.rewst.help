# \[REWST - TASK] List And Remove Mobile Devices

This workflow automates the discovery and removal of mobile devices registered in Microsoft Exchange Online, serving as a critical building block for streamlined offboarding processes, security incident response, and compliance management. MSPs will find this particularly valuable when handling employee terminations, security breaches involving compromised devices, or when implementing regular device inventory cleanup to maintain environment hygiene. Technically, the workflow leverages Exchange Online PowerShell commands to list all connected mobile devices, determines if any devices exist, and then systematically removes them using a dedicated removal sub-workflow, complete with error handling and execution reporting. The modular design allows this component to be integrated into larger automation sequences while ensuring consistent, auditable device management across client environments without the need for manual Exchange admin center operations.

This workflow contains 10 tasks.

### Inputs

* **target\_user** - string
  * The Azure / Entra GUID of the user to remove mailboxes from.

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **success**: Boolean; States if workflow was successful.

### Key tasks

* **No Devices Found**: Core integration: noop
* **Devices Found**: Core integration: noop
* **update\_output**: Data modification
* **check\_for\_errors**: Validation/verification
* **failed**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ true if CTX.remove_mobile_devices_result|length > 0 and "failed" in CTX.remove_mobile_devices_result|map(attribute="result.log_output") else false }}
```

**Explanation**: This expression checks for failures in a mobile device removal operation by examining the operation results and returning a boolean value. It evaluates to `true` if there are any results from the mobile device removal task AND at least one contains the word "failed" in its log output, serving as an error detection mechanism for your automation workflows.

**Data**: It's accessing `CTX.remove_mobile_devices_result`, which likely contains a list of results from mobile device removal operations, specifically examining the `result.log_output` field of each item to check for failure indicators.

**Modification Opportunities**: You could modify this to check for different error messages by replacing "failed" with other error indicators relevant to your environment. You might also adjust it to be more specific by adding additional conditions to filter for particular types of failures.

**Example Variation**:

#### Example 2

```jinja
{{ - data_ns.status - }}
```

**Explanation**: This expression outputs the status value from the data namespace while trimming whitespace, commonly used at the end of a workflow to record the final outcome in automation logs. It provides a clean status output that can be used for reporting or triggering subsequent workflows based on completion status.

**Data**: It's accessing the `status` variable from the `data_ns` namespace, which likely contains the overall status of the completed automation (e.g., "success", "failed", "partial").

**Modification Opportunities**: You could enhance this by formatting the status with additional context or by conditionally outputting different status messages based on workflow-specific criteria. This would allow for more detailed logging tailored to your specific operational needs.

