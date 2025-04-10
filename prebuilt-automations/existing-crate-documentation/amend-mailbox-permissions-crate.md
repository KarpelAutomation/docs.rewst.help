# Amend Mailbox Permissions Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Amend Mailbox Permissions Crate in our Crate Marketplace.
{% endhint %}

## What does the Amend Mailbox Permissions Crate do?

Our Amend Mailbox Permissions Crate provides a streamlined, secure method for managing mailbox access in Microsoft 365 environments. This Crate automates the process of adding, removing, or viewing permissions for mail-enabled mailboxes, ensuring precise access control and comprehensive audit tracking.

The Amend Mailbox Permissions Crate automates the following processes.

1. Permission management

* Adding or removing Full Access permissions
* Adding or removing Send As permissions
* Viewing current mailbox access levels

2. Automatic documentation

* Creates a new ticket or allows selection of an existing one.
* Captures the reason for permission changes
* Ensures accountability and compliance for mailbox access modifications

3. Automated logging and tracking

* Generates detailed logs of all permission changes
* Creates or updates tickets in your PSA
* Provides a clear audit trail of access modifications

## Why use the Amend Mailbox Permissions Crate?

This Crate is designed to support MSPs and IT teams in efficiently and securely managing email access from the parent organization. By enabling the child organizations in the form trigger, MSPs can seamlessly grant and control access to the form for their customers. Common use cases include:

### Emergency access management

* Quickly grant temporary access for critical troubleshooting
* Provide short-term mailbox permissions for urgent situations
* Ensure immediate response capabilities while maintaining security

### Routine operational changes

* Grant access to a mailbox after an onboarding or offboarding
* Temporarily grant access for specific projects or collaborations
* Handle delegation of mailbox access during employee absences
* Allow managers to access team mailboxes
* Grant temporary access for external consultants
* Manage shared mailbox permissions for departments

### Compliance and security

* Maintain detailed logs of all permission changes
* Ensure minimal and purposeful mailbox access

## Crate prerequisites

### Integration requirements

* The Microsoft 365 bundle must be setup. View instructions for how to do this [here](https://docs.rewst.help/documentation/integrations/cloud/-cloud-integration-bundle).
* Your PSA must be [integrated with Rewst](https://docs.rewst.help/documentation/integrations/psa).

## Unpack the Amend Mailbox Permissions Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2. Search for the **Amend Mailbox Permissions** Crate.
3. Click on the Crate tile to begin unpacking.\
   ![](<../../.gitbook/assets/Screenshot 2025-02-13 at 10.20.14 AM.png>)
4. This will open that PSA integration’s configuration form in a new tab. Note that this list will have check marks if you have already met the prerequisite integration and org variable setup needs.\
   ![](<../../.gitbook/assets/Screenshot 2025-02-13 at 12.00.12 PM.png>)
5. Click **Unpack Crate**.
6. Choose your PSA from the drop down list.\
   ![](<../../.gitbook/assets/Screenshot 2025-02-19 at 12.11.13 PM.png>)
7. Click **Continue**.
8. Change the **Workflow name**, if desired.
9. Leave form options at their default state.
10. Click **Unpack**.

### Example: Unpack the Amend Mailbox Permissions Crate

<figure><img src="../../.gitbook/assets/Unpack Amend Mailbox Permissions.gif" alt=""><figcaption></figcaption></figure>

## Amend Mailbox Permissions form

### Access the Form

1. Navigate to **Automations** > **Forms**.
2. Search for **\[Rewst] M365: Amend Mailbox Permissions**.
3. Open the form’s options by clicking the ⋮ menu to the right.
4. Click **Usages.**\
   ![](<../../.gitbook/assets/Screenshot 2025-02-12 at 12.14.12 PM (1).png>)
5. Click **View Direct URLs.**
6. Click on the form for the child organization, or use the parent org form for MSPs form users.

<figure><img src="../../.gitbook/assets/image (10) (1).png" alt=""><figcaption></figcaption></figure>

### Fill Out the Form

1. Customer or client

Choose the specific client for whom permissions will be modified. Click the drop down arrow of the **Client** field, or begin typing the name into the field to jump to the client name.

* Ensures changes are applied to the correct organization
* **Example**: `Cluck-U`

2. Ticket

Choose the ticket number related to the access request. Click the drop down arrow of the **Ticket** field, or begin typing the name into the field to jump to the ticket name.

* Links permission changes to a specific support context
* Provides tracking and audit trail

3. User

* Identifies the primary mailbox for permission modifications
* Both of these mailbox types will work with the form.
  * Individual User Accounts: `john.smith@pedroaviary.com`
  * Shared Mailboxes: `hr-manager@pedroaviary.com`

4. Action Type

* Specify the type of permission modification you would like to execute by clicking on one of the following options. Clicking on each will add additional relevant fields and options to the form.
  * **Add Perms**: Grant new access rights via **Add Full Access Users to Selected Mailbox** and **Add Send As Access Users to Selected Mailbox**
  * **Remove Perms**: Revoke existing access via **Remove Existing Full Access Users** and **Remove Existing Send As Users**
  * **View Perms**: Check current access levels via **All Perms** permission data check

{% hint style="warning" %}
When finished filling out the form, remember to click Submit.
{% endhint %}

### Add permissions form example

**Fields**:

* **Client**: Cluck-U
* **Ticket**: Grant John Smith the mailbox access.
* **User**: `john.smith@pedroaviary.com`
* **Action Type**: Add Perms
* **Add Full Access Users**:
  * `hr-assistant@pedroaviary.com`
  * `sys-admin@pedroaviary.com`
* **Add Send As Access Users**:
  * `regional-hr@pedroaviary.com`
  * `compliance-officer@pedroaviary.com`

<figure><img src="../../.gitbook/assets/Add Permissions.gif" alt=""><figcaption></figcaption></figure>

### Remove permissions form example

**Fields**:

* **Client**: Cluck-U
* **Ticket**: Remove John Smiths access
* **User**: `john.smith@pedroaviary.com`
* **Action Type**: Remove Permissions
* **Remove Existing Full Access Users**:
  * `former-hr-assistant@pedroaviary.com`
*   **Remove Existing Send As Users**:

    * `transferred-manager@pedroaviary.com`

    <figure><img src="../../.gitbook/assets/Remove Permissions.gif" alt=""><figcaption></figcaption></figure>

### View permissions form example

**Fields**:

* **Client**: Cluck-U
* **Ticket**: Report mailbox permissions for John Smith
* **User**: `john.smith@pedroaviary.com`
*   **Action Type**: View Permissions

    Example Permission Data for `john.smith@pedroaviary.com`

    > This user has access to the **Shared Mailbox - HR Assistant -** [**hr-assistant@pedroaviary.com**](mailto:hr-assistant@pedroaviary.com) **mailbox** Full Access Users

    **User:** [hr-assistant@pedroaviary.com](mailto:hr-assistant@pedroaviary.com) **Access Rights:** Full Access

    **User:** [sys-admin@pedroaviary.com](mailto:sys-admin@pedroaviary.com) **Access Rights:** Full Access

    Send As Users **User:** [regional-hr@pedroaviary.com](mailto:regional-hr@pedroaviary.com) **Access Rights:** Send As

    **User:** [compliance-officer@pedroaviary.com](mailto:compliance-officer@pedroaviary.com) **Access Rights:** Send As

    >

<figure><img src="../../.gitbook/assets/View Permissions.gif" alt=""><figcaption></figcaption></figure>

### What happens during permission modifications?

#### Adding permissions

* **User verification process**
  * Validates user identities across the organization
  * Ensures users are correctly mapped to the intended mailbox
  * Checks existing permission levels before addition
* **Permission granting workflow**
  * Systematically applies requested access rights
  * Supports multiple simultaneous permission additions
  * Handles complex permission scenarios across different user groups
* **Comprehensive tracking**
  * Generates detailed audit trail of all permission changes
  * Captures metadata about the permission modification
  * Links permission changes to specific organization context
* **Notification and documentation**
  * Automatically creates or updates support tickets
  * Logs all permission modification details
  * Provides clear, traceable record of access changes

#### Removing permissions

* **Permission revocation process**
  * Methodically removes specified access rights
  * Supports bulk and individual user permission removals
  * Ensures complete and immediate access termination
* **Access validation**
  * Confirms current permission status before removal
  * Prevents unnecessary or redundant access revocation
  * Maintains integrity of mailbox access controls
* **Security and compliance tracking**
  * Creates comprehensive removal logs
  * Documents rationale for permission changes
  * Supports organization security and compliance requirements
* **Automated reporting**
  * Updates relevant ticketing systems
  * Generates immediate notifications of access changes
  * Provides clear audit trail for management review

#### Viewing permissions

* **Comprehensive access snapshot**
  * Retrieves complete permission landscape for a mailbox
  * Displays all current access levels and user rights
  * Offers granular visibility into mailbox access configurations
* **Detailed permission mapping**
  * Shows Full Access and Send As permission details
  * Identifies all users with specific mailbox access
  * Provides context for each permission type
* **Reporting and insights**
  * Generates instant permission overview
  * Supports security audits and access reviews
  * Enables quick identification of potential access risks
* **Flexible exploration**
  * Allows drill-down into specific permission details
  * Supports various reporting and export formats
  * Facilitates comprehensive access management

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

