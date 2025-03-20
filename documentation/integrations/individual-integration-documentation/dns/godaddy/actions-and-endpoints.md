# Actions & Endpoints

## Actions & Endpoints

### Introduction

The Godaddy Integration with Rewst delivers a robust set of actions and endpoints for interacting with Godaddy. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Godaddy Integration:

* **Actions**
* **Certificates**
* **Domains**
* **Generic Request**
* **Notifications**
* **Shoppers**

### Actions

#### Actions

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/actions" method="get" summary="List Domain Actions" %}
{% swagger-description %}
This endpoint allows you to list the actions performed on a specific domain for a customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/actions/{type}" method="get" summary="Get Recent Domain Action" %}
{% swagger-description %}
Get the recent action performed on a domain. Requires the customer ID, domain name, and the type of action to retrieve
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/actions/{type}" method="delete" summary="Cancel User Action" %}
{% swagger-description %}
Cancel a specific user action for a domain in GoDaddy. Use the path parameters to specify the customer ID, domain, and the type of action to cancel
{% endswagger-description %}
{% endswagger %}

#### Certificates

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/certificates" method="get" summary="List Certificates" %}
{% swagger-description %}
Retrieve a customer's certificate list.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/certificates/{certificateId}" method="get" summary="Get Certificate Details" %}
{% swagger-description %}
This method checks and retrieves certificate order status and details. Remember, shopperId is a 10-digit number (e.g., 1234567890), while customerId is a UUIDv4 (e.g., 295e3bc3-b3b9-4d95-aae5-ede41a994d13).
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/certificates/{certificateId}/domainVerifications" method="get" summary="Get Domain Verification Status" %}
{% swagger-description %}
Retrieve the domain verification status for a certificate request using the method. shopperId is a 10-digit number, while customerId is a UUIDv4.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/certificates/{certificateId}/domainVerifications/{domain}" method="get" summary="Get Domain Details" %}
{% swagger-description %}
Get domain information, including verification and CAA details. Note: shopperId (max 10 digits) is different from customerId (UUIDv4 format).
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/certificates/acme/externalAccountBinding" method="get" summary="Get External Account Binding" %}
{% swagger-description %}
Retrieve a key identifier and HMAC key for ACME EAB. Use them with a compatible client (like CertBot) to automate DV SSL certificate issuance and deployment.
{% endswagger-description %}
{% endswagger %}

#### Domains

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}" method="get" summary="Get Customer Domain Details" %}
{% swagger-description %}
Get domain details for a specific customer and domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/privacy/forwarding" method="get" summary="Get Domain Privacy Settings" %}
{% swagger-description %}
Retrieve the privacy settings for a specific domain owned by a customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/privacy/forwarding" method="patch" summary="Update Domain Privacy" %}
{% swagger-description %}
Update the privacy forwarding settings for a specific domain owned by a customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/redeem" method="post" summary="Purchase Domain Redemption" %}
{% swagger-description %}
Purchase domain redemption for a specific customer and domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/renew" method="post" summary="Renew Domain" %}
{% swagger-description %}
Renew Domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/transfer" method="post" summary="Start Transfer Process" %}
{% swagger-description %}
Starts the transfer process for a domain by sending a request to the GoDaddy API
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/transferInAccept" method="post" summary="Accept Transfer" %}
{% swagger-description %}
Accepts a transfer request for a domain belonging to a customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/transferInCancel" method="post" summary="Cancel Transfer" %}
{% swagger-description %}
Cancel the transfer of a domain for a customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/transferInRestart" method="post" summary="Restart Transfer" %}
{% swagger-description %}
Restart the transfer of a domain for a customer. Requires the customer ID and domain as path parameters
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/transferInRetry" method="post" summary="Retry Domain Transfer" %}
{% swagger-description %}
Retry a domain transfer for a specific customer and domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/transferOut" method="post" summary="Initiate Domain Transfer Out" %}
{% swagger-description %}
Initiate Domain Transfer Out
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/transferOutAccept" method="post" summary="Accept Transfer Out" %}
{% swagger-description %}
Accept transfer out for a domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/{domain}/transferOutReject" method="post" summary="Reject Transfer Out" %}
{% swagger-description %}
Reject Transfer Out
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/forwards/{fqdn}" method="get" summary="Get Domain Forwarding" %}
{% swagger-description %}
Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (\*ex:\* 1234567890) whereas customerId is a UUIDv4 (\*ex:\* 295e3bc3-b3b9-4d95-aae5-ede41a994d13)
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/forwards/{fqdn}" method="put" summary="Update Forwarding Information" %}
{% swagger-description %}
Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (\*ex:\* 1234567890) whereas customerId is a UUIDv4 (\*ex:\* 295e3bc3-b3b9-4d95-aae5-ede41a994d13)
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/forwards/{fqdn}" method="post" summary="Create Forwarding Configuration" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/forwards/{fqdn}" method="delete" summary="Delete Forwarding Cancellation Request" %}
{% swagger-description %}
Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (\*ex:\* 1234567890) whereas customerId is a UUIDv4 (\*ex:\* 295e3bc3-b3b9-4d95-aae5-ede41a994d13)
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/register" method="post" summary="Create Domain Registration" %}
{% swagger-description %}
Create a domain registration for a customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/register/schema/{tld}" method="get" summary="Get Domain Schema" %}
{% swagger-description %}
Get the schema for registering a domain with GoDaddy. Requires the \`customerId\` and \`tld\` path parameters
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/register/validate" method="post" summary="Validate Domain Request" %}
{% swagger-description %}
Validate a domain registration request for a specific customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/domains/maintenances" method="get" summary="List Upcoming Maintenances" %}
{% swagger-description %}
Get a list of upcoming maintenance events for domains. You can filter the list by status, modified date, start date, and limit the number of results
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/domains/maintenances/{maintenanceId}" method="get" summary="Get System Maintenance" %}
{% swagger-description %}
Get system maintenance by maintenance ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates" method="post" summary="Create Certificate Order" %}
{% swagger-description %}
For PKI workflow, track certificate order creation through asynchronous methods: 1) Polling at '/v1/certificates/{certificateId}/actions', or 2) WebHook callback at '/v1/certificates/{certificateId}/callback'.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/validate" method="post" summary="Validate Certificate Order" %}
{% swagger-description %}
Validate a certificate order by sending a request to the /v1/certificates/validate endpoint with the specified JSON body and headers
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}" method="get" summary="Get Certificate Details" %}
{% swagger-description %}
Once the certificate order has been created, this method can be used to check the status of the certificate. This method can also be used to retrieve details of the certificate.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/actions" method="get" summary="List Certificate Actions" %}
{% swagger-description %}
This method is used to retrieve all stateful actions relating to a certificate lifecycle.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/email/{emailId}/resend" method="post" summary="Resend Email" %}
{% swagger-description %}
This method can be used to resend emails by providing the certificate id and the email id
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/email/resend/{emailAddress}" method="post" summary="Add Alternate Email Address" %}
{% swagger-description %}
This method adds an alternate email address to a certificate order and re-sends all existing request emails to that address.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/email/{emailId}/resend/{emailAddress}" method="post" summary="Resend Email By Certificate Address" %}
{% swagger-description %}
This method can be used to resend emails by providing the certificate id, the email id, and the recipient email address
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/email/history" method="get" summary="Get Email History" %}
{% swagger-description %}
This method can be used to retrieve all emails sent for a certificate.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/callback" method="get" summary="Get Callback URL" %}
{% swagger-description %}
This method is used to retrieve the registered callback url for a certificate.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/callback" method="put" summary="Replace Certificate Callback" %}
{% swagger-description %}
Register/replace URL for stateful certificate lifecycle callbacks. Webhook style pattern receives POST requests with JSON body defined in CertificateAction model. Only one callback URL allowed per certificateId, replacing previous registration.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/callback" method="delete" summary="Delete System Callback" %}
{% swagger-description %}
Unregister the callback for a particular certificate.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/cancel" method="post" summary="Cancel Certificate Order" %}
{% swagger-description %}
Use the cancel call to cancel a pending certificate order.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/download" method="get" summary="Download Certificate" %}
{% swagger-description %}
Download a certificate by providing the certificate ID as a path parameter
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/reissue" method="post" summary="Reissue Certificate" %}
{% swagger-description %}
Re-keying updates keys. Reissuing changes domains on a certificate. New validated certificate with updated names issued. Unlimited reissues possible. Note: Unrelated names delay validation. Call before pending reissue replaces prior request.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/renew" method="post" summary="Renew Certificate" %}
{% swagger-description %}
Renew certificates for extended validity. Edit original order. Approved renewal extends validity. Include subject alt names; new names may delay validation if not sharing base domain.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/revoke" method="post" summary="Revoke Certificate" %}
{% swagger-description %}
Use revoke call to revoke an active certificate, if the certificate has not been issued a 404 response will be returned.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/siteSeal" method="get" summary="Get Site Seal" %}
{% swagger-description %}
Retrieve SSL certificate site seal information, a clickable graphic displaying certificate details, linked via a site seal token on the reseller's website for faster customer page loading.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/certificates/{certificateId}/verifyDomainControl" method="post" summary="Check Domain Control" %}
{% swagger-description %}
Domain control verifies certificate order domain, aiding reseller domain management. Speeds up verification.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/certificates" method="get" summary="Get Certificate Details By Entitlement" %}
{% swagger-description %}
Once the certificate order has been created, this method can be used to check the status of the certificate. This method can also be used to retrieve details of the certificates associated to an entitlement.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/certificates/download" method="get" summary="Get Certificate By Entitlement" %}
{% swagger-description %}
Get certificate by entitlement ID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains" method="get" summary="List Domains" %}
{% swagger-description %}
Retrieve a list of domains for a shopper. Supports filtering by statuses, status groups, limit, marker, includes, and modified date
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/agreements" method="get" summary="Get Legal Agreements" %}
{% swagger-description %}
Get legal agreements for a list of domain names and whether privacy and transfer options are available
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/available" method="get" summary="Check Domain Availability" %}
{% swagger-description %}
Check the availability of a domain. Returns true if the domain is available, false otherwise. Takes domain, checkType, and forTransfer as query parameters
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/available" method="post" summary="Check Domain Status" %}
{% swagger-description %}
Checks the availability of a domain on GoDaddy. Returns information about the availability status of the specified domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/contacts/validate" method="post" summary="Validate Contact Domains" %}
{% swagger-description %}
All contacts specified in request will be validated against all domains specified in "domains". As an alternative, you can also pass in tlds, with the exception of \`uk\`, which requires full domain names
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/purchase" method="post" summary="Create Domain Registration" %}
{% swagger-description %}
Create a new domain registration by making a POST request to the /v1/domains/purchase endpoint with the required parameters and headers in the JSON body
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/purchase/schema/{tld}" method="get" summary="Get Domain Schema By TLD" %}
{% swagger-description %}
Get the schema for purchasing a domain. The schema includes information about the required and optional parameters for purchasing a domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/purchase/validate" method="post" summary="Validate Domain Purchase" %}
{% swagger-description %}
Validate domain purchase by sending a request to the /v1/domains/purchase/validate endpoint
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/suggest" method="get" summary="Suggest Domain Names" %}
{% swagger-description %}
This endpoint allows you to request a list of suggested domain names based on specified parameters
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/tlds" method="get" summary="List Top Level Domains" %}
{% swagger-description %}
List all top level domains available for registration on GoDaddy
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}" method="get" summary="Get Domain Details By Name" %}
{% swagger-description %}
Get the details of a domain by providing the domain name as a path parameter
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}" method="delete" summary="Cancel Domain Purchase" %}
{% swagger-description %}
Cancel a domain purchase
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}" method="patch" summary="Update Domain Details" %}
{% swagger-description %}
Update the details of a domain in the GoDaddy API
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/contacts" method="patch" summary="Update Domain" %}
{% swagger-description %}
Update the contact information for a domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/privacy" method="delete" summary="Create Privacy Cancellation Request" %}
{% swagger-description %}
Create a cancellation request for privacy protection on a domain. This endpoint requires the domain name as a path parameter
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/privacy/purchase" method="post" summary="Purchase Domain Privacy" %}
{% swagger-description %}
Purchase domain privacy for a specific domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/records" method="put" summary="Replace DNS Records By Domain" %}
{% swagger-description %}
This endpoint replaces the DNS records for a specific domain on the GoDaddy platform
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/records" method="patch" summary="Add DNS Records" %}
{% swagger-description %}
Add DNS records for a domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/records/{type}/{name}" method="get" summary="Retrieve DNS Records" %}
{% swagger-description %}
Retrieve DNS Records for a specific domain and DNS record type using the GoDaddy API
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/records/{type}/{name}" method="put" summary="Replace DNS Records By Record Type" %}
{% swagger-description %}
Replace DNS Records for a specified domain and record type and name
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/records/{type}/{name}" method="delete" summary="Delete DNS Records" %}
{% swagger-description %}
Delete DNS records for a specific domain and record type
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/records/{type}" method="put" summary="Replace DNS Records" %}
{% swagger-description %}
Replace DNS Records for a specific domain and DNS record type
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/renew" method="post" summary="Renew Domain Name" %}
{% swagger-description %}
Renew domain endpoint
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/transfer" method="post" summary="Start Transfer Process By Domain" %}
{% swagger-description %}
Starts the transfer process for a domain. Path parameter 'domain' is required.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/domains/{domain}/verifyRegistrantEmail" method="post" summary="Resend Email Verification" %}
{% swagger-description %}
Re-sends the email verification for a domain registration
{% endswagger-description %}
{% endswagger %}

#### Generic Request

{% swagger baseUrl="https://api.godaddy.com" path="/<url_path>" method="get/put/post/delete" summary="GoDaddy API Request" %}
{% swagger-description %}
Generic action for making authenticated requests against the GoDaddy API
{% endswagger-description %}
{% endswagger %}

#### Notifications

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/notifications" method="get" summary="Get Domain Notification" %}
{% swagger-description %}
Retrieve domain notification for a specific customer
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/notifications/optIn" method="get" summary="List Notification Types" %}
{% swagger-description %}
Retrieve a list of notification types for a customer's domains
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/notifications/optIn" method="put" summary="Create Opt-In Notifications" %}
{% swagger-description %}
Create opt-in notifications for a customer's domain. This endpoint requires the customerId path parameter and the types query parameter to be provided
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/notifications/schemas/{type}" method="get" summary="Get Notification Schema" %}
{% swagger-description %}
Get the schema for a specific notification type for a customer's domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v2/customers/{customerId}/domains/notifications/{notificationId}/acknowledge" method="post" summary="Acknowledge Domain Notification" %}
{% swagger-description %}
Acknowledge a domain notification by providing the customer ID and notification ID
{% endswagger-description %}
{% endswagger %}

#### Shoppers

{% swagger baseUrl="https://api.godaddy.com" path="/v1/shoppers/subaccount" method="post" summary="Create Sub-account" %}
{% swagger-description %}
Create a subaccount for a shopper on GoDaddy
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/shoppers/{shopperId}" method="get" summary="Get Shopper Details" %}
{% swagger-description %}
Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (\*ex:\* 1234567890) whereas customerId is a UUIDv4 (\*ex:\* 295e3bc3-b3b9-4d95-aae5-ede41a994d13)
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/shoppers/{shopperId}" method="post" summary="Update Shopper Details" %}
{% swagger-description %}
Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (\*ex:\* 1234567890) whereas customerId is a UUIDv4 (\*ex:\* 295e3bc3-b3b9-4d95-aae5-ede41a994d13)
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/shoppers/{shopperId}" method="delete" summary="Delete Shopper Profile" %}
{% swagger-description %}
Notes: Shopper deletion is not supported in OTE. shopperId is not the same as customerId.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/shoppers/{shopperId}/status" method="get" summary="Get Shopper Status" %}
{% swagger-description %}
Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (\*ex:\* 1234567890) whereas customerId is a UUIDv4 (\*ex:\* 295e3bc3-b3b9-4d95-aae5-ede41a994d13)
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.godaddy.com" path="/v1/shoppers/{shopperId}/factors/password" method="put" summary="Set Sub-account Password" %}
{% swagger-description %}
API Resellers can set subaccount passwords. Please note that the shopperId is a 10-digit number (e.g., 1234567890) while the customerId is a UUIDv4 (e.g., 295e3bc3-b3b9-4d95-aae5-ede41a994d13).
{% endswagger-description %}
{% endswagger %}
