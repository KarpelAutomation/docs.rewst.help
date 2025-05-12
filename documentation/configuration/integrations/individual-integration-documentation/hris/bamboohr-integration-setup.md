# BambooHR integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).v
{% endhint %}

## **What does the BambooHR integration do?**

Our BambooHR integration enables data synchronization and automation in HR processes. Use BambooHR's API within Rewst workflows to automate HR workflows, manage employee records, and synchronize relevant HR data securely across platforms.

## Set up the BambooHR integration

### Set up steps in BambooHR

1. Log in to BambooHR.&#x20;
2. Navigate to https://{INSERT COMPANY DOMAIN HERE}.bamboohr.com
3. **Generate new API token.** On the top right corner, click on the settings cog icon. Click API Keys. Add a new key.
4. **Copy the token value.** The token value will be displayed in the lower right corner. Copy the token value to your clipboard. You will need this value to authenticate your API calls.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `BambooHR` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-01 at 4.48.56 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**:
   1. Paste the API token into the **API token** field.
   2. &#x20;Enter the company domain from your BambooHR account. E.g. If you navigate to `https://example.bamboohr.com`, your company domain is `example`.
5. Click **Save Configuration**.



## Actions and endpoints

| Category                | Action                  | Description                                                                    |
| ----------------------- | ----------------------- | ------------------------------------------------------------------------------ |
| **Account Information** | List Fields             | Get a list of fields that are available in the account                         |
| **Employees**           | Get Company Information | Gets Company Information                                                       |
| **Employees**           | Get Employee            | Get employee data by specifying a set of fields.                               |
| **Employees**           | Update Employee         | Update an employee, based on employee ID                                       |
| **Employees**           | Add Employee            | Add an employee. New employees must have at least a first name and a last name |
| **Employees**           | Get Employee Directory  | Gets Employee Directory                                                        |
| **Generic Request**     | BambooHR API Request    | Generic action for making authenticated requests against the BambooHR API      |
