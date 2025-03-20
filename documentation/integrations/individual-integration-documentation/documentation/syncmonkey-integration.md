# SyncMonkey integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the SyncMonkey integration do?

Our SyncMonkey integration enables the automation of document processes and management.&#x20;

## Set up the SyncMonkey integration

### Set up steps in SyncMonkey

1. Log in to your SyncMonkey account.
2. Navigate to **Developer Space > API User Management**.
3. Click **Add New**.
4. Select the user, and **Save**.
5. Copy down your API key, which you'll need for your setup steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the SyncMonkey integration.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-02-26 at 11.54.36 AM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**:
   1. Enter the API Key you copied from SyncMonkey into the **API Key** field.
   2. Enter the secret API key used to authenticate with the API in the **Secret** field.
5. Click **Save Configuration**.\


## Test the Integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.\


{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## SyncMonkey actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

SyncMonkey's complete documentation can be found here.

| Category                 | Action                        | Description                                                                                          |
| ------------------------ | ----------------------------- | ---------------------------------------------------------------------------------------------------- |
| **Companies**            | Create Company                | Creates a new company to the tenant                                                                  |
| **Companies**            | Delete Company                | Deletes a company                                                                                    |
| **Companies**            | Get Company                   | Retrieves a single company                                                                           |
| **Companies**            | List Companies                | Retrieves a list of companies accessible by the API User                                             |
| **Companies**            | Update Company                | Updates a company                                                                                    |
| **Device Credentials**   | Create Device Credential      | Creates a new credential to the specified device.                                                    |
| **Device Credentials**   | Delete Device Credential      | Deletes a credential associated with a specific device.                                              |
| **Device Credentials**   | Get Device Credential         | Retrieves a single credential associated with a specific device.                                     |
| **Device Credentials**   | List Device Credentials       | Retrieves a list of credentials associated with the specified device.                                |
| **Device Credentials**   | Update Device Credential      | Updates a credential associated with a specific device.                                              |
| **Devices**              | Create Device                 | Adds a new device to the specified company.                                                          |
| **Devices**              | Delete Device                 | Deletes a device.                                                                                    |
| **Devices**              | Get Device                    | Retrieves a single device.                                                                           |
| **Devices**              | List Devices                  | Retrieves a list of devices belonging to the specified company.                                      |
| **Devices**              | Update Device                 | Updates a device.                                                                                    |
| **Documents**            | Create Document               | Creates a new document                                                                               |
| **Documents**            | Delete Document               | Deletes a document                                                                                   |
| **Documents**            | Get Attachment by Document ID | Retrieves the attachment for a document                                                              |
| **Documents**            | Get Document                  | Retrieves a single document.                                                                         |
| **Documents**            | List Documents                | Retrieves a list of documents belonging to the specified company                                     |
| **Documents**            | Update Document               | Updates a document                                                                                   |
| **Domains**              | Create Domain                 | Create a domain name for the company, performing a WHOIS lookup for additional details.              |
| **Domains**              | Delete Domain                 | Deletes a domain.                                                                                    |
| **Domains**              | Get Domain                    | Retrieves a single domain and full details.                                                          |
| **Domains**              | List Domains                  | Retrieves a list of domains within the specified company.                                            |
| **Domains**              | Update Domain                 | Updates a domain.                                                                                    |
| **Employee Credentials** | Create Employee Credential    | Creates a new credential to the specified employee.                                                  |
| **Employee Credentials** | Delete Employee Credential    | Deletes an employee credential                                                                       |
| **Employee Credentials** | Get Employee Credential       | Retrieves a single employee credential.                                                              |
| **Employee Credentials** | List Employee Credentials     | Retrieves a list of credentials belonging to the specified employee.                                 |
| **Employee Credentials** | Update Employee Credential    | Updates an employee credential.                                                                      |
| **Employees**            | Create Employee               | Creates a new employee to the specified company.                                                     |
| **Employees**            | Delete Employee               | Deletes an employee                                                                                  |
| **Employees**            | Get Employee                  | Retrieves a single employee.                                                                         |
| **Employees**            | List Employees                | Retrieves a list of employees belonging to the specified company.                                    |
| **Employees**            | Update Employee               | Updates an employee                                                                                  |
| **Folders**              | Create Folder                 | Creates a new folder to the specified company.                                                       |
| **Folders**              | Delete Folder                 | Deletes a folder.                                                                                    |
| **Folders**              | Get Folder                    | Retrieves a single folder.                                                                           |
| **Folders**              | List Folders                  | Retrieves a list of folders belonging to the specified company.                                      |
| **Folders**              | Update Folder                 | Updates a folder.                                                                                    |
| **Generic Request**      | SyncMonkey API Request        | Generic action for making authenticated requests against the SyncMonkey API                          |
| **Licenses**             | Create License                | Creates a new license to the company. Requires “License Type” for category and site ID for location. |
| **Licenses**             | Delete License                | Deletes a license.                                                                                   |
| **Licenses**             | Get License                   | Retrieves a single license's details.                                                                |
| **Licenses**             | List Licenses                 | Retrieves a list of licenses associated with a specific company.                                     |
| **Licenses**             | Update License                | Updates the details of a license.                                                                    |
| **Services**             | Create Service for a Company  | Creates a new service for a company. Requires “Service Type” for category.                           |
| **Services**             | Delete Service                | Deletes a service.                                                                                   |
| **Services**             | Get Service                   | Retrieves a single service's details.                                                                |
| **Services**             | List Services                 | Retrieves a list of services associated with a specific company.                                     |
| **Services**             | Update Service                | Updates the details of a service                                                                     |
| **Sites**                | Create Site                   | Creates a new site                                                                                   |
| **Sites**                | Delete Site                   | Deletes a site                                                                                       |
| **Sites**                | Get Site                      | Retrieves a single site                                                                              |
| **Sites**                | List Sites                    | Retrieves a list of sites belonging to a company                                                     |
| **Sites**                | Update Site                   | Updates a site                                                                                       |
| **Utilities**            | List Categories               | Retrieves a list of categories                                                                       |
