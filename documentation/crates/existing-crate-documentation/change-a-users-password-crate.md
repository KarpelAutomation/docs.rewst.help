# Change a User’s Password Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find this Crate in our Crate Marketplace.
{% endhint %}

## What does the Change a User’s Password Crate do?

Our Change a User’s Password Crate uses a form-driven submission to change a user’s password in any environment: on-prem, hybrid, or Microsoft Entra. Select an existing PSA ticket, or a new one will be created to document the change. Select a generated password, or enter one manually.

### How the Crate works

* Users complete the form, opting for a manual password or a pre-generated one.
* The changes are automatically processed.
* If chosen, users will be required to reset their password at the first login.
* The selected ticket within your PSA is automatically updated with a log of the changes made.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which establishes valid identity provider types and initializes the workflow context.
2. The **validate\_vars** task using the **noop** action verifies that required variables including the default PSA and password are present before proceeding.
3. The **process\_inputs** task using the **noop** action determines the identity provider configuration based on organization variables and input parameters, setting the IDP type to **azure\_ad**, **on\_prem**, **hybrid\_no\_sync**, **on\_prem\_only**, or **invalid\_idp**.
4. The **valid\_idp\_check** task using the **noop** action validates that the determined identity provider configuration is supported by the workflow.
5. The **check\_on\_prem** task using the **noop** action evaluates whether on-premises password reset is needed based on the IDP configuration and checks if an RMM tool is available.
6. If on-premises reset is required, the **change\_on\_prem\_password** task executes the **\[REWST - TASK] Run Powershell via RMM** action to change the user's password on the domain controller via PowerShell script.
7. The **check\_ad\_sync** task using the **noop** action determines if Active Directory synchronization is needed for on-premises environments.
8. If AD sync is required, the **run\_ad\_sync** task executes the **\[REWST - TASK] Run Powershell via RMM** action to trigger synchronization between on-premises Active Directory and cloud services.
9. The **check\_azure** task using the **noop** action evaluates whether Azure AD password reset is needed based on the identity provider configuration.
10. If Azure reset is required, the **change\_entra\_password** task executes the **\[REWST - TASK] M365: Change User Password** action to update the user's password in Microsoft 365/Entra ID.
11. The **workflow\_end** task using the **noop** action consolidates all logging information and determines the final workflow status before proceeding to ticketing or completion.
12. The **ticketing** task using the **noop** action determines whether to create a new ticket or update an existing one based on whether a ticket ID was provided.
13. If creating a new ticket, the **create\_ticket** task executes the **\[REWST - PROCESS] PSA: Create Ticket** action to generate a ticket in the configured PSA system with password change details.
14. If updating an existing ticket, the **update\_ticket** task executes the **\[REWST - PROCESS] PSA: Update Ticket** action to add notes about the password change to the specified ticket.
15. If ticketing is skipped, the **no\_ticketing** task using the **noop** action bypasses ticket creation and proceeds directly to completion.
16. For PSA or email configuration issues, the **psa\_action\_failure** task using the **noop** action handles cases where ticket operations fail.
17. The **email\_fallback** task using the **noop** action determines whether to send a fallback email notification when PSA operations are unavailable.
18. If email fallback is configured, the **failure\_backup** task executes the **sendmail** action to notify administrators of the workflow results via email.
19. The **no\_psa\_or\_email\_configured** task using the **noop** action handles scenarios where neither PSA nor email notifications are available.
20. The **failure\_catch** task using the **noop** action captures any workflow failures and sets the success status to false.
21. The workflow concludes with the **END** task using the **noop** action, which compiles the final automation log with all task results, status codes, warnings, and errors for reporting purposes.

## Crate prerequisites

* Your[ PSA must be integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst.&#x20;
* Your [RMM integration](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations) must be integrated with Rewst.
* The `psa_default_board_id` [organization variable](../../configuration/organization-variables.md#what-is-an-organization-variable) must be added
* The `default_psa` organization variable must be added

## Unpack the Change a User’s Password Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Change a User’s Password`.
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/image (139).png>)
4. Ensure that you have the required org variables setup for the Crate. Ready org variables will have a checkmark next to them under the **Required Org Variables** section, as seen in the screenshot below. An [organization variable without a check mark will still need to be set up](../../configuration/organization-variables.md#what-is-an-organization-variable) before proceeding with unpacking the Crate. When confirmed, click **Unpack Crate**.
5. Click **Continue**.
6. Click **Unpack**.

{% hint style="success" %}
Integration overrides will automatically be added during the Crate's unpacking process.&#x20;
{% endhint %}

### Test the Crate

1. Fill out the form as indicated in instructions below. This will kick off the workflow unpacked with the Crate.
2. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
3. Search for `[REWST - PROC] User: Change Password`.&#x20;
4. Click on the workflow to open it in the Workflow Builder.
5. View the workflow results by clicking <img src="../../../.gitbook/assets/Screenshot 2025-03-05 at 2.40.07 PM (1).png" alt="" data-size="line"> from the workflow. If the Crate is functioning correctly, your results log won't contain errors.

### Use the form

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `[REWST - PROC] User: Change Password`.
3. Click **⋮ > Usages > View Direct URLs.**
4. Click on the link for the organization which contains the user you wish to manage. This will launch the form in a new tab.
5. Fill out the form as follows:
   1. **Ticket Number** - Select an existing ticket to write ticket updates to. If no ticket is provided, a new one will be created.
   2. **User** - Select the user you would like to initiate the password change for.
   3. **User Entra Override** - This field is only applicable to hybrid environments that aren't synced, where the user's username is different in Microsoft Entra than in on-premises.&#x20;
   4. **Require Password Change** - Check this box on to require a change of password.
   5. **Password** - Select a generated password or enter one manually.
6. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-11-20 at 3.03.15 PM.png" alt=""><figcaption></figcaption></figure>



## Troubleshoot the Change a User’s Password Crate

If you experience a PSA or RMM error, make sure you have set the org variables **default\_psa** and **default\_rmm**. For any other error, please [reach out to Rewst Support](#user-content-fn-1)[^1].

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

[^1]: 
