# Actions & Endpoints

## Introduction

The Okta Integration with Rewst delivers a robust set of actions and endpoints for interacting with Okta. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Okta Integration:

* [**Application**](actions-and-endpoints.md#application)
* [**Authenticator**](actions-and-endpoints.md#authenticator)
* [**Authorizationserver**](actions-and-endpoints.md#authorizationserver)
* [**Brand**](actions-and-endpoints.md#brand)
* [**Domain**](actions-and-endpoints.md#domain)
* [**Eventhook**](actions-and-endpoints.md#eventhook)
* [**Feature**](actions-and-endpoints.md#feature)
* [**Generic Request**](actions-and-endpoints.md#generic-request)
* [**Group**](actions-and-endpoints.md#group)
* [**Groupschema**](actions-and-endpoints.md#groupschema)
* [**Identityprovider**](actions-and-endpoints.md#identityprovider)
* [**Inlinehook**](actions-and-endpoints.md#inlinehook)
* [**Linkedobject**](actions-and-endpoints.md#linkedobject)
* [**Log**](actions-and-endpoints.md#log)
* [**Networkzone**](actions-and-endpoints.md#networkzone)
* [**Org**](actions-and-endpoints.md#org)
* [**Policy**](actions-and-endpoints.md#policy)
* [**Profilemapping**](actions-and-endpoints.md#profilemapping)
* [**Subscription**](actions-and-endpoints.md#subscription)
* [**Template**](actions-and-endpoints.md#template)
* [**Threatinsight**](actions-and-endpoints.md#threatinsight)
* [**Trustedorigin**](actions-and-endpoints.md#trustedorigin)
* [**User**](actions-and-endpoints.md#user)
* [**Userfactor**](actions-and-endpoints.md#userfactor)
* [**Userschema**](actions-and-endpoints.md#userschema)
* [**Usertype**](actions-and-endpoints.md#usertype)

## Actions

### Application

## List Applications

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps`

Enumerates apps added to your organization with pagination. A subset of apps can be returned that match a supported filter expression or query.

## Create Application

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps`

Adds a new application to your Okta organization.

## Get Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}`

Fetches an application from your Okta organization by \`id\`.

## Update Application

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/apps/{appId}`

Updates an application in your organization.

## Delete Application

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/apps/{appId}`

Removes an inactive application.

## Get Default Provisioning Connection For Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/connections/default`

Get default Provisioning Connection for application

## Sets Default Provisioning Connection For Application

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/connections/default`

Set default Provisioning Connection for application

## Activate Default Provisioning Connection For Application

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/connections/default/lifecycle/activate`

Activates the default Provisioning Connection for an application.

## Deactivate Default Provisioning Connection For Application

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/connections/default/lifecycle/deactivate`

Deactivates the default Provisioning Connection for an application.

## List Certificate Signing Requests For Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/csrs`

Enumerates Certificate Signing Requests for an application

## Generate Certificate Signing Request For Application

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/csrs`

Generates a new key pair and returns the Certificate Signing Request for it.

## Get CSR For Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/csrs/{csrId}`

Description coming soon...

## Revoke CSR From Application

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/csrs/{csrId}`

Description coming soon...

## Publish CSR Credential

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/csrs/{csrId}/lifecycle/publish`

Description coming soon...

## List Key Credentials For Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/keys`

Enumerates key credentials for an application

## Generate Application Key

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/keys/generate`

Generates a new X.509 certificate for an application key credential

## Get Key Credential For Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/keys/{keyId}`

Gets a specific application key credential by kid

## Clone Application Key Credential

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/keys/{keyId}/clone`

Clones a X.509 certificate for an application key credential from a source application to target application.

## List Client Secrets

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/secrets`

Enumerates the client's collection of secrets

## Create New Client Secret

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/secrets`

Adds a new secret to the client's collection of secrets.

## Get Client Secret

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/secrets/{secretId}`

Gets a specific client secret by secretId

## Delete Client Secret For Application

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/secrets/{secretId}`

Removes a secret from the client's collection of secrets.

## Activate A Client Secret

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/secrets/{secretId}/lifecycle/activate`

Activates a specific client secret by secretId

## Deactivate A Client Secret

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/credentials/secrets/{secretId}/lifecycle/deactivate`

Deactivates a specific client secret by secretId

## List Features for Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/features`

Description coming soon...

## Get Application Feature

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/features/{name}`

Description coming soon...

## Updates A Feature Object For An Application

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/apps/{appId}/features/{name}`

Description coming soon...

## List Scope Consent Grants

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/grants`

Lists all scope consent grants for the application

## Grant Consent To Scope

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/grants`

Grants consent for the application to request an OAuth 2.0 Okta scope

## Get Scope Consent Grant

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/grants/{grantId}`

Fetches a single scope consent grant for the application

## Revoke Scope Consent Grant

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/apps/{appId}/grants/{grantId}`

Revokes permission for the application to request the given scope

## List Groups Assigned To Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/groups`

Enumerates group assignments for an application.

## Get Assigned Group For Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/groups/{groupId}`

Fetches an application group assignment

## Assign Group To Application

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/apps/{appId}/groups/{groupId}`

Assigns a group to an application

## Remove Group From Application

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/apps/{appId}/groups/{groupId}`

Removes a group assignment from an application.

## Activate Application

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/lifecycle/activate`

Activates an inactive application.

## Deactivate Application

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/lifecycle/deactivate`

Deactivates an active application.

## Update Application Policy

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/apps/{appId}/policies/{policyId}`

Assign an application to a specific policy. This unassigns the application from its currently assigned policy.

## Previewsaml App Metadata

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/sso/saml/metadata`

Previews SAML metadata based on a specific key credential for an application

## Listoauth Tokensforapplication

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/tokens`

Lists all tokens for the application

## Revokeoauth Tokensforapplication

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/apps/{appId}/tokens`

Revokes all tokens for the specified application

## Getoauth Tokenforapplication

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/tokens/{tokenId}`

Gets a token for the specified application

## Revokeoauth Tokenforapplication

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/apps/{appId}/tokens/{tokenId}`

Revokes the specified token for the specified application

## List Users Assigned To Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/users`

Enumerates all assigned \[application users]\(#application-user-model) for an application.

## Assign User To Application For Sso Provisioning

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/users`

Assigns an user to an application with \[credentials]\(#application-user-credentials-object) and an app-specific \[profile]\(#application-user-profile-object). Profile mappings defined for the application are first applied before applying any profile properties specified in the request.

## Get Assigned User For Application

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/apps/{appId}/users/{userId}`

Fetches a specific user assignment for application by \`id\`.

## Update Application Profile For Assigned User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/apps/{appId}/users/{userId}`

Updates a user's profile for an application

## Remove User From Application

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/apps/{appId}/users/{userId}`

Removes an assignment for a user from an application.

### Authenticator

## List Authenticators

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authenticators`

List Authenticators

## Create An Authenticator

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authenticators`

Create Authenticator

## Get Authenticator

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authenticators/{authenticatorId}`

Description coming soon...

## Update Authenticator

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/authenticators/{authenticatorId}`

Updates an authenticator

## Activate Authenticator

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authenticators/{authenticatorId}/lifecycle/activate`

Description coming soon...

## Deactivate Authenticator

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authenticators/{authenticatorId}/lifecycle/deactivate`

Description coming soon...

### Authorizationserver

## List Authorization Servers

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers`

Description coming soon...

## Create Authorization Server

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers`

Description coming soon...

## Get Authorization Server

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}`

Description coming soon...

## Update Authorization Server

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}`

Description coming soon...

## Delete Authorization Server

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}`

Description coming soon...

## List oAuth Claims

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/claims`

Description coming soon...

## Create oAuth Claim

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/claims`

Description coming soon...

## Get oAuth Claim

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/claims/{claimId}`

Description coming soon...

## Updateoauth Claim

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/claims/{claimId}`

Description coming soon...

## Deleteoauth Claim

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/claims/{claimId}`

Description coming soon...

## Listoauth Clientsforauthorizationserver

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/clients`

Description coming soon...

## List Refresh Tokens For Authorization Server And Client

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens`

Description coming soon...

## Revoke Refresh Tokens For Authorization Server And Client

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens`

Description coming soon...

## Get Refresh Token For Authorization Server And Client

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens/{tokenId}`

Description coming soon...

## Revoke Refresh Token For Authorization Server And Client

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens/{tokenId}`

Description coming soon...

## List Authorization Server Keys

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/credentials/keys`

Description coming soon...

## Rotate Authorization Server Keys

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/credentials/lifecycle/keyRotate`

Description coming soon...

## Activate Authorization Server

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/lifecycle/activate`

Description coming soon...

## Deactivate Authorization Server

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/lifecycle/deactivate`

Description coming soon...

## List Authorization Server Policies

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies`

Description coming soon...

## Create Authorization Server Policy

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies`

Description coming soon...

## Get Authorization Server Policy

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}`

Description coming soon...

## Update Authorization Server Policy

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}`

Description coming soon...

## Delete Authorization Server Policy

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}`

Description coming soon...

## Activate Authorization Server Policy

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/lifecycle/activate`

Description coming soon...

## Deactivate Authorization Server Policy

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/lifecycle/deactivate`

Description coming soon...

## List Authorization Server Policy Rules

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules`

Enumerates all policy rules for the specified Custom Authorization Server and Policy.

## Create Authorization Server Policy Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules`

Creates a policy rule for the specified Custom Authorization Server and Policy.

## Get Authorization Server Policy Rule

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}`

Returns a Policy Rule by ID that is defined in the specified Custom Authorization Server and Policy.

## Update Authorization Server Policy Rule

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}`

Updates the configuration of the Policy Rule defined in the specified Custom Authorization Server and Policy.

## Delete Authorization Server Policy Rule

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}`

Deletes a Policy Rule defined in the specified Custom Authorization Server and Policy.

## Activate Authorization Server Policy Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}/lifecycle/activate`

Description coming soon...

## Deactivate Authorization Server Policy Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate`

Description coming soon...

## Listoauth Scopes

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/scopes`

Description coming soon...

## Createoauth Scope

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/scopes`

Description coming soon...

## Getoauth Scope

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/scopes/{scopeId}`

Description coming soon...

## Updateoauth Scope

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/scopes/{scopeId}`

Description coming soon...

## Deleteoauth Scope

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/authorizationServers/{authServerId}/scopes/{scopeId}`

Description coming soon...

### Brand

## List Brands

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands`

List all the brands in your org.

## Get Brand

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}`

Fetches a brand by \`brandId\`

## Update Brand

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/brands/{brandId}`

Updates a brand by \`brandId\`

## List Email Templates

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email`

List email templates in your organization with pagination.

## Get Email Template

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}`

Fetch an email template by templateName

## List Email Template Customization

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/customizations`

List all email customizations for an email template

## Create Email Template Customization

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/customizations`

Create an email customization

## Delete Email Template Customization

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/customizations`

Delete all customizations for an email template. Also known as “Reset to Default”.

## Get Email Template Customization

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId}`

Fetch an email customization by id.

## Update Email Customization

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId}`

Update an email customization

## Delete Email Customization

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId}`

Delete an email customization

## Get Preview Content Of Email Customization

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId}/preview`

Get a preview of an email template customization.

## Get Default Content Of Email Template

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/default-content`

Fetch the default content for an email template.

## Get Preview Of Email Template Default Content

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/default-content/preview`

Fetch a preview of an email template's default content by populating velocity references with the current user's environment.

## Get Preview Of Email Template Default Content

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/brands/{brandId}/templates/email/{templateName}/test`

Send a test email to the current users primary and secondary email addresses. The email content is selected based on the following priority: An email customization specifically for the users locale. The default language of email customizations. The email templates default content.

## Get Brand Themes

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes`

List all the themes in your brand

## Get A Theme For A Brand

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes/{themeId}`

Fetches a theme for a brand

## Update A Theme For A Brand

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes/{themeId}`

Updates a theme for a brand

## Updates The Background Image For Your Theme

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes/{themeId}/background-image`

Description coming soon...

## Deletes A Theme Background Image

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes/{themeId}/background-image`

Description coming soon...

## Updates The Favicon For Your Theme

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes/{themeId}/favicon`

Description coming soon...

## Deletes A Theme Favicon The Org Then Uses The Okta Default Favicon

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes/{themeId}/favicon`

Description coming soon...

## Update A Themes Logo

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes/{themeId}/logo`

Updates the logo for your Theme

## Deletes A Theme Logo The Org Then Uses The Okta Default Logo

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/brands/{brandId}/themes/{themeId}/logo`

Description coming soon...

### Domain

## List Domains

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/domains`

List all verified custom Domains for the org.

## Create Domain

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/domains`

Creates your domain.

## Get Domain

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/domains/{domainId}`

Fetches a Domain by \`id\`.

## Delete Domain

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/domains/{domainId}`

Deletes a Domain by \`id\`.

## Create Certificate

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/domains/{domainId}/certificate`

Creates the Certificate for the Domain.

## Verify Domain

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/domains/{domainId}/verify`

Verifies the Domain by \`id\`.

### Eventhook

## List Event Hooks

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/eventHooks`

Description coming soon...

## Create Event Hook

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/eventHooks`

Description coming soon...

## Get Event Hook

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/eventHooks/{eventHookId}`

Description coming soon...

## Update Event Hook

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/eventHooks/{eventHookId}`

Description coming soon...

## Delete Event Hook

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/eventHooks/{eventHookId}`

Description coming soon...

## Activate Event Hook

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/eventHooks/{eventHookId}/lifecycle/activate`

Description coming soon...

## Deactivate Event Hook

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/eventHooks/{eventHookId}/lifecycle/deactivate`

Description coming soon...

## Verify Event Hook

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/eventHooks/{eventHookId}/lifecycle/verify`

Description coming soon...

### Feature

## List Features

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/features`

Description coming soon...

## Get Feature

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/features/{featureId}`

Description coming soon...

## List Feature Dependencies

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/features/{featureId}/dependencies`

Description coming soon...

## List Feature Dependents

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/features/{featureId}/dependents`

Description coming soon...

## Update Feature Lifecycle

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/features/{featureId}/{lifecycle}`

Description coming soon...

### Generic Request

## Okta Generic Request

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/<url_path>`

Generic action for making authenticated requests against the Okta API

### Group

## List Groups

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups`

Enumerates groups in your organization with pagination. A subset of groups can be returned that match a supported filter expression or query.

## Create Group

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/groups`

Adds a new group with \`OKTA\_GROUP\` type to your organization.

## List Group Rules

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/rules`

Lists all group rules for your organization.

## Create Group Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/groups/rules`

Creates a group rule to dynamically add users to the specified group if they match the condition

## Get Group Rule

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/rules/{ruleId}`

Fetches a specific group rule by id from your organization

## Update Group Rule

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/groups/rules/{ruleId}`

Updates a group rule. Only \`INACTIVE\` rules can be updated.

## Delete A Group Rule

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/groups/rules/{ruleId}`

Removes a specific group rule by id from your organization

## Activate A Group Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/groups/rules/{ruleId}/lifecycle/activate`

Activates a specific group rule by id from your organization

## Deactivate A Group Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/groups/rules/{ruleId}/lifecycle/deactivate`

Deactivates a specific group rule by id from your organization

## Get Group

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/{groupId}`

Fetches a group from your organization.

## Update Group

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/groups/{groupId}`

Updates the profile for a group with \`OKTA\_GROUP\` type from your organization.

## Remove Group

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/groups/{groupId}`

Removes a group with \`OKTA\_GROUP\` type from your organization.

## List Assigned Applications

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/{groupId}/apps`

Enumerates all applications that are assigned to a group.

## List Group Assigned Roles

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles`

Description coming soon...

## Assign Role To Group

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles`

Assigns a Role to a Group

## Get Role

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}`

Description coming soon...

## Remove Role From Group

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}`

Unassigns a Role from a Group

## List Application Targets For Application Administrator Role For Group

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps`

Lists all App targets for an \`APP\_ADMIN\` Role assigned to a Group. This methods return list may include full Applications or Instances. The response for an instance will have an \`ID\` value, while Application will not have an ID.

## Create Application Target To Admin Role Given To Group

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}`

Description coming soon...

## Remove Application Target From Application Administrator Role Given To Group

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}`

Description coming soon...

## Create App Instance Target To App Administrator Role Given To A Group

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId}`

Description coming soon...

## Remove App Instance Target To App Administrator Role Given To A Group

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId}`

Description coming soon...

## List Group Targets For Group Role

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}/targets/groups`

Description coming soon...

## Add Group Target To Group Administrator Role For Group

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId}`

## Remove Group Target From Group Administrator Role Given To Group

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId}`

## List Group Members

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/groups/{groupId}/users`

Enumerates all users that are a member of a group.

## Add User To Group

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/groups/{groupId}/users/{userId}`

Adds a user to a group with 'OKTA\_GROUP' type.

## Remove User From Group

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/groups/{groupId}/users/{userId}`

Removes a user from a group with 'OKTA\_GROUP' type.

### Groupschema

## Get Default Group Schema

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/meta/schemas/group/default`

Description coming soon...

## Update Default Group Schema

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/meta/schemas/group/default`

Description coming soon...

### Identityprovider

## List Identity Providers

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps`

Enumerates IdPs in your organization with pagination. A subset of IdPs can be returned that match a supported filter expression or query.

## Create Identity Provider

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps`

Adds a new IdP to your organization.

## List Keys

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/credentials/keys`

Enumerates IdP key credentials.

## Create X 509 Certificate Public Key

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps/credentials/keys`

Adds a new X.509 certificate credential to the IdP key store.

## Get Key

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/credentials/keys/{keyId}`

Gets a specific IdP Key Credential by \`kid\`

## Delete Key

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/idps/credentials/keys/{keyId}`

Deletes a specific IdP Key Credential by \`kid\` if it is not currently being used by an Active or Inactive IdP.

## Get Identity Provider

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/{idpId}`

Fetches an IdP by \`id\`.

## Update Identity Provider

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/idps/{idpId}`

Updates the configuration for an IdP.

## Delete Identity Provider

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/idps/{idpId}`

Removes an IdP from your organization.

## List Certificate Signing Requests For IDP

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/csrs`

Enumerates Certificate Signing Requests for an IdP

## Generate Certificate Signing Request For IDP

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/csrs`

Generates a new key pair and returns a Certificate Signing Request for it.

## Get CSR For Identity Provider

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/csrs/{csrId}`

Gets a specific Certificate Signing Request model by id

## Revoke CSR For Identity Provider

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/csrs/{csrId}`

Revoke a Certificate Signing Request and delete the key pair from the IdP

## Update CSR

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/csrs/{csrId}/lifecycle/publish`

Update the Certificate Signing Request with a signed X.509 certificate and add it into the signing key credentials for the IdP.

## List Signing Key Credentials For IDP

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/keys`

Enumerates signing key credentials for an IdP

## Generate New IDP Signing Key Credential

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/keys/generate`

Generates a new X.509 certificate for an IdP signing key credential to be used for signing assertions sent to the IdP

## Get Signing Key Credential For IDP

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/keys/{keyId}`

Gets a specific IdP Key Credential by \`kid\`

## Clone Signing Key Credential For IDP

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps/{idpId}/credentials/keys/{keyId}/clone`

Clones a X.509 certificate for an IdP signing key credential from a source IdP to target IdP

## Activate Identity Provider

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps/{idpId}/lifecycle/activate`

Activates an inactive IdP.

## Deactivate Identity Provider

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps/{idpId}/lifecycle/deactivate`

Deactivates an active IdP.

## Find Users

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/{idpId}/users`

Find all the users linked to an identity provider

## Get Identity Provider Application User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/{idpId}/users/{userId}`

Fetches a linked IdP user by ID

## Link A User To A Social IDP Without A Transaction

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/idps/{idpId}/users/{userId}`

Links an Okta user to an existing Social Identity Provider. This does not support the SAML2 Identity Provider Type

## Unlink User From IDP

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/idps/{idpId}/users/{userId}`

Removes the link between the Okta user and the IdP user.

## Social Authentication Token Operation

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/idps/{idpId}/users/{userId}/credentials/tokens`

Fetches the tokens minted by the Social Authentication Provider when the user authenticates with Okta via Social Auth.

### Inlinehook

## List Inline Hooks

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/inlineHooks`

Description coming soon...

## Create Inline Hook

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/inlineHooks`

Description coming soon...

## Get Inline Hook

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/inlineHooks/{inlineHookId}`

Gets an inline hook by ID

## Update Inline Hook

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/inlineHooks/{inlineHookId}`

Updates an inline hook by ID

## Delete Inline Hook

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/inlineHooks/{inlineHookId}`

Deletes the Inline Hook matching the provided id. Once deleted, the Inline Hook is unrecoverable. As a safety precaution, only Inline Hooks with a status of INACTIVE are eligible for deletion.

## Execute Inline Hook

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/inlineHooks/{inlineHookId}/execute`

Executes the Inline Hook matching the provided inlineHookId using the request body as the input. This will send the provided data through the Channel and return a response if it matches the correct data contract. This execution endpoint should only be used for testing purposes.

## Activate Inline Hook

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/inlineHooks/{inlineHookId}/lifecycle/activate`

Activates the Inline Hook matching the provided id

## Deactivate Inline Hook

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate`

Deactivates the Inline Hook matching the provided id

### Linkedobject

## List Linked Object Definitions

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/meta/schemas/user/linkedObjects`

Description coming soon...

## Create Linked Object Definition

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/meta/schemas/user/linkedObjects`

Description coming soon...

## Get Linked Object Definition

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/meta/schemas/user/linkedObjects/{linkedObjectName}`

Description coming soon...

## Delete Linked Object Definition

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/meta/schemas/user/linkedObjects/{linkedObjectName}`

Description coming soon...

### Log

## Get Org System Log

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/logs`

The Okta System Log API provides read access to your organization’s system log. This API provides more functionality than the Events API

### Networkzone

## List Network Zones

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/zones`

Enumerates network zones added to your organization with pagination. A subset of zones can be returned that match a supported filter expression or query.

## Create Network Zone

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/zones`

Adds a new network zone to your Okta organization.

## Get Network Zone

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/zones/{zoneId}`

Fetches a network zone from your Okta organization by \`id\`.

## Update Network Zone

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/zones/{zoneId}`

Updates a network zone in your organization.

## Delete Network Zone

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/zones/{zoneId}`

Removes network zone.

## Activate Network Zone

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/zones/{zoneId}/lifecycle/activate`

Description coming soon...

## Deactivate Network Zone

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/zones/{zoneId}/lifecycle/deactivate`

Deactivates a network zone.

### Org

## Get Org Settings

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/org`

Get settings of your organization.

## Update Org Setting

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/org`

Update settings of your organization.

## Partial Update Org Setting

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/org`

Partial update settings of your organization.

## Get Org Contact Types

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/org/contacts`

Gets Contact Types of your organization.

## Get Org Contact User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/org/contacts/{contactType}`

Retrieves the URL of the User associated with the specified Contact Type.

## Update Org Contact User

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/org/contacts/{contactType}`

Updates the User associated with the specified Contact Type.

## Get Org Preferences

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/org/preferences`

Gets preferences of your organization.

## Get Okta Support Settings

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/org/privacy/oktaSupport`

Gets Okta Support Settings of your organization.

## Extend Okta Support

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/org/privacy/oktaSupport/extend`

Extends the length of time that Okta Support can access your org by 24 hours. This means that 24 hours are added to the remaining access time.

## Grant Okta Support

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/org/privacy/oktaSupport/grant`

Enables you to temporarily allow Okta Support to access your org as an administrator for eight hours.

## Extend Okta Support

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/org/privacy/oktaSupport/revoke`

Revokes Okta Support access to your organization.

### Policy

## List Policies

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/policies`

Gets all policies with the specified type.

## Create Policy

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/policies`

Creates a policy.

## Get Policy

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/policies/{policyId}`

Gets a policy.

## Update Policy

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/policies/{policyId}`

Updates a policy.

## Delete Policy

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/policies/{policyId}`

Removes a policy.

## Activate Policy

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/policies/{policyId}/lifecycle/activate`

Activates a policy.

## Deactivate Policy

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/policies/{policyId}/lifecycle/deactivate`

Deactivates a policy.

## List Policy Rules

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/policies/{policyId}/rules`

Enumerates all policy rules.

## Create Policy Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/policies/{policyId}/rules`

Creates a policy rule.

## Get Policy Rule

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/policies/{policyId}/rules/{ruleId}`

Gets a policy rule.

## Update Policy Rule

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/policies/{policyId}/rules/{ruleId}`

Updates a policy rule.

## Delete Policy Rule

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/policies/{policyId}/rules/{ruleId}`

Removes a policy rule.

## Activate Policy Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/activate`

Activates a policy rule.

## Deactivate Policy Rule

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate`

Deactivates a policy rule.

### Profilemapping

## List Profile Mappings

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/mappings`

Enumerates Profile Mappings in your organization with pagination.

## Get Profile Mapping

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/mappings/{mappingId}`

Fetches a single Profile Mapping referenced by its ID.

## Update Profile Mapping

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/mappings/{mappingId}`

Updates an existing Profile Mapping by adding, updating, or removing one or many Property Mappings.

### Subscription

## List All Subscriptions Of A Custom Role

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/roles/{roleTypeOrRoleId}/subscriptions`

When roleType List all subscriptions of a Role. Else when roleId List subscriptions of a Custom Role

## Get Subscriptions Of A Custom Role By Specific Notification Type

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}`

When roleType Get subscriptions of a Role with a specific notification type. Else when roleId Get subscription of a Custom Role with a specific notification type.

## Subscribe A Custom Role To A Specific Notification Type

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/subscribe`

When roleType Subscribes a Role to a specific notification type. When you change the subscription status of a Role, it overrides the subscription of any individual user of that Role. Else when roleId Subscribes a Custom Role to a specific notification type. When you change the subscription status of a Custom Role, it overrides the subscription of any individual user of that Custom Role.

## Unsubscribe A Custom Role From A Specific Notification Type

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/unsubscribe`

When roleType Unsubscribes a Role from a specific notification type. When you change the subscription status of a Role, it overrides the subscription of any individual user of that Role. Else when roleId Unsubscribes a Custom Role from a specific notification type. When you change the subscription status of a Custom Role, it overrides the subscription of any individual user of that Custom Role.

## Subscribe To A Specific Notification Type

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/subscriptions/{notificationType}/subscribe`

Subscribes a User to a specific notification type. Only the current User can subscribe to a specific notification type. An AccessDeniedException message is sent if requests are made from other users.

## Unsubscribe From A Specific Notification Type

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/subscriptions/{notificationType}/unsubscribe`

Unsubscribes a User from a specific notification type. Only the current User can unsubscribe from a specific notification type. An AccessDeniedException message is sent if requests are made from other users.

### Template

## List SMS Templates

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/templates/sms`

Enumerates custom SMS templates in your organization. A subset of templates can be returned that match a template type.

## Create SMS Template

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/templates/sms`

Adds a new custom SMS template to your organization.

## Get SMS Template

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/templates/sms/{templateId}`

Fetches a specific template by \`id\`

## Update SMS Template

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/templates/sms/{templateId}`

Updates the SMS template.

## Partial SMS Template Update

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/templates/sms/{templateId}`

Updates only some of the SMS template properties:

## Remove SMS Template

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/templates/sms/{templateId}`

Removes an SMS template.

### Threatinsight

## Get Current ThreatInsight Configuration

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/threats/configuration`

Description coming soon...

## Update ThreatInsight Configuration

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/threats/configuration`

Description coming soon...

### Trustedorigin

## List Trusted Origins

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/trustedOrigins`

Description coming soon...

## Create Trusted Origin

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/trustedOrigins`

Description coming soon...

## Get Trusted Origin

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/trustedOrigins/{trustedOriginId}`

Description coming soon...

## Update Trusted Origin

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/trustedOrigins/{trustedOriginId}`

Description coming soon...

## Delete Trusted Origin

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/trustedOrigins/{trustedOriginId}`

Description coming soon...

## Activate Origin

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/trustedOrigins/{trustedOriginId}/lifecycle/activate`

Description coming soon...

## Deactivate Trusted Origin

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/trustedOrigins/{trustedOriginId}/lifecycle/deactivate`

Description coming soon...

### User

## List Users

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users`

Lists users that do not have a status of 'DEPROVISIONED' (by default), up to the maximum (200 for most orgs), with pagination in most cases. A subset of users can be returned that match a supported filter expression or search criteria.

## Create User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users`

Creates a new user in your Okta organization with or without credentials.

## Set Linked Object For User

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/users/{associatedUserId}/linkedObjects/{primaryRelationshipName}/{primaryUserId}`

Description coming soon...

## Get User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}`

Fetches a user from your Okta organization.

## Update User

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/users/{userId}`

Update a user's profile and/or credentials using strict-update semantics.

## Partial Update User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}`

Update a user's profile or credentials with partial update semantics.

## Delete User

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}`

Deletes a user permanently. This operation can only be performed on users that have a \`DEPROVISIONED\` status. \*\*This action cannot be recovered!\*\*

## Get Assigned App Links

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/appLinks`

Fetches appLinks for all direct or indirect (via group membership) assigned applications.

## List User Clients

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/clients`

Lists all client resources for which the specified user has grants or tokens.

## List Grants For User And Client

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/clients/{clientId}/grants`

Lists all grants for a specified user and client

## Revoke Grants For User And Client

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/clients/{clientId}/grants`

Revokes all grants for the specified user and client

## List Refresh Tokens For User And Client

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/clients/{clientId}/tokens`

Lists all refresh tokens issued for the specified User and Client.

## Revoke Tokens For User And Client

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/clients/{clientId}/tokens`

Revokes all refresh tokens issued for the specified User and Client.

## Get Refresh Token For User And Client

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/clients/{clientId}/tokens/{tokenId}`

Gets a refresh token issued for the specified User and Client.

## Revoke Token For User And Client

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/clients/{clientId}/tokens/{tokenId}`

Revokes the specified refresh token.

## Change Password

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/credentials/change_password`

Changes a user's password by validating the user's current password. This operation can only be performed on users in \`STAGED\`, \`ACTIVE\`, \`PASSWORD\_EXPIRED\`, or \`RECOVERY\` status that have a valid password credential

## Change Recovery Question

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/credentials/change_recovery_question`

Changes a user's recovery question & answer credential by validating the user's current password. This operation can only be performed on users in \*\*STAGED\*\*, \*\*ACTIVE\*\* or \*\*RECOVERY\*\* \`status\` that have a valid password credential

## Forgot Password

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/credentials/forgot_password`

Description coming soon...

## List User Grants

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/grants`

Lists all grants for the specified user

## Revoke User Grants

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/grants`

Revokes all grants for a specified user

## Get User Grant

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/grants/{grantId}`

Gets a grant for the specified user

## Revoke User Grant

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/grants/{grantId}`

Revokes one grant for a specified user

## Get Member Groups

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/groups`

Fetches the groups of which the user is a member.

## Listing IDPs for User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/idps`

Lists the IdPs associated with the user.

## Activate User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/activate`

Activates a user. This operation can only be performed on users with a \`STAGED\` status. Activation of a user is an asynchronous operation. The user will have the \`transitioningToStatus\` property with a value of \`ACTIVE\` during activation to indicate that the user hasn't completed the asynchronous operation. The user will have a status of \`ACTIVE\` when the activation process is complete.

## Deactivate User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/deactivate`

Deactivates a user. This operation can only be performed on users that do not have a \`DEPROVISIONED\` status. While the asynchronous operation (triggered by HTTP header \`Prefer: respond-async\`) is proceeding the user's \`transitioningToStatus\` property is \`DEPROVISIONED\`. The user's status is \`DEPROVISIONED\` when the deactivation process is complete.

## Expire Password

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/expire_password`

This operation transitions the user to the status of \`PASSWORD\_EXPIRED\` so that the user is required to change their password at their next login.

## Reactivate User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/reactivate`

Reactivates a user. This operation can only be performed on users with a \`PROVISIONED\` status. This operation restarts the activation workflow if for some reason the user activation was not completed when using the activationToken from \[Activate User]\(#activate-user).

## Reset Factors

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/reset_factors`

This operation resets all factors for the specified user. All MFA factor enrollments returned to the unenrolled state. The user's status remains ACTIVE. This link is present only if the user is currently enrolled in one or more MFA factors.

## Reset Password

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/reset_password`

Generates a one-time token (OTT) that can be used to reset a user's password. The OTT link can be automatically emailed to the user or returned to the API caller and distributed using a custom flow.

## Suspend User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/suspend`

Suspends a user. This operation can only be performed on users with an \`ACTIVE\` status. The user will have a status of \`SUSPENDED\` when the process is complete.

## Unlock User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/unlock`

Unlocks a user with a \`LOCKED\_OUT\` status and returns them to \`ACTIVE\` status. Users will be able to login with their current password.

## Unsuspend User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/lifecycle/unsuspend`

Unsuspends a user and returns them to the \`ACTIVE\` state. This operation can only be performed on users that have a \`SUSPENDED\` status.

## Get Linked Objects For User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/linkedObjects/{relationshipName}`

Get linked objects for a user, relationshipName can be a primary or associated relationship name

## Remove Linked Object For User

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/linkedObjects/{relationshipName}`

Delete linked objects for a user, relationshipName can be ONLY a primary relationship name

## List Assigned Roles For User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/roles`

Lists all roles assigned to a user.

## Assign Role To User

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/roles`

Assigns a role to a user.

## Get User Role

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}`

Gets role that is assigne to user.

## Remove Role From User

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}`

Unassigns a role from a user.

## List Application Targets For Application Administrator Role For User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps`

Lists all App targets for an \`APP\_ADMIN\` Role assigned to a User. This methods return list may include full Applications or Instances. The response for an instance will have an \`ID\` value, while Application will not have an ID.

## Add All Apps As Target To Role

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps`

Description coming soon...

## Add Application Target To Admin Role For User

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}`

Description coming soon...

## Remove Application Target From Application Administrator Role For User

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}`

Description coming soon...

## Add App Instance Target To App Administrator Role Given To A User

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId}`

Description coming soon...

## Remove App Instance Target To App Administrator Role Given To A User

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId}`

Description coming soon...

## List Group Targets For Role

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/groups`

Description coming soon...

## Add Group Target To Role

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/groups/{groupId}`

Description coming soon...

## Remove Group Target From Role

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/roles/{roleId}/targets/groups/{groupId}`

Description coming soon...

## Clear User Sessions

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/sessions`

Removes all active identity provider sessions. This forces the user to authenticate on the next operation. Optionally revokes OpenID Connect and OAuth refresh and access tokens issued to the user.

## List Subscriptions Of A User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/subscriptions`

List subscriptions of a User. Only lists subscriptions for current user. An AccessDeniedException message is sent if requests are made from other users.

## Get The Subscription Of A User With A Specific Notification Type

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/subscriptions/{notificationType}`

Get the subscriptions of a User with a specific notification type. Only gets subscriptions for current user. An AccessDeniedException message is sent if requests are made from other users.

### Userfactor

## List Factors

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/factors`

Enumerates all the enrolled factors for the specified user

## Enroll Factor

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/factors`

Enrolls a user with a supported factor.

## List Supported Factors

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/factors/catalog`

Enumerates all the supported factors that can be enrolled for the specified user

## List Supported Security Questions

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/factors/questions`

Enumerate security questions for a user's \`question\` factor

## Get Factor

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/factors/{factorId}`

Fetches a factor for the specified user

## Delete Factor

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/users/{userId}/factors/{factorId}`

Unenrolls an existing factor for the specified user, allowing the user to enroll a new factor.

## Activate Factor

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/factors/{factorId}/lifecycle/activate`

The \`sms\` and \`token:software:totp\` factor types require activation to complete the enrollment process.

## Get Factor Transaction Status

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/users/{userId}/factors/{factorId}/transactions/{transactionId}`

Polls factors verification transaction for status.

## Verify MFA Factor

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/users/{userId}/factors/{factorId}/verify`

Verifies an OTP for a \`token\` or \`token:hardware\` factor

### Userschema

## Get Application Default User Schema

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/meta/schemas/apps/{appInstanceId}/default`

Description coming soon...

## Update Application User Profile

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/meta/schemas/apps/{appInstanceId}/default`

Description coming soon...

## Get Schema For User

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/meta/schemas/user/{schemaId}`

Description coming soon...

## Update User Profile

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/meta/schemas/user/{schemaId}`

Partial updates on the User Profile properties of the user schema.

### Usertype

## List User Types

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/meta/types/user`

Fetches all User Types in your org

## Create User Type

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/meta/types/user`

Creates a new User Type. A default User Type is automatically created along with your org, and you may add another 9 User Types for a maximum of 10.

## Get User Type

<mark style="color:blue;">`GET`</mark> `<example>.okta.com/api/v1/meta/types/user/{typeId}`

Fetches a User Type by ID. The special identifier \`default\` may be used to fetch the default User Type.

## Replace User Type

<mark style="color:orange;">`PUT`</mark> `<example>.okta.com/api/v1/meta/types/user/{typeId}`

Replace an existing User Type

## Update User Type

<mark style="color:green;">`POST`</mark> `<example>.okta.com/api/v1/meta/types/user/{typeId}`

Updates an existing User Type

## Delete User Type

<mark style="color:red;">`DELETE`</mark> `<example>.okta.com/api/v1/meta/types/user/{typeId}`

Deletes a User Type permanently. This operation is not permitted for the default type, nor for any User Type that has existing users
