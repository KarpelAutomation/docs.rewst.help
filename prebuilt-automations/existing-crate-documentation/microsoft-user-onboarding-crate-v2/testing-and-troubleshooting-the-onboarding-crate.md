# Testing and troubleshooting the Onboarding crate

## **Testing the Microsoft: User Onboarding Crate**

To verify that the Microsoft: User Onboarding Crate is functioning correctly, follow the testing steps below.

### **Step 1: Submit a test user through the onboarding form**

1. Navigate to **Automations > Forms**.
2. Search for `[Crate] Microsoft: User Onboarding` and open the form.
3. Enter **test user details**, ensuring all required fields are populated.
4. Choose **license assignment and security groups**.
5. Submit the form.

If the approval workflow is **enabled**, the request must be approved before provisioning proceeds.

### **Step 2: Validate workflow execution**

1. Go to **Automations > Results**.
2. Search for `Microsoft: User Onboarding`.
3. Open the latest execution result and verify that the workflow completed successfully.
4. Review the execution logs for any failed steps or warnings. If any failures occur, refer to the troubleshooting section below.

### **Step 3: Verify user creation and assignments**

| **Verification step**                           | **Expected outcome**                                             |
| ----------------------------------------------- | ---------------------------------------------------------------- |
| **Active Directory (On-Prem AD Only / Hybrid)** | User appears in **Active Directory Users & Computers (ADUC)**.   |
| **Azure AD (Cloud / Hybrid)**                   | User is created in **Microsoft Entra ID (Azure AD)**.            |
| **Security Groups**                             | User is assigned to **the selected security groups**.            |
| **Microsoft 365 Licensing**                     | License is assigned to the user (directly or via a group).       |
| **Shared Mailbox & Permissions**                | User has "Send As" or "Send on Behalf" permissions, if selected. |

If a user does not appear in AD or Azure AD, check the **workflow execution logs**.

### **Step 4: Confirm ticket and documentation updates**

| **Verification step**                 | **Expected outcome**                                                              |
| ------------------------------------- | --------------------------------------------------------------------------------- |
| **PSA Ticket Creation**               | A new ticket is created in **ConnectWise, Autotask, Halo PSA, ServiceNow, etc.**. |
| **Ticket Updates**                    | The ticket logs **user details, group assignments, and licensing information**.   |
| **External Documentation (Optional)** | User credentials are stored in **ITGlue, Hudu, or Passportal**, if enabled.       |

{% hint style="success" %}
If the ticket was not created or updated, verify that [PSA integration is configured correctly](https://docs.rewst.help/documentation/integrations/psa).
{% endhint %}

## **Troubleshooting common issues**

{% hint style="info" %}
We highly recommend that all [Rewst users be certified](https://docs.rewst.help/cluck-university/rewst-certification-how-to-and-troubleshooting-guide) before attempting to build workflows or customize Crates. Completing proper training sets you up to succeed with Rewst and helps prevent poorly executed workflow design. Proper training minimizes errors and ensures workflows function as intended.

If you require additional assistance with an issue not listed below, our [**Rewst Operations Center (ROC) Support team**](https://docs.rewst.help/support/roc-support) is available to help.
{% endhint %}

## Key debugging steps for any issue

1. Check the workflow execution logs
   * Go to **Automations > Results**.
   * Open the failed execution and review error messages.
2. Verify organizational variables
   * Go to **Configuration > Organizational Variables** in Rewst.
   * Ensure that all required variables are correctly set.
3. Manually test external integrations
   * Try creating a user manually in Active Directory / Azure AD.
   * Assign a license directly in Microsoft 365 Admin Center.
   * Create a test ticket in PSA to confirm API access.

{% hint style="success" %}
Expand each of the issues below to see its full documentation and known solution.
{% endhint %}

<details>

<summary>Issue: User not created in Azure AD</summary>



#### **Symptoms:**

* No user is found in Microsoft Entra ID (Azure AD).
* The workflow fails before provisioning the account.

#### Possible causes:

* The identity provider configuration is incorrect.
* The workflow execution failed before user creation.
* The user already exists in Azure AD.

#### Solution:

1. Check the workflow execution logs in Automations > Results for errors.
2. Search manually for the user in Azure AD to confirm if the account exists.
3. Confirm your Microsoft GDAP configuration
   1. Proper GDAP setup is crucial for automation at the MSP level, eliminating the need for separate Microsoft integrations for each customer.
   2. Refer to the [GDAP Documentation](https://www.notion.so/Draft-Microsoft-User-Onboarding-Crate-V2-1a0b56f9907180c6af66fc86a836eb5e?pvs=21) for setup guidelines and best practices.
   3. Ensure that the necessary permissions and access levels are correctly assigned to prevent provisioning failures.
4. Verify Organizational Variables:
   * `primary_identity_provider = Azure AD / Hybrid`
   * `preferred_adconnect_server` is set (for hybrid sync).

</details>

<details>

<summary>Issue: User not created in Active Directory</summary>



#### **Symptoms:**

* No user appears in Active Directory Users & Computers (ADUC).
* The workflow fails before provisioning the account.

#### **Possible causes:**

* The RMM tool has not been configured.
* The identity provider configuration is incorrect.
* The workflow execution failed before user creation.
* The user already exists in Active Directory.

#### **Solution:**

1. Check the [integration guide](https://docs.rewst.help/documentation/integrations/rmm) for the following RMMs and ensure you have completed the process:
   * Datto RMM
   * NinjaOne
   * Immybot
   * Kaseya VSA
   * Kaseya VSA X
   * N-able N-central
   * Agent Smith - Check the Documentation for [Agent Smith](https://docs.rewst.help/documentation/agent-smith)
2. Verify the workflow execution logs in **Automations > Results** for errors.
3. Search manually for the user in ADUC to confirm if the account exists.
4. Verify Organizational Variables:
   * `primary_identity_provider = On-Prem AD / Hybrid`
   * `preferred_adconnect_server` is set (for hybrid sync).

</details>

<details>

<summary>Issue: Microsoft 365 license not assigned</summary>

#### **Symptoms:**

* The user is created in Azure AD but has no assigned license.
* The license purchase request fails in Microsoft 365 Admin Center.

#### Possible causes:

* No available licenses in the tenant.
* The user was not added to the correct license group.
* License auto-purchasing is disabled.

#### **Solution:**

1. Check available licenses in the Microsoft 365 Admin Center.
2. Enable automatic license purchasing in Rewst:
   * Set `auto_purchase_license_if_none_available = 1`.
3. Confirm license assignment method:
   * `m365_license_assignment_method = direct` for direct assignment.
   * `m365_license_assignment_method = group` for group-based assignment.

If using group-based licensing, ensure the user is added to the correct M365 License Group. If using the Manual Process, Check the Manual License Purchase Process

</details>

<details>

<summary>Issue: User not added to security groups</summary>



#### **Symptoms:**

* The user appears in AD/Azure AD but is not assigned to any security groups.
* Permissions are missing due to lack of group membership.

#### Possible causes:

* The group selection was missed during onboarding.
* The group name is incorrect or does not exist in AD/Azure AD.

#### Solution:

1. Check the selected groups in the onboarding form submission.
2. Manually search for the group in Active Directory Users & Computers or Azure AD.
3. Ensure group synchronization is active (for hybrid configurations).

</details>

<details>

<summary>Issue: PSA ticket not created or updated</summary>



#### **Symptoms:**

* No onboarding ticket appears in ConnectWise, Autotask, or other PSA.
* The ticket is created but missing onboarding details.

#### Possible causes:

* PSA integration is not configured correctly.
* PSA API credentials are incorrect or expired.
* The company contact does not exist in PSA.

#### **Solution:**

1. Verify PSA integration settings in Rewst.
2. Check the workflow execution logs for API errors.
3. Manually create a test ticket in PSA to confirm integration functionality.
4. Confirm the `default_psa` is not set to be `mail_only`

</details>

<details>

<summary>Issue: Required fields in Halo preventing ticket creation or updates</summary>



#### Symptoms:

* Ticket creation or updates in Halo PSA fail unexpectedly.
* Errors appear related to missing mandatory fields when attempting to create or update a ticket.
* The default Halo PSA ruleset causes validation failures.

#### Possible causes:

* Mandatory fields are enabled in Halo PSA, preventing Rewst from creating or updating tickets.
* The default Halo PSA ruleset requires additional fields not configured in the workflow.
* The \[REWST - TASK] PSA-Halo PSA: Create Ticket action does not include the required mandatory field values.

#### **S**olution:

1. Remove mandatory fields from your PSA to allow for seamless automation.
2. Unsync your PSA-Halo Create Ticket Crate to manually modify field requirements:
   * Navigate to \[REWST - TASK] PSA-Halo PSA: Create Ticket.
   * In the halo\_create\_ticket action, ensure all mandatory fields have valid values.
3. Understand the impact of unsyncing a Crate:
   * By default, all Crates are synced when unpacked.
   * Unsyncing a Crate allows customization but requires manual maintenance.
   * We recommend using synced Crates until you’ve completed Rewst training in Cluck University.

</details>

<details>

<summary>Issue: Password not stored in documentation system</summary>



#### **Symptoms:**

* The password does not appear in ITGlue, Hudu, or Passportal.
* The PSA ticket is missing the temporary password.

#### **Possible causes:**

* Documentation integration is not enabled.
* API credentials for ITGlue/Hudu/Passportal are incorrect or expired.

#### **Solution:**

1. Enable password storage by setting `store_user_credentials_in_external_doc = 1`.
2. Check the API integration settings in Rewst.
3. Test manual credential storage to confirm integration is working.

</details>

<details>

<summary>Issue: Delayed user creation not working</summary>



#### Symptoms:

* The user is created immediately, despite a future start date.
* The workflow does not pause as expected.

#### Possible causes:

* The Start Date field was missing or not populated.
* The `allow_scheduled_user_creation` setting is disabled.
* The workflow scheduler is not running correctly.

#### Solution:

1. Ensure that the **Start Date** field is enabled in the onboarding form.
2. Set `allow_scheduled_user_creation = 1` in organizational variables.
3. Check scheduled automations in Rewst to verify execution timing.

</details>

