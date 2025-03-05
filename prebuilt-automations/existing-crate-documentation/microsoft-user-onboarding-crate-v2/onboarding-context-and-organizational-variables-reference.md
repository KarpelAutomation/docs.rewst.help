# Onboarding context and organizational variables reference

## Overview of CTX and ORG.VARIABLES

The Microsoft: User Onboarding Crate uses CTX (Context Variables) and ORG.VARIABLES (Organizational Variables) to control user provisioning, security settings, licensing, and ticketing workflows.

* CTX variables store dynamic, user-specific data that persists throughout the onboarding process.
* ORG.VARIABLES define global settings for how Rewst interacts with Active Directory, Azure AD, PSA, RMM, and other integrations.

These variables must be correctly configured in Rewst > Configuration > Organizational Variables before deploying the Crate.

{% hint style="warning" %}
Ensure all required variables are correctly set before using the onboarding workflow.
{% endhint %}

## **CTX variables reference**

CTX variables hold dynamic, user-specific data used in automation.

{% hint style="info" %}
Expand each of the categories below to see that type of variable's reference table.
{% endhint %}

<details>

<summary>User information CTX variable reference</summary>



| **CTX variable**                             | **Purpose**                                                        |
| -------------------------------------------- | ------------------------------------------------------------------ |
| `CTX.first_name`                             | Stores the user's first name.                                      |
| `CTX.last_name`                              | Stores the user's last name.                                       |
| `CTX.email`                                  | The user's primary email address.                                  |
| `CTX.username`                               | The assigned username for login.                                   |
| `CTX.user_title / CTX.job_title`             | Stores the user's job title.                                       |
| `CTX.user_location / CTX.site_name`          | Defines the user's location.                                       |
| `CTX.mobile_number / CTX.phone_number`       | Stores the user's mobile phone number.                             |
| `CTX.desk_phone_number / CTX.desk_extension` | Stores the user's desk phone and extension.                        |
| `CTX.supervisor_id`                          | References the assigned supervisor.                                |
| `CTX.contact_id`                             | Stores the unique contact ID for the user.                         |
| `CTX.child_company`                          | Defines the company or department under which the user is created. |

</details>

<details>

<summary>Identity and directory information CTX variable reference</summary>



| **CTX variable**                  | **Purpose**                                                      |
| --------------------------------- | ---------------------------------------------------------------- |
| `CTX.aad_user_id`                 | Stores the Azure AD (Entra ID) user ID.                          |
| `CTX.ad_user_id`                  | Stores the On-Prem AD user ID.                                   |
| `CTX.email_domain`                | Defines the email domain assigned to the user.                   |
| `CTX.group_lists_with_names`      | Stores assigned security/distribution groups.                    |
| `CTX.combined_user_attributes`    | Merges attributes for both AD and Azure AD.                      |
| `CTX.preferred_adconnect_server`  | Specifies the preferred domain controller for AD Sync.           |
| `CTX.child_company`               | Identifies the sub-company under which the user is created.      |
| `CTX.preferred_identity_provider` | Determines the primary directory (On-Prem AD, Azure AD, Hybrid). |

</details>

<details>

<summary>Ticketing and documentation CTX variable reference</summary>



| **CTX variable**                     | **Purpose**                                               |
| ------------------------------------ | --------------------------------------------------------- |
| `CTX.ticket_id`                      | Tracks the ticket ID for onboarding.                      |
| `CTX.create_company_contact`         | Determines if a company contact should be created in PSA. |
| `CTX.psa_system`                     | Tracks the PSA system used for documentation.             |
| `CTX.automation_log`                 | Logs automation execution details.                        |
| `CTX.onboard_excluded_org_variables` | Filters out sensitive organizational variables from logs. |

</details>

<details>

<summary>Security and password management CTX variable reference</summary>



| **CTX variable**                | **Purpose**                                                      |
| ------------------------------- | ---------------------------------------------------------------- |
| `CTX.requested_password`        | Stores the initial password for user onboarding.                 |
| `CTX.password_storage_location` | Defines where the password is stored (PSA, ITGlue, Hudu, etc.).  |
| `CTX.require_password_change`   | Indicates if the user must change the password upon first login. |
| `CTX.prevent_password_change`   | Restricts the user from manually updating their password.        |
| `CTX.store_password_in_ticket`  | Determines whether the password should be stored as a ticket.    |

</details>

<details>

<summary>License and group management CTX variable reference</summary>



| **CTX variable**               | **Purpose**                                                 |
| ------------------------------ | ----------------------------------------------------------- |
| `CTX.sku_infos`                | Stores assigned Microsoft 365 licenses.                     |
| `CTX.m365_direct_licenses`     | Lists direct license assignments.                           |
| `CTX.m365_security_groups`     | Defines Microsoft 365 security groups assigned to the user. |
| `CTX.ad_security_groups`       | Lists on-premises AD security group assignments.            |
| `CTX.m365_distribution_groups` | Defines Microsoft 365 distribution groups assigned.         |
| `CTX.shared_mailboxes`         | Tracks shared mailbox permissions.                          |

</details>



## **ORG.VARIABLES reference**

ORG.VARIABLES define **global settings** that control how onboarding workflows operate.

{% hint style="info" %}
Expand each of the categories below to see that type of variable's reference table.
{% endhint %}

<details>

<summary>Identity and access management org variable reference</summary>



| **ORG.VARIABLES**             | **Purpose**                                                                |
| ----------------------------- | -------------------------------------------------------------------------- |
| `default_rmm`                 | Selects the RMM platform used for automation.                              |
| `primary_identity_provider`   | Defines whether users are created in On-Prem AD, Azure AD, or Hybrid mode. |
| `preferred_domain_controller` | The hostname of the domain controller used for running PowerShell.         |
| `preferred_adconnect_server`  | The name of the server running AD Connect.                                 |
| `onprem_exchange_server`      | The name of the On-Prem Exchange Server (leave blank if not used).         |

</details>

<details>

<summary>Ticketing and documentation org variable reference</summary>



| **ORG.VARIABLES**                 | **Purpose**                                                 |
| --------------------------------- | ----------------------------------------------------------- |
| `default_psa`                     | Selects the PSA system where tickets will be created.       |
| `default_ticket_location`         | The board where Rewst-generated tickets will be placed.     |
| `default_ticket_status`           | The status used when Rewst is actively working on a ticket. |
| `ticket_status_waiting_input`     | The status when Rewst is waiting for technician input.      |
| `ticket_status_workflow_complete` | The status when the onboarding workflow is complete.        |
| `default_priority`                | The priority for Rewst-created tickets.                     |
| `send_from_address`               | The reply-to address when sending emails from Rewst.        |

</details>

<details>

<summary>Licensing and purchases org variable reference</summary>



| **ORG.VARIABLES**                         | **Purpose**                                                                  |
| ----------------------------------------- | ---------------------------------------------------------------------------- |
| `ms_licensing_distributor`                | Selects the default Microsoft 365 license distributor (Pax8, Sherweb, etc.). |
| `auto_purchase_license_if_none_available` | Enables auto-purchase of Microsoft 365 licenses when unavailable.            |

</details>

<details>

<summary>Security and password management org variable reference</summary>



| **ORG.VARIABLES**                   | **Purpose**                                             |
| ----------------------------------- | ------------------------------------------------------- |
| `store_password_in_ticket`          | Saves the password in the PSA ticket internal notes.    |
| `onboarding_password_save_location` | Defines alternative storage (PSA, ITGlue, Hudu).        |
| `pwpush_url`                        | The URL for PWPush if used for secure password sharing. |

</details>

<details>

<summary>User onboarding and offboarding defaults org variable reference</summary>



| **ORG.VARIABLES**                     | **Purpose**                                                                           |
| ------------------------------------- | ------------------------------------------------------------------------------------- |
| `user_start_date_behavior`            | Controls whether onboarding starts immediately or waits for the specified start date. |
| `type_for_created_new_user_ticket`    | Defines the ticket type for new user onboarding.                                      |
| `subtype_for_created_new_user_ticket` | Defines the subtype for new user onboarding tickets.                                  |
| `item_for_created_new_user_ticket`    | Defines the item for new user onboarding tickets.                                     |
| `user_name_format`                    | Defines the username format for new users.                                            |
| `no_ad_sync`                          | Specifies if the organization has an OnPrem AD without AD Sync.                       |

</details>

<details>

<summary>Miscellaneous settings org variable reference</summary>



| **ORG.VARIABLES**               | **Purpose**                                             |
| ------------------------------- | ------------------------------------------------------- |
| `preferred_phone_number_format` | Defines the preferred format for phone numbers.         |
| `m365_usage_location`           | Defines the default Microsoft 365 usage location.       |
| `new_user_approval_email`       | Specifies the email address for user approval requests. |

</details>

