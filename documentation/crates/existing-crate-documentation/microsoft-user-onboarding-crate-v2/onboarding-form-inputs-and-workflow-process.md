# Onboarding form inputs and workflow process

## All onboarding form fields&#x20;

This section provides a complete breakdown of all onboarding form fields, including hidden fields that are conditionally displayed based on other selections.

{% hint style="info" %}
Expand each of the categories below to see its related reference table.
{% endhint %}

<details>

<summary>Basic settings required for all configurations</summary>



<table data-header-hidden><thead><tr><th width="145"></th><th></th><th></th><th></th><th></th></tr></thead><tbody><tr><td><strong>Field name</strong></td><td><strong>Field label</strong></td><td><strong>Field type</strong></td><td><strong>Requirement</strong></td><td><strong>Conditions</strong></td></tr><tr><td><code>ticket_id</code></td><td>Existing Ticket Number</td><td>Dropdown</td><td>Optional</td><td>Always visible</td></tr><tr><td><code>account_requestor</code></td><td>Account Requestor (Missing Opt Gen)</td><td>Text Input</td><td>Optional</td><td>Always visible</td></tr><tr><td><code>first_name</code></td><td>First Name</td><td>Text Input</td><td>Required</td><td>Always visible</td></tr><tr><td><code>middle_name</code></td><td>Middle Name</td><td>Text Input</td><td>Optional</td><td>Always visible</td></tr><tr><td><code>last_name</code></td><td>Last Name</td><td>Text Input</td><td>Required</td><td>Always visible</td></tr><tr><td><code>custom_display_name</code></td><td>Custom Display Name</td><td>Text Input</td><td>Optional</td><td><code>advanced_options_user_attributes</code>is checked</td></tr><tr><td><code>email_domain</code></td><td>Primary Email Domain</td><td>Dropdown</td><td>Required</td><td>Always visible</td></tr><tr><td><code>username</code></td><td>Username</td><td>Text Input</td><td>Auto-Generated</td><td>Requires <strong>First and Last Name</strong></td></tr><tr><td><code>user_exists</code></td><td>Does User Exist</td><td>Output Only</td><td>Determines if the user exists in the primary identity instance.</td><td></td></tr><tr><td><code>license_group_assignment</code></td><td>License Group Assignment</td><td>Multi-Select Dropdown</td><td>Optional</td><td><code>user_exists</code> is true OR <code>licencing_choose_subscription</code> is enabled</td></tr><tr><td><code>direct_m365_license_assignment</code></td><td>Direct M365 License Assignment</td><td>Dropdown</td><td>Optional</td><td><code>user_exists</code> is true OR <code>licencing_choose_subscription</code> is enabled</td></tr><tr><td><code>license_subscription</code></td><td>License Subscription</td><td>Dropdown</td><td>Optional</td><td><code>user_exists</code> is true OR <code>licencing_choose_subscription</code> is enabled</td></tr><tr><td><code>copy_user_attributes</code></td><td>Copy User Attributes</td><td>Checkbox</td><td>Optional</td><td>Always visible</td></tr><tr><td><code>user_to_copy</code></td><td>User To Copy</td><td>Dropdown</td><td>Optional</td><td><code>copy_user_attributes</code> is checked</td></tr><tr><td><code>copy_user_groups</code></td><td>Copy User Groups</td><td>Checkbox</td><td>Optional</td><td><code>copy_user_attributes</code> is checked</td></tr><tr><td><code>onprem_security_groups</code></td><td>On-Prem Sec Groups</td><td>Multi-Select Dropdown</td><td>Optional</td><td><code>primary_identity_provider</code> is On-Prem AD or Hybrid</td></tr><tr><td><code>onprem_dist_groups</code></td><td>On-Prem Dist Groups</td><td>Multi-Select Dropdown</td><td>Optional</td><td><code>primary_identity_provider</code> is On-Prem AD or Hybrid</td></tr><tr><td><code>azure_ad_security_groups</code></td><td>Entra Security Groups</td><td>Multi-Select Dropdown</td><td>Optional</td><td><code>primary_identity_provider</code> is Azure AD or Hybrid</td></tr><tr><td><code>azure_ad_mail_groups</code></td><td>Entra Mail-Enabled Groups</td><td>Multi-Select Dropdown</td><td>Optional</td><td><code>primary_identity_provider</code> is Azure AD or Hybrid</td></tr><tr><td><code>organizational_unit</code></td><td>Organizational Unit</td><td>Dropdown</td><td>Optional</td><td><code>primary_identity_provider</code> is On-Prem AD or Hybrid</td></tr><tr><td><code>password</code></td><td>Password</td><td>Text Input</td><td>Optional</td><td>Leave blank to auto-generate OR enter a password (min 8 chars).</td></tr><tr><td><code>show_advanced_options</code></td><td>Show Advanced Options</td><td>Checkbox</td><td>Optional</td><td>Always visible</td></tr></tbody></table>

</details>

<details>

<summary>Advanced: Manual approver fields</summary>



| **Field name**              | **Field label**            | **Field type** | **Requirement** | **Conditions**                         |
| --------------------------- | -------------------------- | -------------- | --------------- | -------------------------------------- |
| `advanced_options_approval` | Advanced - Manual Approver | Checkbox       | Optional        | `show_advanced_options` is checked     |
| `manual_approver_email`     | Manual Approver E-Mail     | Text Input     | Optional        | `advanced_options_approval` is checked |

</details>

<details>

<summary>Advanced: User attributes</summary>



| **Field name**                | **Field label**                  | **Field type**              | **Requirement** | **Conditions**                                                                                                             |
| ----------------------------- | -------------------------------- | --------------------------- | --------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `home_directory`              | User Attributes - Home Directory | Checkbox                    | Optional        | `primary_identity_provider` is On-Prem AD, Hybrid (No Sync), On-Prem Only, AND `advanced_options_home_directory`is checked |
| `home_directory_server`       | Home Directory Server            | Dropdown                    | Optional        | `home_directory` is checked                                                                                                |
| `home_directory_path`         | Home Directory Path              | Text Input                  | Optional        | `home_directory` is checked                                                                                                |
| `home_directory_drive_letter` | Dropdown                         | Home Directory Drive Letter | Optional        | `home_directory` is checked                                                                                                |
| `description`                 | Description (AD Only)            | Multi-line Input            | Optional        | `primary_identity_provider` is On-Prem AD or Hybrid                                                                        |

</details>

<details>

<summary>Advanced: RMM options</summary>



| **Field name**         | **Field label**        | **Field type** | **Requirement** | **Conditions**                       |
| ---------------------- | ---------------------- | -------------- | --------------- | ------------------------------------ |
| `advanced_options_rmm` | Advanced - RMM Options | Checkbox       | Optional        | `enable_advanced_options` is checked |

</details>

<details>

<summary>Advanced: Mail attributes</summary>



| **Field name**                          | **Field label**                               | **Field type**        | **Requirement** | **Conditions**                    |
| --------------------------------------- | --------------------------------------------- | --------------------- | --------------- | --------------------------------- |
| `mail_nickname`                         | Mail Nickname                                 | Text Input            | Optional        | `advanced_options_mail`is checked |
| `secondary_email_domains`               | Secondary Email Domains                       | Multi-Select Dropdown | Optional        | `advanced_options_mail`is checked |
| `shared_mailboxes`                      | Shared Mailboxes                              | Multi-Select Dropdown | Optional        | `advanced_options_mail`is checked |
| `shared_mailboxes_allow_send_as`        | Allow Send As the Shared Mailboxes?           | Checkbox              | Optional        | `shared_mailboxes` is checked     |
| `shared_mailboxes_allow_send_on_behalf` | Allow Send on Behalf of the Shared Mailboxes? | Checkbox              | Optional        | `shared_mailboxes` is checked     |

</details>

<details>

<summary>Advanced: Password settings</summary>



| **Field name**              | **Field label**                       | **Field type**     | **Requirement** | **Conditions**                                                                      |
| --------------------------- | ------------------------------------- | ------------------ | --------------- | ----------------------------------------------------------------------------------- |
| `require_password_change`   | Require Password Change               | Checkbox           | Optional        | `advanced_options_password` is checked                                              |
| `cannot_change_password`    | User cannot change password (On-Prem) | Checkbox           | Optional        | `advanced_options_password` is checked                                              |
| `password_never_expires`    | Password Never Expires (On-Prem)      | Checkbox           | Optional        | `advanced_options_password` is checked                                              |
| `store_password_in_ticket`  | Store Password in Ticket              | Checkbox           | Optional        | `advanced_options_password` is checked                                              |
| `send_sms_to_user`          | Send Password to User Mobile          | Checkbox           | Optional        | `ORG.VARIABLES.send_sms_to_user`and                                                 |
| `advanced_options_password` |                                       |                    |                 |                                                                                     |
| `sms_with_country_code`     | SMS Number with Country Code          | Number Input Field | Optional        | `send_sms_to_user` and `advanced_options_password`                                  |
| `vpn`                       | Dial-In VPN access for the user.      | Checkbox           | Optional        | `advanced_options_user_attributes`is checked and `show_advanced_options` is checked |

</details>

<details>

<summary>Advanced: PSA options</summary>



| **Field name**          | **Field label**               | **Field type** | **Requirement** | **Conditions**                    |
| ----------------------- | ----------------------------- | -------------- | --------------- | --------------------------------- |
| `create_contact_in_psa` | Create Company Contact in PSA | Checkbox       | Optional        | `advanced_options_psa` is checked |
| `psa_child_company`     | PSA Child Company             | Dropdown       | Optional        | `advanced_options_psa` is checked |

</details>

<details>

<summary>Device and software assignments</summary>



| **Field name**          | **Field label**                | **Field type**        | **Requirement** | **Conditions**                       |
| ----------------------- | ------------------------------ | --------------------- | --------------- | ------------------------------------ |
| `required_devices`      | Required Devices               | Multi-Select Dropdown | Optional        | `advanced_options_devices`is checked |
| `device_description`    | Device Description Information | Multi-line Input      | Optional        | `advanced_options_devices`is checked |
| `required_applications` | Required Applications          | Multi-Select Dropdown | Optional        | `advanced_options_apps` is checked   |

</details>

### **Decoded advanced Jinja conditions**

In some cases, form fields are dynamically determined using complex Jinja logic.

For example: Identity provider configuration field visibility

{% code overflow="wrap" %}
```django
{% set idp_config = "invalid_idp" %}
{%- if ORG.VARIABLES.primary_identity_provider|d|lower in ["azure_ad","azuread"] or CTX.mail_only_user|d(false) -%}
    {%- set idp_config = "azure_ad" -%}
{%- elif ORG.VARIABLES.primary_identity_provider|d|lower in ["on_prem"] and ORG.VARIABLES.onprem_no_adsync|d|lower in ["true","1"] -%}
    {%- set idp_config = "hybrid_no_sync" -%}
{%- elif ORG.VARIABLES.primary_identity_provider|d|lower in ["on_prem"] and ORG.VARIABLES.no_azure_ad|d|lower == "true" -%}
    {%- set idp_config = "on_prem_only" -%}
{%- elif ORG.VARIABLES.primary_identity_provider|d|lower in ["on_prem"] -%}
    {%- set idp_config = "on_prem" -%}
{%- endif %}
{{- idp_config in ["hybrid_no_sync", "on_prem_only", "on_prem"] -}}

```
{% endcode %}

* The field will only show if `ORG.VARIABLES.primary_identity_provider` is On-Prem, Hybrid without Sync, or On-Prem Only.
* If **Azure AD** is selected, the field will be hidden.
