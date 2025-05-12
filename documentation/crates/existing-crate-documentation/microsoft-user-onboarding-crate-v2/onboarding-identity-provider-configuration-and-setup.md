# Onboarding Identity provider configuration and setup

The Microsoft: User Onboarding Crate supports multiple identity provider configurations to fit different IT environments. Choosing the correct configuration for each customer organization ensures that users are created and managed correctly in Active Directory, Azure AD, or both.

| **Configuration**      | **User created in**             | **Is sync enabled** | **Best for**                                             |
| ---------------------- | ------------------------------- | ------------------- | -------------------------------------------------------- |
| On-Prem AD Only        | Active Directory                | No                  | Organizations using only local Active Directory          |
| Azure AD Only          | Microsoft Entra ID (Azure AD)   | No                  | Cloud-only environments, no local infrastructure         |
| Hybrid with AD Sync    | On-Prem AD & Synced to Azure AD | Yes                 | Organizations needing hybrid identity management         |
| Hybrid with No AD Sync | On-Prem AD & Azure AD, separate | No                  | Environments where accounts need separate configurations |

Each setup requires that specific organizational variables be correctly configured.

## **Configure identity provider settings**

### **Set up organizational variables**

Organizational variables define how Rewst handles identity creation and management. These settings must be configured in **Rewst > Configuration > Organizational Variables**. Follow [this guide](https://docs.rewst.help/prebuilt-automations/existing-crate-documentation/configure-organization-variables) to configure organizational variables under the customer’s organization.

| **Variable name**             | **Purpose**                                                                |
| ----------------------------- | -------------------------------------------------------------------------- |
| `primary_identity_provider`   | Defines whether users are created in On-Prem AD, Azure AD, or Hybrid mode. |
| `preferred_domain_controller` | Hostname of the **domain controller** for executing PowerShell commands.   |
| `preferred_adconnect_server`  | Hostname of the **ADConnect server** for syncing users to Azure AD.        |
| `onprem_no_adsync`            | If set to `1`, prevents On-Prem AD users from syncing to Azure AD.         |
| `user_name_format`            | Defines the username format for new users. (See table below)               |

### **Username format options**

In the following table, `John Smith` is used as the example. All value to enter formats are provided in lowercase.

#### Legend for format types

* **F** = first initial E.g., J for John
* **L** = last initial E.g., S for Smith
* **first** = full first name E.g., John
* **last** = full last name E.g., Smith
* **middle** = middle name E.g., Michael
* **period (.)** = separator between first name and last name

| **Example** | **Value to enter** |
| ----------- | ------------------ |
| John.Smith  | `first_last`       |
| JohnSmith   | `firstlast`        |
| John.S      | `first_l`          |
| JohnL       | `firstl`           |
| John        | `first`            |
| J.Smith     | `f_last`           |
| JSmith      | `flast`            |
| JS          | `fl`               |
| Smith.John  | `last_first`       |
| SmithJohn   | `lastfirst`        |
| Smith.J     | `last_f`           |
| SmithJ      | `lastf`            |
| Smith       | `last`             |
| S.John      | `l_first`          |
| SJohn       | `lfirst`           |

**When a middle name is present, additional options include:**

| **Example**       | **Value to enter**  |
| ----------------- | ------------------- |
| John.Middle.Smith | `first_middle_last` |
| John.MiddleSmith  | `first_middlelast`  |
| John.M.Smith      | `first_m_last`      |
| JohnMSmith        | `firstmlast`        |
| JMSmith           | `fmlast`            |
| JMS               | `fml`               |

{% hint style="warning" %}
Ensure that these variables are set before testing onboarding workflows.
{% endhint %}

## **On-prem Active Directory configuration**

Select **On-Prem AD** if:

* The user only exists in an on-premises environment
* There is no need for Azure AD sync
* Rewst will manage Active Directory users via RMM integration

### **Required organizational variables**

| **Variable name**             | **Purpose**                                                   | **Is required** |
| ----------------------------- | ------------------------------------------------------------- | --------------- |
| `primary_identity_provider`   | Must be set to `on_prem`                                      | Yes             |
| `preferred_domain_controller` | The domain controller Rewst will use for PowerShell commands. | Yes             |
| `onprem_no_adsync`            | Set to `1` to prevent AD sync.                                | Optional        |

{% hint style="warning" %}
Ensure that Active Directory organizational units are properly configured for user placement.
{% endhint %}

## **Azure Active Directory configuration**

Select **Azure AD** if:

* The user only exists in Microsoft Entra ID (Azure AD)
* The organization does not use on-premises Active Directory
* Microsoft Graph API handles user provisioning

### **Required organizational variables**

| **Variable name**            | **Purpose**                      | **Is required** |
| ---------------------------- | -------------------------------- | --------------- |
| `primary_identity_provider`  | Must be set to `azure_ad`        | Yes             |
| `preferred_adconnect_server` | Only required for Hybrid setups. | No              |

{% hint style="warning" %}
Ensure that Microsoft Graph API is enabled for Rewst to interact with Azure AD.
{% endhint %}

## **Hybrid with AD sync configuration**

Select **Hybrid with AD Sync** if:

* The user needs both an on-prem AD and Azure AD account
* AD Connect will sync changes from on-prem AD to Azure AD
* Rewst will handle user creation in on-prem AD, then sync the user to Azure AD

### **Required organizational variables**

| **Variable name**             | **Purpose**                                              | **Is required** |
| ----------------------------- | -------------------------------------------------------- | --------------- |
| `primary_identity_provider`   | Must be set to `on_prem`                                 | Yes             |
| `preferred_domain_controller` | The domain controller for executing PowerShell commands. | Yes             |
| `preferred_adconnect_server`  | The AD Connect server responsible for syncing.           | Yes             |

{% hint style="warning" %}
Ensure that AD Connect is running and properly syncing users between AD and Azure AD.
{% endhint %}

## **Hybrid with no AD Sync configuration**

Select **Hybrid with No AD Sync** if:

* The user needs separate accounts in both AD and Azure AD
* AD Connect is NOT used to sync users
* Different username or email formats are required in AD and Azure AD

### **Required organizational variables**

| **Variable name**           | **Purpose**                            | **Is required** |
| --------------------------- | -------------------------------------- | --------------- |
| `primary_identity_provider` | Must be set to `on_prem`               | Yes             |
| `onprem_no_adsync`          | Must be set to `1` to prevent syncing. | Yes             |

{% hint style="warning" %}
Ensure that username formatting rules are properly defined in Rewst to avoid conflicts.
{% endhint %}

## **Ticketing and documentation configuration**

Configure the following ticketing-related settings in **Rewst > Configuration > Organizational Variables**.

| **Variable name**                 | **Purpose**                                                            |
| --------------------------------- | ---------------------------------------------------------------------- |
| `default_psa`                     | Select the PSA where tickets will be logged.                           |
| `psa_default_board_id`            | The board where Rewst-generated tickets will be placed.                |
| `default_ticket_status`           | The status used when Rewst is actively working on a ticket.            |
| `ticket_status_waiting_input`     | The status when Rewst is waiting for input, such as license purchases. |
| `ticket_status_workflow_complete` | The status when Rewst has finished the workflow.                       |
| `default_priority`                | Sets the priority for Rewst-created tickets.                           |
| `psa_send_from_address`           | Defines the reply-to address for emails sent from Rewst.               |

{% hint style="warning" %}
Your PSA integration must be fully functional before assigning ticket-related variables.
{% endhint %}
