# \[REWST - TASK] User Onboarding: Create User

This Rewst workflow automates the entire user creation process across multiple identity platforms" on-prem Active Directory, Azure AD/Entra ID, and JumpCloud. It handles syncing between systems, assigning users to the right groups, and logging passwords in PSA tickets. Use it to standardize client onboarding, cut down on mistakes during new hires, avoid repetitive manual setup, and keep security practices consistent across environments.

The workflow first checks for existing accounts to avoid duplicates. Then it creates users in the right identity platforms based on the client’s setup, syncs between on-prem and cloud directories, assigns group memberships, and logs credentials in the PSA. It also includes failure handling at each important step.

This workflow contains 35 tasks.

### Inputs

* **psa** - string
  * Used to select PSA manually. Uses organization variable `default_psa` is not set
* **zip** - string
  * This parameter stores the user's postal/zip code for address information in directory services. It's a string value (e.g., "90210" for US or "M5V 2H1" for Canada) and is optional, typically used alongside city, state, and street\_address parameters.
* **city** - string
  * This parameter captures the user's city location for directory services and location-based configurations. It's a string value (e.g., "San Francisco") and is optional, though recommended when providing complete user address information.
* **email** - string
  * This parameter defines the user's complete email address in your environment. It's a string value (e.g., "john.smith@company.com") and while marked optional, it's typically essential for most modern user provisioning as it serves as a primary identifier across systems.
* **state** - string
  * This parameter specifies the user's state or province for directory services. It's a string value that can be full name or abbreviation (e.g., "California" or "CA") and is optional but recommended when providing complete address information.
* **company** - string
  * This parameter identifies which organization the user belongs to, especially important in multi-tenant MSP environments. It's a string value (e.g., "Acme Corporation") and is optional but recommended for proper user categorization.
* **no\_mail** - string
  * Disables setting Mail Nickname to Username is not blank
* **password** - string
  * This parameter sets the user's initial password for authentication. It's a string value that should meet your organization's complexity requirements (e.g., "P@ssw0rd123!") and while marked optional, a value is typically required unless your workflow generates passwords automatically.
* **username** - string
  * This parameter specifies the user's login name for authentication across systems. It's a string value (e.g., "john.smith" or "jsmith") and while marked optional, it's practically required as it's the primary identifier for the user account in most systems.
* **last\_name** - string
  * This parameter captures the user's surname for identification across systems. It's a string value (e.g., "Smith") and while marked optional, it's practically required for proper user identification and often used to generate email addresses and display names.
* **ticket\_id** - string
  * Set to ticket id if there is an existing ticket
* **department** - string
  * This parameter specifies the user's department within the organization for proper grouping and permissions. It's a string value (e.g., "Finance", "IT", "Sales") and is optional, but valuable for organizational structure and automated group assignments.
* **first\_name** - string
  * This parameter captures the user's given name for identification across systems. It's a string value (e.g., "John") and while marked optional, it's practically required for proper user identification and often used to generate email addresses and display names.
* **idp\_config** - string
  * Identity Provider to be used when creating the user
  * Default: `{{ CTX.idp_config|d }}`
* **supervisor** - string
  * Sets supervisor on the User record
* **user\_title** - string
  * Sets title on the User record
* **max\_retries** - integer
  * Max number of tries to wait for On Perm to sync to Azure AD. (3 minutes per retry)
  * Default: `{{ 30 }}`
* **psa\_tech\_id** - string
  * Override PSA Technician ID. Uses organization variable `psa_default_tech_id` if not set
* **user\_office** - string
  * Sets office on the User record
* **custom\_email** - string
  * Sets custom email on User record
* **email\_domain** - string
  * This parameter specifies the domain portion of the email address. It's a string value (e.g., "company.com") and is optional, typically used in conjunction with mail\_nickname or username to form the complete email address.
* **user\_to\_copy** - string
  * Select user will be copied from
  * Default: `{{ CTX.user_to_copy|d }}`
* **mail\_nickname** - string
  * This parameter defines the user's email alias or prefix before the @ symbol. It's a string value (e.g., "jsmith") and is optional, often used when the email naming convention differs from the username format.
* **street\_address** - string
  * This parameter captures the user's physical street address for directory services. It's a string value (e.g., "123 Main Street, Suite 100") and is optional, typically used for contact information in Active Directory and other systems.
* **usage\_location** - string
  * This parameter specifies the user's geographical location for licensing and compliance purposes, especially for Microsoft 365. It's a string value, typically a two-letter country code (e.g., "US", "UK") and is optional but recommended for proper license assignment.
* **copied\_user\_upn** - string
  * Copy from User via UPN
* **exchange\_server** - string
  * Exchange Server Name
* **store\_in\_ticket** - boolean
  * If true, store password in PSA Ticket
  * Default: `{{ false }}`
* **user\_description** - string
  * This parameter provides additional information about the user's role or position. It's a string value (e.g., "Senior Network Engineer - Contract") and is optional, typically used for administrative context in directory services.
* **exchange\_database** - string
  * This parameter specifies which Exchange database should host the user's mailbox. It's a string value (e.g., "MBX-DB01") and is optional, typically only relevant for on-premises Exchange or hybrid environments where mailbox placement needs to be specified.
* **home\_drive\_letter** - string
  * User's Home Drive Letter
  * Default: `{{ CTX.home_drive_letter|d }}`
* **requested\_password** - string
  * Requested User Password
  * Default: `{{ CTX.requested_password|d }}`
* **home\_directory\_path** - string
  * This parameter defines the network path for the user's file storage location. It's a string value (e.g., "\fileserver\users\jsmith") and is optional, pulling from context variables if configured in your environment. This is primarily used for on-premises Active Directory environments.
  * Default: `{{ CTX.home_directory_path|d }}`
* **organizational\_unit** - string
  * OU to create the user account in. We can omit this an use the default AD OU or list all OUs that contain user accounts. If OUs contain description fields, we can display on those versus the CanonicalName. (NOTE: OUs must contain at least one user to be displayed)
  * Default: `{{ CTX.organizational_unit|d }}`
* **email\_domain\_on\_prem** - string
  * Email Domain Name (On-Prem)
* **force\_password\_change** - boolean
  * If selected, user must change password upon first login
  * Default: `{{ false}}`
* **jumpcloud\_user\_groups** - array
  * JumpCloud User Groups
  * Default: `{{ CTX.jumpcloud_user_groups|d([]) }}`
* **cannot\_change\_password** - boolean
  * Crated user can not change password
  * Default: `{{ false}}`
* **onprem\_security\_groups** - array
  * Security Groups (On Perm)
  * Default: `{{ CTX.onprem_security_groups|d([]) }}`
* **password\_never\_expires** - boolean
  * Password Never Expires
  * Default: `{{ false}}`
* **phone\_number\_formatted** - string
  * Formatted Phone Number
* **base64\_customdisplayname** - string
  * If your user has special characters in their name, use this field for their display name
* **onprem\_ad\_license\_groups** - array
  * On-Prem AD License Groups
  * Default: `{{ CTX.onprem_ad_license_groups|d([]) }}`
* **shared\_mailboxes\_on\_prem** - array
  * AD Security Groups (Identified for this list by on-prem AD Query)
  * Default: `{{ CTX.shared_mailboxes_on_prem|d([]) }}`
* **onprem\_distribution\_groups** - array
  * Distribution Groups (On Perm)
  * Default: `{{ [ ] }}`
* **override\_azure\_ad\_username** - string
  * Custom Azure AD Username
* **desk\_phone\_number\_formatted** - string
  * Formatted Desk Phone Number

### Outputs

* **automation\_log**: Standardized Rewst automation log
* **aad\_user\_id**: If applicable will return the ID of the Azure AD/Entra user.
* **aad\_user\_object**: If applicable will return the entire user object of the Azure AD/Entra user.
* **on\_prem\_user\_sid**: If applicable will return the SID of the On-Prem AD user.
* **success**: Boolean; States if workflow was successful.
* **aad\_supervisor\_upn**: UPN of the supervisor in Azure AD/Entra

### Overall process status

### Key tasks

* **document\_password\_in\_ticket**: Sub workflow for PSA ticket update
* **Wait for AD to sync to Azure**: Waiting/delay
* **check\_if\_failed**: Validation/verification
* **create\_azure\_ad\_user**: Creation/initialization
* **select\_identity\_provider**: Core integration: noop

### Jinja examples

#### Example 1

```jinja
{{ CTX.ticket_id }}
```

Used in input parameter 'ticket\_id'

#### Example 2

```jinja
{{ CTX.username }}
```

Used in input parameter 'internal\_note'
