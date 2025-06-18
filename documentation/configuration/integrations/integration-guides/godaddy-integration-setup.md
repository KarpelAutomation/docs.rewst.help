# GoDaddy integration

{% hint style="warning" %}
_Disclaimer: As of May 1st, 2024, access to GoDaddy API has been limited to accounts with 50 or more domains._
{% endhint %}

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the GoDaddy integration do?

Our GoDaddy integration enables automation of domain, DNS, and certificate management. Use the GoDaddy API within Rewst workflows to perform actions such as managing domains and certificates.

## Set up the GoDaddy integration

### Set up steps in GoDaddy&#x20;

1. Log in to your GoDaddy account.
2. Navigate to the [Developer Console](https://developer.godaddy.com/).
3. Click **API Keys**.
4.  Click **Create New App** or **Create New API Key**, depending on your particular interface.\
    \


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-05-01 at 4.17.40 PM.png" alt=""><figcaption></figcaption></figure>
5. Provide a name for your API client or app.
6. Choose the required API access permissions (Read, Write, etc.).
7. Click **Next**.
8. Copy the secret information displayed in the dialog and store it somewhere secure. Once you navigate away from the screen, you won't be able to view it again. This information is needed for further setup in Rewst.
9. Locate and copy your Seller Number in the dropdown menu under your account name, located at the top right corner.

{% hint style="success" %}
The seller number is referred to as "Customer #" in the dropdown menu under the user's account name located at the top right corner.

Input the API Key, Secret Key, and Seller Number values below.
{% endhint %}

## Set up steps in Rewst

1. Navigate to Configuration > Integrations in the left side menu of your Rewst platform.
2. Search for `GoDaddy` in the integrations page.
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from GoDaddy into its relevant field:
   1. **API Key**
   2. **API Secret**
   3. **Shopper ID** - remember, this is the '**Customer ID**' from GoDaddy
5. Optionally, choose if you would like to **Use Sandbox** from the drop-down selector.
6. Click **Save Configuration**.

{% hint style="info" %}
The GoDaddy integration does not require you to complete the organization mapping setup process.
{% endhint %}

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

For more comprehensive instructions, refer to [GoDaddy's Official Documentation Here](https://developer.godaddy.com/doc).

| Category            | Action                                 | Description                                                                                                                                                                                                                                          |
| ------------------- | -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Actions**         | List Domain Actions                    | This endpoint allows you to list the actions performed on a specific domain for a customer                                                                                                                                                           |
| **Actions**         | Get Recent Domain Action               | Get the recent action performed on a domain. Requires the customer ID, domain name, and the type of action to retrieve                                                                                                                               |
| **Actions**         | Cancel User Action                     | Cancel a specific user action for a domain in GoDaddy. Use the path parameters to specify the customer ID, domain, and the type of action to cancel                                                                                                  |
| **Certificates**    | List Certificates                      | Retrieve a customer's certificate list.                                                                                                                                                                                                              |
| **Certificates**    | Get Certificate Details                | This method checks and retrieves certificate order status and details. Remember, shopperId is a 10-digit number (e.g., 1234567890), while customerId is a UUIDv4 (e.g., 295e3bc3-b3b9-4d95-aae5-ede41a994d13).                                       |
| **Certificates**    | Get Domain Verification Status         | Retrieve the domain verification status for a certificate request using the method. shopperId is a 10-digit number, while customerId is a UUIDv4.                                                                                                    |
| **Certificates**    | Get Domain Details                     | Get domain information, including verification and CAA details. Note: shopperId (max 10 digits) is different from customerId (UUIDv4 format).                                                                                                        |
| **Certificates**    | Get External Account Binding           | Retrieve a key identifier and HMAC key for ACME EAB. Use them with a compatible client (like CertBot) to automate DV SSL certificate issuance and deployment.                                                                                        |
| **Domains**         | Get Customer Domain Details            | Get domain details for a specific customer and domain                                                                                                                                                                                                |
| **Domains**         | Get Domain Privacy Settings            | Retrieve the privacy settings for a specific domain owned by a customer                                                                                                                                                                              |
| **Domains**         | Update Domain Privacy                  | Update the privacy forwarding settings for a specific domain owned by a customer                                                                                                                                                                     |
| **Domains**         | Purchase Domain Redemption             | Purchase domain redemption for a specific customer and domain                                                                                                                                                                                        |
| **Domains**         | Renew Domain                           | Renew Domain                                                                                                                                                                                                                                         |
| **Domains**         | Start Transfer Process                 | Starts the transfer process for a domain by sending a request to the GoDaddy API                                                                                                                                                                     |
| **Domains**         | Accept Transfer                        | Accepts a transfer request for a domain belonging to a customer                                                                                                                                                                                      |
| **Domains**         | Cancel Transfer                        | Cancel the transfer of a domain for a customer                                                                                                                                                                                                       |
| **Domains**         | Restart Transfer                       | Restart the transfer of a domain for a customer. Requires the customer ID and domain as path parameters                                                                                                                                              |
| **Domains**         | Retry Domain Transfer                  | Retry a domain transfer for a specific customer and domain                                                                                                                                                                                           |
| **Domains**         | Initiate Domain Transfer Out           | Initiate Domain Transfer Out                                                                                                                                                                                                                         |
| **Domains**         | Accept Transfer Out                    | Accept transfer out for a domain                                                                                                                                                                                                                     |
| **Domains**         | Reject Transfer Out                    | Reject Transfer Out                                                                                                                                                                                                                                  |
| **Domains**         | Get Domain Forwarding                  | Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (_ex:_ 1234567890) whereas customerId is a UUIDv4 (_ex:_ 295e3bc3-b3b9-4d95-aae5-ede41a994d13)                                                          |
| **Domains**         | Update Forwarding Information          | Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (_ex:_ 1234567890) whereas customerId is a UUIDv4 (_ex:_ 295e3bc3-b3b9-4d95-aae5-ede41a994d13)                                                          |
| **Domains**         | Create Forwarding Configuration        | Description coming soon...                                                                                                                                                                                                                           |
| **Domains**         | Delete Forwarding Cancellation Request | Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (_ex:_ 1234567890) whereas customerId is a UUIDv4 (_ex:_ 295e3bc3-b3b9-4d95-aae5-ede41a994d13)                                                          |
| **Domains**         | Create Domain Registration             | Create a domain registration for a customer                                                                                                                                                                                                          |
| **Domains**         | Get Domain Schema                      | Get the schema for registering a domain with GoDaddy. Requires the `customerId` and `tld` path parameters                                                                                                                                            |
| **Domains**         | Validate Domain Request                | Validate a domain registration request for a specific customer                                                                                                                                                                                       |
| **Domains**         | List Upcoming Maintenances             | Get a list of upcoming maintenance events for domains. You can filter the list by status, modified date, start date, and limit the number of results                                                                                                 |
| **Domains**         | Get System Maintenance                 | Get system maintenance by maintenance ID                                                                                                                                                                                                             |
| **Domains**         | Create Certificate Order               | For PKI workflow, track certificate order creation through asynchronous methods: 1) Polling at '/v1/certificates/{certificateId}/actions', or 2) WebHook callback at '/v1/certificates/{certificateId}/callback'.                                    |
| **Domains**         | Validate Certificate Order             | Validate a certificate order by sending a request to the /v1/certificates/validate endpoint with the specified JSON body and headers                                                                                                                 |
| **Domains**         | Get Certificate Details                | Once the certificate order has been created, this method can be used to check the status of the certificate. This method can also be used to retrieve details of the certificate.                                                                    |
| **Domains**         | List Certificate Actions               | This method is used to retrieve all stateful actions relating to a certificate lifecycle.                                                                                                                                                            |
| **Domains**         | Resend Email                           | This method can be used to resend emails by providing the certificate id and the email id                                                                                                                                                            |
| **Domains**         | Add Alternate Email Address            | This method adds an alternate email address to a certificate order and re-sends all existing request emails to that address.                                                                                                                         |
| **Domains**         | Resend Email By Certificate Address    | This method can be used to resend emails by providing the certificate id, the email id, and the recipient email address                                                                                                                              |
| **Domains**         | Get Email History                      | This method can be used to retrieve all emails sent for a certificate.                                                                                                                                                                               |
| **Domains**         | Get Callback URL                       | This method is used to retrieve the registered callback url for a certificate.                                                                                                                                                                       |
| **Domains**         | Replace Certificate Callback           | Register/replace URL for stateful certificate lifecycle callbacks. Webhook style pattern receives POST requests with JSON body defined in CertificateAction model. Only one callback URL allowed per certificateId, replacing previous registration. |
| **Domains**         | Delete System Callback                 | Unregister the callback for a particular certificate.                                                                                                                                                                                                |
| **Domains**         | Cancel Certificate Order               | Use the cancel call to cancel a pending certificate order.                                                                                                                                                                                           |
| **Domains**         | Download Certificate                   | Download a certificate by providing the certificate ID as a path parameter                                                                                                                                                                           |
| **Domains**         | Reissue Certificate                    | Re-keying updates keys. Reissuing changes domains on a certificate. New validated certificate with updated names issued. Unlimited reissues possible. Note: Unrelated names delay validation. Call before pending reissue replaces prior request.    |
| **Domains**         | Renew Certificate                      | Renew certificates for extended validity. Edit original order. Approved renewal extends validity. Include subject alt names; new names may delay validation if not sharing base domain.                                                              |
| **Domains**         | Revoke Certificate                     | Use revoke call to revoke an active certificate, if the certificate has not been issued a 404 response will be returned.                                                                                                                             |
| **Domains**         | Get Site Seal                          | Retrieve SSL certificate site seal information, a clickable graphic displaying certificate details, linked via a site seal token on the reseller's website for faster customer page loading.                                                         |
| **Domains**         | Check Domain Control                   | Domain control verifies certificate order domain, aiding reseller domain management. Speeds up verification.                                                                                                                                         |
| **Domains**         | Get Certificate Details By Entitlement | Once the certificate order has been created, this method can be used to check the status of the certificate. This method can also be used to retrieve details of the certificates associated to an entitlement.                                      |
| **Domains**         | Get Certificate By Entitlement         | Get certificate by entitlement ID                                                                                                                                                                                                                    |
| **Domains**         | List Domains                           | Retrieve a list of domains for a shopper. Supports filtering by statuses, status groups, limit, marker, includes, and modified date                                                                                                                  |
| **Domains**         | Get Legal Agreements                   | Get legal agreements for a list of domain names and whether privacy and transfer options are available                                                                                                                                               |
| **Domains**         | Check Domain Availability              | Check the availability of a domain. Returns true if the domain is available, false otherwise. Takes domain, checkType, and forTransfer as query parameters                                                                                           |
| **Domains**         | Check Domain Status                    | Checks the availability of a domain on GoDaddy. Returns information about the availability status of the specified domain                                                                                                                            |
| **Domains**         | Validate Contact Domains               | All contacts specified in request will be validated against all domains specified in "domains". As an alternative, you can also pass in tlds, with the exception of `uk`, which requires full domain names                                           |
| **Domains**         | Create Domain Registration             | Create a new domain registration by making a POST request to the /v1/domains/purchase endpoint with the required parameters and headers in the JSON body                                                                                             |
| **Domains**         | Get Domain Schema By TLD               | Get the schema for purchasing a domain. The schema includes information about the required and optional parameters for purchasing a domain                                                                                                           |
| **Domains**         | Validate Domain Purchase               | Validate domain purchase by sending a request to the /v1/domains/purchase/validate endpoint                                                                                                                                                          |
| **Domains**         | Suggest Domain Names                   | This endpoint allows you to request a list of suggested domain names based on specified parameters                                                                                                                                                   |
| **Domains**         | List Top Level Domains                 | List all top level domains available for registration on GoDaddy                                                                                                                                                                                     |
| **Domains**         | Get Domain Details By Name             | Get the details of a domain by providing the domain name as a path parameter                                                                                                                                                                         |
| **Domains**         | Cancel Domain Purchase                 | Cancel a domain purchase                                                                                                                                                                                                                             |
| **Domains**         | Update Domain Details                  | Update the details of a domain in the GoDaddy API                                                                                                                                                                                                    |
| **Domains**         | Update Domain                          | Update the contact information for a domain                                                                                                                                                                                                          |
| **Domains**         | Create Privacy Cancellation Request    | Create a cancellation request for privacy protection on a domain. This endpoint requires the domain name as a path parameter                                                                                                                         |
| **Domains**         | Purchase Domain Privacy                | Purchase domain privacy for a specific domain                                                                                                                                                                                                        |
| **Domains**         | Replace DNS Records By Domain          | This endpoint replaces the DNS records for a specific domain on the GoDaddy platform                                                                                                                                                                 |
| **Domains**         | Add DNS Records                        | Add DNS records for a domain                                                                                                                                                                                                                         |
| **Domains**         | Retrieve DNS Records                   | Retrieve DNS Records for a specific domain and DNS record type using the GoDaddy API                                                                                                                                                                 |
| **Domains**         | Replace DNS Records By Record Type     | Replace DNS Records for a specified domain and record type and name                                                                                                                                                                                  |
| **Domains**         | Delete DNS Records                     | Delete DNS records for a specific domain and record type                                                                                                                                                                                             |
| **Domains**         | Replace DNS Records                    | Replace DNS Records for a specific domain and DNS record type                                                                                                                                                                                        |
| **Domains**         | Renew Domain Name                      | Renew domain endpoint                                                                                                                                                                                                                                |
| **Domains**         | Start Transfer Process By Domain       | Starts the transfer process for a domain. Path parameter 'domain' is required.                                                                                                                                                                       |
| **Domains**         | Resend Email Verification              | Re-sends the email verification for a domain registration                                                                                                                                                                                            |
| **Generic Request** | GoDaddy API Request                    | Generic action for making authenticated requests against the GoDaddy API                                                                                                                                                                             |
| **Notifications**   | Get Domain Notification                | Retrieve domain notification for a specific customer                                                                                                                                                                                                 |
| **Notifications**   | List Notification Types                | Retrieve a list of notification types for a customer's domains                                                                                                                                                                                       |
| **Notifications**   | Create Opt-In Notifications            | Create opt-in notifications for a customer's domain. This endpoint requires the customerId path parameter and the types query parameter to be provided                                                                                               |
| **Notifications**   | Get Notification Schema                | Get the schema for a specific notification type for a customer's domain                                                                                                                                                                              |
| **Notifications**   | Acknowledge Domain Notification        | Acknowledge a domain notification by providing the customer ID and notification ID                                                                                                                                                                   |
| **Shoppers**        | Create Sub-account                     | Create a subaccount for a shopper on GoDaddy                                                                                                                                                                                                         |
| **Shoppers**        | Get Shopper Details                    | Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (_ex:_ 1234567890) whereas customerId is a UUIDv4 (_ex:_ 295e3bc3-b3b9-4d95-aae5-ede41a994d13)                                                          |
| **Shoppers**        | Update Shopper Details                 | Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (_ex:_ 1234567890) whereas customerId is a UUIDv4 (_ex:_ 295e3bc3-b3b9-4d95-aae5-ede41a994d13)                                                          |
| **Shoppers**        | Delete Shopper Profile                 | Notes: Shopper deletion is not supported in OTE. shopperId is not the same as customerId.                                                                                                                                                            |
| **Shoppers**        | Get Shopper Status                     | Notes:shopperId is not the same as customerId. shopperId is a number of max length 10 digits (_ex:_ 1234567890) whereas customerId is a UUIDv4 (_ex:_ 295e3bc3-b3b9-4d95-aae5-ede41a994d13)                                                          |
| **Shoppers**        | Set Sub-account Password               | API Resellers can set subaccount passwords. Please note that the shopperId is a 10-digit number (e.g., 1234567890) while the customerId is a UUIDv4 (e.g., 295e3bc3-b3b9-4d95-aae5-ede41a994d13).                                                    |
