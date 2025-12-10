# Automation Toolkit Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Automation Toolkit Crate do? <a href="#what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do" id="what-does-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate-do"></a>

Our Automation Toolkit Crate enhances system efficiency by offering prebuilt function-based subworkflows designed for commonly used tasks. With a focus on reducing time to value, these workflows empower users to quickly configure and execute complex automations without starting from scratch.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

{% hint style="info" %}
This Crate is a little different from most of our other Crates. It contains a collection of subworkflows you can use in building your own workflows rather than a fully-executable workflow that achieves a goal right after unpacking.
{% endhint %}

This Crate leverages powerful native integrations within Rewst to ensure seamless connectivity with various platforms including Microsoft Graph, Microsoft Exchange Online, PSA systems, and RMM providers.

* Configure necessary integrations and set organizational variables for your PSA software, Microsoft Graph or Cloud Service Provider, and RMM provider.
* Link subworkflows from this Crate to your existing automations.
* Combine modular subworkflows to create streamlined, efficient processes.
* Enhance operational efficiency by automating repetitive tasks, improving accuracy, and reducing manual intervention.

## Unpack the Automation Toolkit Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for `Automation Toolkit`.​\
   &#x20; \
   &#x20;![](<../../../.gitbook/assets/image (317).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Click **Unpack**.
7. After you unpack the Crate, all the subworkflows it contains will now appear in the left side **Action** menu of your Workflow Builder for use in any workflow in the organization where the Crate was unpacked. Search for the name of your desired subworkflow, or scroll through the available list under the **Workflows** section of the **Action** menu.

## Subworkflow breakdowns

When you unpack the Crate and click into its workflow, you'll see the below screen with all the unpacked subworkflows on the Workflow Builder Canvas. Click ![](<../../../.gitbook/assets/Screenshot 2025-12-09 at 11.34.31 AM.png>) on any of the subworkflows to open that individual subworkflow in a new window and Workflow Builder. The **Useful Transforms** column contains [transform actions](../../automations/actions-in-rewst/transform-actions/) that are already available in your Workflow Builder's action list. They're listed here as a reminder for their usefulness with this Crate's subworkflows. See our documentation on transform actions for explanations and examples using these actions.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-12-09 at 11.32.51 AM.png" alt=""><figcaption><p>The Workflow Builder canvas for the unpacked Crate</p></figcaption></figure>

{% hint style="info" %}
Click any subworkflow name below to expand and view the subworkflow's full process breakdown.
{% endhint %}

<details>

<summary>[REWST - PROCESS] PSA: Create Ticket</summary>

1. **BEGIN** task initiates the workflow execution and immediately transitions to the next step.
2. **set\_variables** task performs initial variable setup and determines the PSA provider by checking if a PSA value was provided in the context, otherwise it uses the organization's default PSA from **ORG.VARIABLES.default\_psa**.
3. **determine\_provider** task acts as a routing decision point that examines the PSA provider and sets the appropriate company ID based on the provider type, then routes the workflow to the corresponding PSA-specific ticket creation task based on these conditions:
   * If PSA is **cw\_manage**, it routes to **cwpsa\_create\_ticket** task
   * If PSA is **datto\_psa**, it routes to **datto\_psa\_create\_ticket** task
   * If PSA is **halo\_psa**, it routes to **halo\_psa\_create\_ticket** task
   * If PSA is **kaseya\_bms**, it routes to **kaseya\_bms\_create\_ticket** task
   * If PSA is **servicenow**, it routes to **service\_now\_create\_ticket** task
   * If PSA is **freshdesk**, it routes to **freshdesk\_create\_ticket** task
   * If PSA is **superops**, it routes to **superops\_create\_ticket** task
   * If PSA is **mail\_only**, it skips ticket creation and goes directly to **END** task
4. The appropriate PSA-specific ticket creation task executes based on the routing decision:
   * **cwpsa\_create\_ticket** task creates tickets in ConnectWise PSA
   * **datto\_psa\_create\_ticket** task creates tickets in Datto PSA
   * **halo\_psa\_create\_ticket** task creates tickets in Halo PSA
   * **kaseya\_bms\_create\_ticket** task creates tickets in Kaseya BMS
   * **service\_now\_create\_ticket** task creates tickets in ServiceNow
   * **freshdesk\_create\_ticket** task creates tickets in Freshdesk
   * **superops\_create\_ticket** task creates tickets in SuperOps
5. Each PSA-specific task has two possible outcomes:
   * On success, it transitions to **format\_output** task
   * On failure, it transitions to **action\_failure** task
6. **format\_output** task processes successful ticket creation results and publishes the ticket ID and ticket data to the workflow context, then transitions to **END** task.
7. **action\_failure** task handles any failures from the PSA-specific tasks by setting the success flag to false, then transitions to **END** task.
8. **END** task compiles the final automation log with status codes, success indicators, data, errors, warnings, and all task entries, completing the workflow execution.

</details>

<details>

<summary>[REWST - PROCESS] PSA: Update Ticket</summary>



1. **choose\_psa** task acts as the initial routing decision point that examines the PSA provider and routes the workflow to the appropriate PSA-specific update task based on these conditions:&#x20;
   * If PSA is **mail\_only**, the workflow ends without processing&#x20;
   * If PSA is **cw\_manage**, it routes to **check\_time\_contact** task for ConnectWise PSA&#x20;
   * If PSA is **datto\_psa**, it routes to **update\_datto\_ticket** task for Datto PSA&#x20;
   * If PSA is **halo\_psa**, it routes to **update\_halo\_ticket** task for Halo PSA&#x20;
   * If PSA is **kaseya\_bms**, it routes to **update\_kaseya\_ticket** task for Kaseya BMS&#x20;
   * If PSA is **freshdesk**, it routes to **update\_freshdesk\_ticket** task for Freshdesk&#x20;
   * If PSA is **servicenow**, it routes to **update\_servicenow\_ticket** task for ServiceNow
2. **check\_time\_contact** task determines if a technician ID is available for ConnectWise PSA operations:&#x20;
   * If **cwm\_tech\_id** is defined, it proceeds to **noop** task&#x20;
   * If **cwm\_tech\_id** is not defined, it routes to **get\_service\_ticket** task
3. **get\_service\_ticket** task retrieves the current ticket information and sets the technician ID:&#x20;
   * If **psa\_default\_tech\_id** organization variable is defined, it uses that value&#x20;
   * If the ticket owner ID is available, it uses the ticket owner's ID&#x20;
   * Then proceeds to **noop** task
4. **noop** task serves as a pass-through and transitions to **calculate\_ticket\_time** task.
5. **calculate\_ticket\_time** task determines the time to be logged on the ticket:&#x20;
   * If organization variables indicate no ticket time should be logged, it sets **ticket\_hours** to 0&#x20;
   * Otherwise, it calculates **ticket\_hours** from **work\_minutes** divided by 60&#x20;
   * Then proceeds to **check\_status\_update** task
6. **check\_status\_update** task determines the next action based on ticket status requirements:&#x20;
   * If **set\_ticket\_status** is defined, it routes to **update\_service\_ticket** task&#x20;
   * Otherwise, it proceeds to **check\_ticket\_hours** task
7. **update\_service\_ticket** task updates the ticket status and transitions to **check\_ticket\_hours** task on both success and failure.
8. **check\_ticket\_hours** task evaluates the time entry requirements:&#x20;
   * If **ticket\_hours** equals 0, it routes to **note\_type** task&#x20;
   * Otherwise, it proceeds to **check\_time\_entry\_org\_var** task
9. **check\_time\_entry\_org\_var** task checks organization-specific time entry settings:&#x20;
   * If **time\_entry\_ticket\_status** organization variable is defined, it routes to **update\_service\_ticket** task&#x20;
   * Otherwise, it proceeds to **add\_time\_entry** task
10. **add\_time\_entry** task creates a time entry on the ticket and transitions to **completing\_workflow** task on both success and failure.
11. **completing\_workflow** task determines if workflow completion actions are needed:&#x20;
    * If **set\_ticket\_status** or **complete\_workflow** is defined, it routes to **core\_delay\_workflow\_for\_period** task&#x20;
    * Otherwise, it proceeds to **FINISH\_TICKET\_UPDATE** task
12. **core\_delay\_workflow\_for\_period** task introduces a delay before final updates and transitions to **update\_ticket\_qc** task.
13. **update\_ticket\_qc** task performs final ticket quality control updates and transitions to **FINISH\_TICKET\_UPDATE** task on both success and failure.
14. **note\_type** task determines what type of note to add based on available context:&#x20;
    * If **internal\_note** is provided, it routes to **add\_internal\_note** task&#x20;
    * If **external\_note** is provided, it routes to **check\_if\_should\_be\_internal** task for external notes&#x20;
    * If **resolution\_note** is provided, it routes to **check\_if\_should\_be\_internal** task for resolution notes&#x20;
    * If status updates are required, it routes to **core\_delay\_workflow\_for\_period** task
15. The PSA-specific update tasks handle ticket updates for their respective platforms: a. **update\_datto\_ticket** task updates tickets in Datto PSA b. **update\_halo\_ticket** task updates tickets in Halo PSA c. **update\_kaseya\_ticket** task updates tickets in Kaseya BMS d. **update\_freshdesk\_ticket** task updates tickets in Freshdesk e. **update\_servicenow\_ticket** task updates tickets in ServiceNow
16. **FINISH\_TICKET\_UPDATE** task serves as the final completion point for the workflow.

</details>

<details>

<summary>Rewst: Send Email with Attachment</summary>



1. The workflow begins by accepting input parameters including the recipient email addresses array, subject line, sender GUID, attachment details including name, type, and encoded contents, message contents, and failover configuration options.
2. The **check\_sendas\_field** task validates the provided sender GUID to ensure it contains a valid user identifier for email sending purposes.
3. The **microsoft\_graph\_get\_user** task retrieves user information from Microsoft Graph API using the provided sender GUID to verify the user exists and has proper permissions for sending emails.
4. If the user lookup is successful, the workflow proceeds to the **Send\_Email** task which attempts to send the email with attachment through Microsoft Graph API using the impersonated user account.
5. If the Microsoft Graph send method fails or if the **use\_failover** option is enabled and set to true, the workflow transitions to the **core\_sendmail** task as a backup method for sending the email.
6. The **user\_not\_found** task serves as a no-operation fallback that handles cases where the specified sender user cannot be located in the Microsoft 365 tenant.
7. Throughout the process, the workflow handles attachment processing by accepting base64 encoded file contents along with the attachment name and type specifications.
8. The workflow includes built-in error handling for failed deliveries, missing user accounts, and authentication issues that may occur during the email sending process.
9. Upon completion, the workflow generates standardized automation logs documenting the execution results and any errors encountered during the process.
10. The workflow outputs a dictionary object containing a success key with a boolean value indicating whether the email was successfully sent or not.
11. If attachments are provided, they are properly formatted and included with the email regardless of which sending method is ultimately used.
12. The workflow concludes by returning the final status and any relevant error messages or success confirmations to the calling automation or user.
13. All communication tasks are properly categorized and logged for audit purposes and troubleshooting future email delivery issues.

</details>

<details>

<summary>Upload CSV To Ticket</summary>



1. The workflow begins with the **START** task which uses the **noop** action to accept input parameters including the PSA system type, CSV file content, title, ticket ID, and attachment name, then determines which PSA system to use by checking the provided PSA parameter or defaulting to the organization's default PSA variable.
2. The **select\_psa** task uses the **noop** action to evaluate the PSA system type and creates conditional transitions to route the workflow to the appropriate PSA-specific upload task based on whether the system is ConnectWise PSA, Datto PSA, Halo PSA, or other supported systems.
3. If the PSA is ConnectWise PSA, the workflow transitions to the **cw\_psa\_upload\_csv\_to\_ticket** task which executes the **\[REWST - TASK] PSA-CWM: Upload Document to Ticket** action to upload the CSV file as an attachment to the specified ConnectWise Manage ticket.
4. If the PSA is Datto PSA, the workflow transitions to the **datto\_upload\_csv\_to\_ticket** task which uses the **Datto PSA API Request** action to make an authenticated API call to upload the CSV file to the specified Datto Autotask ticket.
5. If the PSA is Halo PSA, the workflow transitions to the **halo\_psa\_add\_or\_update\_attachments** task which executes the **Add or Update Attachments** action to attach the CSV file to the specified HaloPSA ticket in Base64 format.
6. For other PSA systems like Kaseya BMS, ServiceNow, or Freshdesk, the workflow transitions to the **core\_create\_webhook** task which uses the **Create a one-off webhook, for intra-workflow signaling** action to handle the upload process.
7. After the PSA-specific upload task completes successfully, the workflow transitions to the **update\_ticket\_internal\_note** task which executes the **\[REWST - TASK] Update Ticket Internal Note** action to add an internal note to the ticket documenting the CSV file upload.
8. If the ticket note update succeeds, the workflow transitions to the **SUCCESS** task which uses the **noop** action to publish a success value of true and prepares the workflow for completion.
9. If any task fails during the process, the workflow transitions to the **FAILED** task which uses the **noop** action to publish a success value of false and logs the failure for troubleshooting purposes.
10. Both the **SUCCESS** and **FAILED** tasks transition to the **END** task which uses the **noop** action to compile the automation log by collecting all task results, status codes, and error messages from throughout the workflow execution.
11. The **END** task generates a comprehensive automation log that includes the overall status code, success indicator, collected data, any errors or warnings encountered, and detailed entries from each executed task.
12. The workflow concludes by outputting the standardized automation log containing all execution details, making it easy for MSPs to track the success or failure of CSV file uploads across different PSA platforms.
13. Throughout the entire process, the workflow maintains consistent error handling and logging practices regardless of which PSA system is being used for the CSV upload operation.

</details>

<details>

<summary>[REWST - TASK] Send Message</summary>



1. The workflow begins with the **BEGIN** task which uses the **noop** action to accept input parameters including the chat type, message content, and platform-specific configuration details for sending messages across different communication channels.
2. The **change\_messaging\_platform** task uses the **noop** action to evaluate the chat\_type parameter and creates conditional transitions to route the workflow to the appropriate messaging platform based on whether the type is Slack, Discord, SMS, or email.
3. If the chat\_type is "slack", the workflow transitions to the **slack\_chat\_post\_message** task which uses the **Sends a message to a channel** action to post the message to the specified Slack channel using the Slack integration.
4. If the chat\_type is "discord", the workflow transitions to the **discord\_create\_channel\_message** task which uses the **Create a message in a channel** action to send the message to the specified Discord channel using the Discord integration.
5. If the chat\_type is "sms", the workflow transitions to the **core\_send\_sms** task which uses the **Send a text message** action to deliver the message as an SMS to the specified phone number using the core SMS functionality.
6. If the chat\_type is "email", the workflow transitions to the **core\_sendmail** task which uses the **This sends an email** action to deliver the message as an email to the specified recipient using the core email functionality.
7. If any of the messaging tasks complete successfully, the workflow transitions directly to the **END** task to finalize the process and generate the automation log.
8. If any of the messaging tasks fail, the workflow transitions to the **action\_failure** task which uses the **noop** action to handle the failure and log the appropriate error message for the specific messaging platform that failed.
9. The **action\_failure** task publishes a log entry with a status code of 2000 indicating a failure and includes details about which specific messaging task failed to complete.
10. After handling any failures, the **action\_failure** task transitions to the **END** task to ensure the workflow completes properly regardless of success or failure.
11. The **END** task uses the **noop** action to compile the automation log by collecting all task results, status codes, and error messages from throughout the workflow execution.
12. The **END** task generates a comprehensive automation log that includes the overall status code, success indicator, collected data, any errors or warnings encountered, and detailed entries from each executed task.
13. The workflow concludes by outputting the standardized automation log containing all execution details, making it easy to track the success or failure of message delivery across different communication platforms.

</details>

<details>

<summary>User Onboarding: Create User</summary>



1. The workflow begins at the **START** task which initializes valid identity provider options and sets the success flag to true.
2. The **evaluate\_idp** task determines the appropriate identity provider configuration based on organization variables and input parameters, evaluating options like Azure AD, on-premises, hybrid configurations, JumpCloud, or Secure Cloud.
3. The **valid\_idp\_check** task validates that the determined identity provider is supported and configured correctly for the organization.
4. The **select\_identity\_provider** task routes the workflow to the appropriate user creation path based on the identity provider configuration determined in the previous steps.
5. Depending on the identity provider, one of several user creation paths executes:
   * For Azure AD: The **create\_azure\_ad\_user** action creates the user in Microsoft 365
   * For on-premises: The **create\_on\_prem\_user** action creates the user in Active Directory
   * For JumpCloud: The **jump\_cloud\_create\_user** action creates the user in JumpCloud
   * For Secure Cloud: The **create\_secure\_cloud\_user** action creates the user in the secure cloud environment
   * For hybrid configurations: Multiple user creation actions may execute sequentially
6. After user creation, the **check\_user\_created** task verifies that the user was successfully created and handles any creation errors.
7. If the user creation was successful, the **check\_exist** task determines if the user already existed and handles duplicate user scenarios appropriately.
8. The **add\_to\_on\_prem\_groups** action adds the newly created user to the appropriate Active Directory security groups based on their role and permissions.
9. For JumpCloud environments, the **add\_to\_jumpcloud\_groups** action assigns the user to the correct JumpCloud user groups.
10. The **jumpcloud\_complete** task determines if additional synchronization steps are needed based on organization configuration.
11. If Active Directory synchronization is required, the **run\_ad\_sync** action triggers synchronization between on-premises Active Directory and Azure AD.
12. The **delay\_for\_ad\_sync** task pauses the workflow to allow time for the synchronization process to complete.
13. The **Wait for AD to sync to Azure** task provides additional delay with retry logic to ensure the user appears in Azure AD.
14. The **check\_for\_azure\_ad\_user** action verifies that the user has successfully synchronized to Azure AD and retrieves the user's Azure AD object ID.
15. The **get\_ids** task collects both the on-premises user SID and Azure AD user ID for future reference.
16. The **check\_if\_failed** task evaluates the overall success of both on-premises and cloud user creation processes.
17. The **check\_document\_password** task determines if the user's password should be documented in a support ticket based on organization policies.
18. If password documentation is required, the **document\_password\_in\_ticket** action creates or updates a support ticket with the user's temporary password information.
19. The workflow concludes at the **END** task, which compiles an automation log with the status of all executed tasks and publishes the final workflow results.
20. If any critical errors occur during the process, the **failure\_catch** task handles the error condition and routes to the **failed\_to\_create\_user** or **user\_already\_exists** tasks as appropriate before ending the workflow.

</details>

<details>

<summary>[PROC] User: Change Password</summary>



1. The workflow begins at the **START** task which initializes valid identity provider options for password changes including on-premises, hybrid no sync, Azure AD, and on-premises only configurations.
2. The **validate\_vars** task verifies that required variables are present including the default PSA configuration and the new password value before proceeding with the password change process.
3. The **process\_inputs** task determines the appropriate identity provider configuration based on organization variables, evaluating whether the environment uses Azure AD, on-premises Active Directory, hybrid configurations, or on-premises only setups.
4. The **valid\_idp\_check** task validates that the determined identity provider is supported and properly configured for password change operations within the organization.
5. The **check\_on\_prem** task determines if an on-premises password reset is required based on the identity provider configuration and verifies that the required RMM tool is configured for executing the password change.
6. If on-premises password change is needed, the **change\_on\_prem\_password** action executes the password change operation against the Active Directory domain controller using the configured RMM tool.
7. The **check\_ad\_sync** task evaluates whether Active Directory synchronization to Azure AD is required based on the identity provider configuration to ensure password changes propagate to cloud services.
8. If AD sync is required, the **run\_ad\_sync** action triggers the synchronization process between on-premises Active Directory and Azure AD to replicate the password change to the cloud environment.
9. The **check\_azure** task determines if an Azure AD password reset is needed for hybrid configurations or Azure AD-only environments where the password must be changed directly in the cloud.
10. If Azure password change is required, the **change\_entra\_password**action executes the password change operation directly against the Azure AD tenant using Microsoft Graph API calls.
11. The **workflow\_end** task evaluates the overall success of the password change operations and determines the appropriate next steps based on ticketing configuration and workflow results.
12. The **ticketing** task determines whether to create a new support ticket or update an existing ticket based on the presence of a ticket ID in the workflow inputs.
13. If a ticket ID is provided, the **update\_ticket** action adds notes about the password change operation to the existing support ticket with details about the success or failure of the operation.
14. If no ticket ID is provided, the **create\_ticket** action creates a new support ticket documenting the password change request and its outcome for tracking purposes.
15. If PSA ticketing operations fail, the **psa\_action\_failure** task handles the error condition and prepares to send notification emails as a fallback communication method.
16. The **email\_fallback** task checks if fallback email notification is configured and prepares to send email notifications when ticketing systems are unavailable or fail.
17. If email fallback is configured, the **failure\_backup** action sends an email notification with details about the password change operation and any issues encountered during execution.
18. If no PSA or email is configured, the **no\_psa\_or\_email\_configured** task handles the scenario where no notification methods are available for reporting workflow results.
19. If ticketing is disabled, the **no\_ticketing** task bypasses all ticket creation and update operations and proceeds directly to workflow completion.
20. The workflow concludes at the **END** task which compiles a comprehensive automation log with the status of all executed tasks and publishes the final workflow results.
21. If any critical errors occur during the process, the **failure\_catch** task handles the error condition, sets the success flag to false, and ensures proper error logging before workflow completion.

</details>

<details>

<summary>[REWST - TASK] M365: Invalidate User Sessions</summary>



1. The workflow begins at the **START** task which initializes the session invalidation process for a Microsoft 365 user account.
2. The **check\_inputs** task validates that the required user ID parameter has been provided as input to ensure the workflow can properly identify which user's sessions need to be invalidated.
3. If the user ID input is missing, the workflow routes to the **failure\_catch** task which handles the error condition by setting the success flag to false and logging the missing input error.
4. If the user ID input is provided, the **invalidate\_sessions** action executes a Microsoft Graph API request to revoke all active authentication sessions for the specified user account across all devices and applications.
5. Upon successful session invalidation, the workflow sets the success flag to true and logs a confirmation message indicating that the user's sessions have been successfully invalidated.
6. If the session invalidation operation fails, the workflow routes to the **failure\_catch** task which handles the error condition and logs the failure to invalidate sessions.
7. The workflow concludes at the **END** task which compiles an automation log with the status of all executed tasks and publishes the final workflow results including success status and any error or warning messages.

</details>

<details>

<summary>M365: Add User to Security Group</summary>



1. The workflow begins with the **add\_user\_to\_group** action which executes a Microsoft Graph API request to add the specified user to the designated Microsoft 365 security group.
2. If the user is successfully added to the security group, the workflow completes successfully without any additional processing steps.
3. If the **add\_user\_to\_group** action fails, the workflow proceeds to the **check\_error** task which evaluates the specific error message returned from the Microsoft Graph API to determine the cause of the failure.
4. The **check\_error** task examines whether the error message contains "One or more added object references already exist" which indicates that the user is already a member of the specified security group.
5. If the error indicates that the user is already a member of the group, the workflow routes to the **member\_already\_exists** task which handles this scenario as a non-critical condition since the desired end state has already been achieved.
6. The **member\_already\_exists** task completes the workflow successfully, treating the "already exists" condition as a successful operation since the user has the required group membership.
7. The workflow concludes after either successfully adding the user to the group or confirming that the user already has the required group membership.

</details>

<details>

<summary>365/On-Prem: Disable User Account</summary>

1. The workflow begins at the **START** task which initializes valid identity provider options including on-premises, hybrid no sync, Azure AD, and on-premises only configurations.
2. The **evaluate\_idp** task determines the appropriate identity provider configuration based on organization variables, evaluating whether the environment uses Azure AD, on-premises Active Directory, hybrid configurations, or on-premises only setups.
3. The **valid\_idp\_check** task validates that the determined identity provider is supported and properly configured for user account disabling operations within the organization.
4. The **validate\_inputs** task verifies that at least one required user identifier has been provided, either an Azure AD user ID or an on-premises user ID, to ensure the workflow can properly identify which user account needs to be disabled.
5. The **check\_aad** task determines if an Azure AD user disable operation is required based on the presence of an Azure AD user ID and the identity provider configuration being hybrid no sync or Azure AD only.
6. If Azure AD disable is needed, the **disable\_aad\_user** action executes a Microsoft Graph API request to disable the user account in Azure AD, preventing the user from signing in to cloud services.
7. The **check\_on\_prem** task evaluates whether an on-premises Active Directory disable operation is required based on the presence of an on-premises user ID and the identity provider configuration supporting on-premises accounts.
8. If on-premises disable is needed, the **disable\_on\_prem** action executes the user account disable operation against the Active Directory domain controller using the configured management tools.
9. Upon successful completion of either or both disable operations, the workflow sets the success flag to true and logs confirmation messages indicating which user accounts have been successfully disabled.
10. If any disable operation fails, the workflow routes to the **failure\_catch**task which handles the error condition by setting the success flag to false and logging the specific failure details.
11. The workflow concludes at the **END** task which compiles an automation log with the status of all executed tasks and publishes the final workflow results including success status and any error or warning messages.



</details>

<details>

<summary>[REWST - TASK] Automate: Run Powershell</summary>



1. The workflow begins at the **START** task which initializes the PowerShell script execution process for ConnectWise Automate managed devices.
2. The **check\_script\_was\_provided** task validates that a PowerShell script template has been provided as input to ensure the workflow has the necessary script content to execute.
3. The **check\_cwa\_mapping** task verifies that the organization is properly mapped to a ConnectWise Automate client by checking for the presence of the CWA client ID in the organization variables.
4. The **resolve\_device** task determines the target device for script execution by evaluating whether a device ID, device name, or organization preferred domain controller has been provided as input.
5. If a device ID is provided, the **get\_automate\_devices** action retrieves the specific device information from ConnectWise Automate using the provided device ID.
6. If a device name is provided, the **get\_automate\_devices** action searches for devices matching the specified name and filters the results to find an exact match.
7. If no specific device is provided, the **get\_automate\_devices** action searches for domain controllers within the client and selects the one with the highest ID as the target device.
8. The **Select Highest ID DC** task processes the list of domain controllers and selects the device with the highest computer ID, which is typically the newest operating system version.
9. The **check\_device\_returned** task validates that exactly one matching device was found and extracts the device ID for subsequent operations.
10. The **device\_online\_check** task verifies that the target device is currently online and available for script execution.
11. The **check\_fastalk** task determines if the device already has FastTalk enabled, which allows for faster communication between Automate and the managed device.
12. If FastTalk is not enabled, the **set\_fastalk** action attempts to enable FastTalk on the target device to improve script execution performance.
13. The **start\_webhooks** task prepares the webhook infrastructure needed to receive results from the PowerShell script execution.
14. The **generate\_webhooks** action creates the necessary webhook endpoints for posting script results and retrieving execution status.
15. The **run\_powershell** action executes the provided PowerShell script on the target device through ConnectWise Automate's command execution system.
16. The **await\_script\_results** action waits for the script execution to complete and receives the results through the configured webhook endpoint.
17. Upon successful completion, the workflow publishes the script output and logs the successful execution status.
18. If any step fails during the process, the **failure\_catch** task handles the error condition and logs appropriate error messages with diagnostic information.
19. The workflow concludes at the **END** task which compiles an automation log with the status of all executed tasks and publishes the final workflow results including the PowerShell script output.

</details>

<details>

<summary>Resolve Graph SKU to Offername</summary>

1. The workflow begins at the **START** task which initializes the process for resolving a Microsoft Graph SKU ID to its corresponding offer name.
2. The **get\_tenant\_subscriptions** action retrieves all available subscriptions from the Microsoft 365 tenant using Microsoft Graph API to obtain license information.
3. Upon successful retrieval of tenant subscriptions, the workflow filters the results to find subscriptions that match the provided SKU ID and stores the filtered licenses for further processing.
4. The **check\_if\_found** task evaluates whether any matching licenses were found in the filtered results from the tenant subscription query.
5. If a matching license is found, the workflow selects the first matching license from the filtered results and logs the successful match with the license data.
6. The **json\_parse\_licence\_lookup** task processes a template containing Microsoft license information and parses it as JSON to create a comprehensive lookup table of all Microsoft licenses.
7. The workflow filters the Microsoft license lookup table to find the entry that matches the provided SKU ID and extracts the corresponding product display name as the offer name.
8. If no matching license is found during the subscription query, the workflow routes to the **no\_match\_found** task which logs the failure to match the license.
9. If the Microsoft Graph API call fails during the subscription retrieval, the workflow routes to the **graph\_failure** task which logs the API failure with appropriate error details.
10. The workflow concludes at the **END** task which compiles an automation log with the status of all executed tasks and publishes the final results including the resolved offer name, success status, and any error or warning messages.

</details>

<details>

<summary>[TASK] M365: Remove Licenses</summary>

1. The workflow begins with the **START** task which uses the **noop** action to initialize the workflow execution.
2. The workflow then executes the **validate\_inputs** task which uses the **noop** action to verify that the required Azure Active Directory user ID has been provided as input.
3. Next, the **get\_assigned\_licenses** task uses the **Get User** action to retrieve the user's current license assignments and profile information from Microsoft Graph API.
4. The workflow then runs the **get\_friendly\_names** task which calls the **M365: Get User Licenses With Friendly Names** action to convert the technical license SKU IDs into human-readable license names.
5. The **check\_license\_count** task uses the **noop** action to determine if the user has any licenses assigned that can be removed, creating a list of license SKU IDs to process.
6. If licenses are found, the workflow proceeds to the **Get-MailboxStatistics** task which uses the **InvokeCommand** action to retrieve the user's mailbox size information from Exchange Online.
7. The **calculate\_quota\_percent** task uses the **noop** action to parse the mailbox statistics and extract the total mailbox size in bytes for comparison purposes.
8. The **Branch\_MailBox\_Over\_50GB** task uses the **noop** action to check if the user's mailbox exceeds 50 gigabytes, which would prevent license removal to avoid data loss.
9. If the mailbox is under 50 gigabytes, the **remove\_licenses** task uses the **Assign License to User** action to remove all assigned licenses from the user account.
10. If any step fails or the mailbox is too large, the **failure\_catch** task uses the **noop** action to handle the error condition and set the success flag to false.
11. Finally, the **END** task uses the **noop** action to compile a comprehensive automation log that includes the status codes, success indicators, removed licenses list, and detailed logging information from each step of the process.

</details>

<details>

<summary>M365: Get User Licenses With Friendly Names</summary>

1. The workflow begins with the **List\_Users** task which uses the **Graph API Request** action to retrieve a list of Microsoft 365 users from the Microsoft Graph API endpoint.
2. The **List\_Users** task filters the user data to include only users who have sign-in activity, have assigned licenses, have enabled accounts, and do not have "leaver" in their display name.
3. The workflow then executes the **get\_user\_licenses** task which uses the **Graph API Request** action to retrieve the specific license information for each user.
4. The **get\_user\_licenses** task processes the license data and extracts the SKU part numbers from each user's assigned licenses into a list format.
5. Next, the **get\_M365\_lookup\_table** task uses the **noop** action to retrieve a predefined template containing the Microsoft 365 license lookup table that maps license SKU IDs to friendly display names.
6. The **map\_license** task uses the **noop** action to cross-reference the user's license SKU IDs with the lookup table to find the corresponding friendly product display names.
7. Finally, the **unique\_licenses** task uses the **noop** action to create a deduplicated list of unique licenses with their friendly names and compile all license information into a comprehensive output.
8. The workflow publishes two key outputs: a "licenses" list containing the unique friendly license names and an "all\_licence\_info" object containing detailed license information for all processed user

</details>

<details>

<summary>[Rewst - TASK] EXO Set Permissions</summary>

1. The workflow begins with the **START** task which uses the **noop** action to initialize the workflow execution.
2. The workflow then executes the **check\_automap\_shared\_mailbox** task which uses the **noop** action to determine whether the shared mailbox should be automatically mapped to the recipient's Outlook profile or not.
3. If automap is disabled, the workflow proceeds to the **full\_access\_no\_automap** task which uses the **InvokeCommand** action to grant full access permissions to the specified mailbox without enabling automatic mapping in Outlook.
4. If automap is enabled, the workflow executes the **full\_access** task which uses the **InvokeCommand** action to grant full access permissions to the specified mailbox with automatic mapping enabled in Outlook.
5. After granting full access permissions, the workflow continues to the **check\_add\_send\_as** task which uses the **noop** action to evaluate whether Send As permissions should also be granted to the recipient.
6. If Send As permissions are required, the workflow executes the **add\_sendas\_access** task which uses the **InvokeCommand** action to grant Send As permissions on the specified mailbox to the recipient.
7. If Send As permissions are not required, the workflow skips the Send As step and proceeds directly to the **update\_output** task which uses the **noop** action to set the success flag to true.
8. If any of the permission-setting tasks fail, the workflow redirects to the **failed** task which uses the **noop** action to set the success flag to false and log the failure details.
9. Finally, the workflow concludes with the **End** task which uses the **noop**action to compile a comprehensive automation log that includes status codes, success indicators, error messages, and detailed logging information from each step of the permission-setting process.

</details>

<details>

<summary>[REWST - TASK] Hide From Gal</summary>

1. The workflow begins with the **START** task which uses the **noop** action to initialize the workflow execution.
2. The workflow then executes the **process\_inputs** task which uses the **noop** action to determine the identity provider configuration by evaluating organization variables and input parameters to identify whether the environment is Azure AD, on-premises, hybrid, or on-premises only.
3. Next, the **check\_on\_prem** task uses the **noop** action to evaluate if on-premises Active Directory operations are needed based on the identity provider configuration and whether a default RMM is configured.
4. If on-premises operations are required, the workflow proceeds to the **hide\_from\_gal\_on\_prem** task which uses the **Run Powershell via RMM**action to execute PowerShell commands through the RMM to hide the user from the Global Address List in on-premises Active Directory.
5. After completing on-premises operations, the workflow continues to the **check\_ad\_sync** task which uses the **noop** action to determine if Active Directory synchronization is needed based on the identity provider configuration.
6. If AD synchronization is required, the workflow executes the **run\_ad\_sync** task which uses the **Run Powershell via RMM** action to trigger Active Directory Connect synchronization to replicate changes to Azure AD.
7. Following synchronization operations, the workflow proceeds to the **check\_azure** task which uses the **noop** action to evaluate if Azure AD operations are needed based on the identity provider configuration.
8. If Azure AD operations are required, the workflow executes the **hide\_from\_gal\_aad** task which uses the **InvokeCommand** action to hide the user from the Global Address List in Azure Active Directory using PowerShell commands.
9. If any step fails or encounters an error, the workflow redirects to the **failed** task which uses the **noop** action to set the success flag to false and log the failure details.
10. Finally, the workflow concludes with the **END** task which uses the **noop** action to compile a comprehensive automation log that includes status codes, success indicators, error messages, and detailed logging information from each step of the hide from GAL process.

</details>

<details>

<summary>[REWST - TASK] Forward Mail</summary>

1. The workflow begins with the **START** task which uses the **noop** action to initialize the workflow execution.
2. The workflow then executes the **check\_store\_in\_mailbox** task which uses the **noop** action to evaluate whether mail forwarding should be configured to store copies of forwarded messages in the original mailbox or forward without storing copies.
3. If mail forwarding with storage is required, the workflow proceeds to the **forward\_mail\_and\_store** task which uses the **InvokeCommand**action to configure Exchange Online mail forwarding that forwards messages to the specified recipient while keeping copies in the original mailbox.
4. If mail forwarding without storage is required, the workflow executes the **forward\_mail\_no\_store** task which uses the **InvokeCommand**action to configure Exchange Online mail forwarding that forwards messages to the specified recipient without keeping copies in the original mailbox.
5. After successfully configuring mail forwarding, the workflow continues to the **set\_output\_sucess** task which uses the **noop** action to set the success flag to true indicating that the mail forwarding configuration was completed successfully.
6. If any of the mail forwarding configuration tasks fail, the workflow redirects to the **failed** task which uses the **noop** action to set the success flag to false and log the failure details.
7. Finally, the workflow concludes with the **END** task which uses the **noop** action to compile a comprehensive automation log that includes status codes, success indicators, error messages, and detailed logging information from each step of the mail forwarding configuration process.

</details>

<details>

<summary>[CRATE] Rewst: Automation Toolkit</summary>

1. The workflow begins with multiple category sections that serve as organizational containers for different types of automation tasks, including **Account\_Manipulation**, **Customer\_Communication**, **Helper\_Utilities**, **M365\_Exchange**, **M365\_Licensing**, **Run\_PS**, and **Useful\_Transforms** tasks which all use the **noop** action to provide structural organization.
2. The **disable\_account** task uses the **365/On-Prem: Disable User Account** action to disable user accounts across both Azure AD and on-premises Active Directory environments with comprehensive logging of the operation results.
3. The **change\_password** task uses the **Run Powershell via RMM** action to execute password change operations through remote management tools with detailed success and failure logging.
4. The **create\_user** task uses the **M365: Create User** action to create new user accounts and publishes key identifiers including Azure AD user ID, user object details, and on-premises user SID for subsequent workflow operations.
5. The **update\_psa\_ticket** task uses the **Update PSA Ticket** action to modify Professional Services Automation tickets with automation results and status updates.
6. Multiple Microsoft 365 and Exchange-related tasks execute including **workflows\_rewst\_task\_m\_365\_add\_shared\_mailbox**, **workflows\_rewst\_task\_m\_365\_get\_user\_licenses\_with\_friendly\_names**, **workflows\_rewst\_task\_m\_365\_remove\_licenses**, **workflows\_rewst\_task\_forward\_mail**, and **workflows\_rewst\_task\_exo\_set\_permissions** which use their respective specialized actions for M365 operations.
7. The **workflows\_rewst\_task\_hide\_from\_gal** task uses the **Hide From Gal** action to manage Global Address List visibility for users across different identity provider configurations.
8. Communication tasks including **workflows\_rewst\_task\_send\_message**, **workflows\_function\_send\_email\_with\_attachment**, and **workflows\_upload\_csv\_to\_ticket** use their respective actions to handle various forms of customer and system communication.
9. Utility tasks such as **workflows\_rewst\_task\_validate\_required\_fields**, **workflows\_rewst\_task\_sanitize\_input**, **workflows\_rewst\_task\_convert\_guid\_to\_name**, and **workflows\_rewst\_task\_resolve\_graph\_sku\_to\_offername** use specialized actions for data validation, transformation, and lookup operations.
10. Transform operations including **transforms\_add\_or\_subtract\_from\_date\_time**, **transforms\_beta\_diff\_lists**, **transforms\_filter\_list**, **transforms\_get\_days\_between\_dates**, and **transforms\_split\_text** use their respective transformation actions to manipulate and process data.
11. Database and query operations are handled by **workflows\_rewst\_task\_byod\_validate\_database\_config** and **workflows\_rewst\_task\_byod\_run\_query** tasks which use specialized database actions for configuration validation and query execution.
12. PowerShell execution capabilities are provided through **workflows\_rewst\_task\_automate\_run\_powershell** which uses the **Automate Run Powershell** action for remote script execution.
13. PSA integration is managed through **workflows\_rewst\_process\_psa\_create\_ticket** which uses the **Process PSA Create Ticket** action for ticket creation workflows.

</details>

<details>

<summary>[REWST - TASK] Modify Mailbox Access</summary>

1. The workflow begins with the **START** task using the **noop** action, which serves as the entry point and validates the input parameters for the mailbox access modification operation.
2. The **validate\_inputs** task executes the **validation** action to verify that all required parameters are present, including the target mailbox identity and the specific permission type to be modified.
3. The **get\_mailbox\_info** task runs the **Microsoft Exchange Online InvokeCommand** action with the Get-Mailbox cmdlet to retrieve current mailbox information and validate that the target mailbox exists.
4. The **check\_permission\_type** task uses the **conditional logic** action to determine whether the operation involves adding or removing Full Access permissions, Send As permissions, or both types of access.
5. The **process\_full\_access** task executes the **Microsoft Exchange Online InvokeCommand** action with the Add-MailboxPermission or Remove-MailboxPermission cmdlet to modify Full Access permissions for the specified users.
6. The **process\_send\_as** task runs the **Microsoft Exchange Online InvokeCommand** action with the Add-RecipientPermission or Remove-RecipientPermission cmdlet to modify Send As permissions for the designated recipients.
7. The **handle\_automapping** task uses the **Microsoft Exchange Online InvokeCommand** action to configure automapping settings based on the shared\_mailbox\_no\_automap parameter when Full Access permissions are granted.
8. The **log\_changes** task executes the **data transformation** action to compile a detailed record of all permission modifications, including user identities and permission types that were added or removed.
9. The **update\_automation\_log** task uses the **set variable** action to publish the standardized automation log containing the operation results and success status for consumption by parent workflows.
10. The workflow concludes with the **END** task using the **noop** action, returning the success status and automation log to indicate completion of the mailbox access modification process.

</details>

<details>

<summary>[REWST - TASK] Sanitize Input</summary>

1. The workflow begins with the **START** task, which uses the **Noop** action to initialize the workflow execution.
2. The workflow proceeds to the **sanitize\_input** task, which also uses the **Noop** action but contains complex Jinja templating logic to process and sanitize input data.
3. During the **sanitize\_input** task, the workflow performs a two-pass sanitization process on the input data provided in the `list_to_sanitize` context variable.
4. In the first pass, the workflow processes individual fields by iterating through each item in the list and applying specified operations such as trimming whitespace, applying regex patterns for alphanumeric characters, domains, emails, or usernames, and nullifying fields that contain "No Returned" text.
5. The workflow supports multiple regex operations including `regex_alphanumeric` for allowing only letters, numbers, and periods, `regex_domain` for domain names, `regex_email` for email addresses, and `regex_username` for usernames.
6. In the second pass, the workflow handles concatenated fields that may require combining sanitized values from the first pass, such as creating display names from first and last names or user principal names from usernames and email domains.
7. The **sanitize\_input** task publishes the sanitized output as `sanitized_output` containing all processed fields and creates a log entry indicating successful completion.
8. The workflow concludes with the **END** task, which uses the **Noop**action and generates a comprehensive automation log that aggregates all log entries from the workflow execution.
9. The **END** task creates a final automation log that includes status codes, success indicators, data summaries, error collections, warning collections, and all individual log entries from the workflow run.
10. The workflow completes successfully after processing all input sanitization operations and generating the final automation log for tracking and auditing purposes.

</details>

<details>

<summary>[REWST - TASK] Validate Required Fields</summary>

1. The workflow begins with the **START** task, which uses the **Noop** action to initialize the workflow execution.
2. The workflow proceeds to the **validate\_fields** task, which uses the **Noop** action but contains Jinja templating logic to validate required field data.
3. During the **validate\_fields** task, the workflow iterates through each field in the `list_to_validate` context variable to check if required fields are present and contain valid values.
4. The workflow checks each field to determine if the value is none or an empty string, and if so, adds the field name to a list of missing fields.
5. For fields that have an expected value specified, the workflow validates that the actual value matches the expected value, and if not, adds the field name along with an error message indicating the incorrect value to the missing fields list.
6. If no missing or invalid fields are found, the **validate\_fields** task publishes a successful validation result with `success: true` in the `validated_output`.
7. If missing or invalid fields are detected, the **validate\_fields** task publishes a failed validation result with `success: false` and includes the list of missing or invalid fields in the `validated_output`.
8. The **validate\_fields** task creates a log entry indicating that the validation task ran successfully regardless of the validation outcome.
9. The workflow concludes with the **END** task, which uses the **Noop**action and generates a comprehensive automation log that aggregates all log entries from the workflow execution.
10. The **END** task creates a final automation log that includes status codes, success indicators, data summaries, error collections, warning collections, and all individual log entries from the workflow run, providing complete tracking and auditing information for the validation process.

</details>

<details>

<summary>[REWST - TASK] Convert GUID to Name</summary>

1. The workflow begins with the **START** task, which uses the **Noop** action to initialize the workflow execution.
2. The workflow proceeds to the **what\_to\_convert** task, which uses the **Noop** action and contains conditional logic to determine what type of GUID conversion needs to be performed based on the action specified in the `guid_to_convert.object.action` context variable.
3. The **what\_to\_convert** task evaluates multiple conditions and routes to different conversion tasks based on the action type, including GWS Groups, PSA Contact Location, PSA Child Company, RMM Child Site, User to Copy, User Manager/Supervisor, Forward Mail User, User to Offboard, Delegation Access List, and Transfer Drive To User.
4. If the action is "gws\_groups" and valid ID data exists, the workflow routes to the **convert\_gws\_groups** task, which uses the **Convert GWS Groups** action to resolve Google Workspace group GUIDs to names.
5. If the action is "psa\_contact\_location" and valid ID data exists, the workflow routes to the **convert\_psa\_location** task, which uses the **Convert PSA Location** action to resolve PSA location GUIDs to names.
6. If the action is "psa\_child\_company" and valid ID data exists, the workflow routes to the **convert\_psa\_child\_company** task, which uses the **Convert PSA Child Company** action to resolve PSA company GUIDs to names.
7. If the action is "rmm\_child\_site" and valid ID data exists, the workflow routes to the **convert\_rmm\_child\_site** task, which uses the **Convert RMM Child Site** action to resolve RMM site GUIDs to names.
8. For user-related actions including user\_to\_copy, user\_manager, forward\_mail\_user, user\_to\_offboard, grant\_delegate\_access\_list, and transfer\_drive\_to\_user, the workflow routes to the **convert\_gws\_user**task, which uses the **Convert GWS User** action to resolve user GUIDs to names.
9. Each conversion task publishes detailed log entries with status codes and sub-automation logs, and on success proceeds to the **set\_output\_var** task, while on failure proceeds to the **action\_failure**task.
10. The **set\_output\_var** task uses the **Noop** action and publishes the converted data as `all_converted_items` containing the resolved names from the conversion process.
11. If any conversion task fails, the workflow routes to the **action\_failure**task, which uses the **Noop** action to handle failures before proceeding to the end.
12. The workflow concludes with the **END** task, which uses the **Noop**action and generates a comprehensive automation log that aggregates all log entries, status codes, success indicators, data summaries, error collections, and warning collections from the entire workflow execution.

</details>

<details>

<summary>[REWST - TASK] BYOD: Validate Database Config</summary>

1. The workflow begins with the **START** task, which uses the **Noop** action to initialize the workflow execution.
2. The workflow proceeds to the **sql\_integration\_check** task, which uses the **Noop** action to verify whether the SQL Database integration is installed in the organization.
3. If the SQL Database integration is installed, the **sql\_integration\_check**task publishes a success log message and continues to the next step, otherwise it sets a failure result indicating the integration is not installed and routes to the failure catch task.
4. When the integration is confirmed as installed, the workflow moves to the **list\_db\_configurations** task, which uses the **List Database Configurations** action to retrieve all configured database connections.
5. The **list\_db\_configurations** task processes the results and creates a list of all database configuration names, filters for the expected configuration name, and publishes success or failure log entries based on the outcome.
6. If the database configurations are successfully retrieved, the workflow proceeds to the **check\_for\_config** task, which uses the **Noop** action to validate whether the expected database configuration exists.
7. The **check\_for\_config** task evaluates whether any database configurations match the expected configuration and publishes appropriate results and log entries based on whether the configuration is found.
8. If the expected database configuration is found, the task publishes a success result stating "Expected Database Config Found" and continues to the end task.
9. If the expected database configuration is missing, the task publishes a detailed failure result listing the current database configuration names and indicating that the configuration should be "Rewst Cache - Database".
10. Any failures in the workflow route to the **failure\_catch** task, which uses the **Noop** action to handle error conditions before proceeding to the end.
11. The workflow concludes with the **END** task, which uses the **Noop**action and generates a comprehensive automation log that aggregates all log entries, status codes, success indicators, data summaries, error collections, and warning collections from the entire workflow execution.

</details>

<details>

<summary>[REWST - TASK] BYOD: Run Query</summary>

1. The workflow begins with the **START** task using the **noop** action, which serves as the entry point and validates the input parameters for the database query operation.
2. The **validate\_inputs** task executes the **validation** action to verify that all required parameters are present, including the SQL query string and database connection configuration.
3. The **check\_database\_connection** task runs the **SQL Database connection test** action to ensure the BYOD integration is properly configured and the database is accessible.
4. The **prepare\_query** task uses the **data transformation** action to sanitize and format the SQL query string, ensuring it meets security requirements and proper syntax.
5. The **execute\_sql\_query** task executes the **SQL Database execute query** action to run the provided SQL statement against the configured database using the established connection.
6. The **process\_query\_results** task runs the **data processing** action to format and structure the returned database results into a standardized format for consumption by other workflows.
7. The **validate\_results** task uses the **validation** action to check that the query executed successfully and returned valid data, handling any potential database errors or empty result sets.
8. The **transform\_output** task executes the **data transformation** action to convert the raw database results into the expected output format for integration with Rewst workflows and option generators.
9. The **log\_operation** task runs the **logging** action to record the query execution details, including execution time, row count, and any relevant metadata for auditing purposes.
10. The workflow concludes with the **END** task using the **noop** action, returning the formatted query results and success status to indicate completion of the database query operation.

</details>



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
