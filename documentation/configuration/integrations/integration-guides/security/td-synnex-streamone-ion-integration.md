# TD Synnex StreamOne Ion integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the TD Synnex StreamOne Ion integration do?

Our Synnex StreamOne Ion integration enables the automation of cloud marketplace operations. Use the StreamOne Ion API within Rewst workflows to automate tasks such as placing orders, managing subscriptions, and managing customers.&#x20;

{% hint style="info" %}
Rewst has two TD Synnex integrations. Here's the difference between them:\
\
TD Synnex StreamOne ION: More focused on complex management, PSA integration, and robust billing solutions. Global use.\
[TD Synnex Stellr](../licensing/synnex-integration-setup.md): More focused on marketplace experience, customer storefronts, and simplified transactions. North America/Canada specific.\
\
If you're unsure which is the right integration for you, reach out to Rewst's support team in your dedicated Discord channel.
{% endhint %}



## Set up the TD Synnex StreamOne Ion integration

### Set up steps in TD Synnex StreamOne Ion

1. Log in to your TD Synnex StreamOne Ion Admin account.
2. Navigate to **Settings > Users**.
3. Click **+ ADD USER**. \
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-16 at 2.26.29 PM.png>)
4.  Enter the following information into the relevant fields:

    1. **Contact Name** : Rewst
    2. **Email :** Whatever email you use for Rewst
    3. **Password :** A secure password
    4. **User Role** : Set this to any role you would like except User
    5. **Status** : Set this to **Active**



    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-05-16 at 4.50.46 PM.png" alt=""><figcaption></figcaption></figure>
5. Click **Save**.
6. Click **Done**.
7. Click on the user you just created in your total user list.
8. Click **Edit**.
9. Click **Request New Credentials**.
10. Copy the **Refresh Token** that appears. Store it somewhere secure. You'll need this information for further steps in Rewst.
11. Navigate to **Settings > Account Information**.
12. Copy the **Account ID**. Store it somewhere secure. You'll need this information for further steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the integrations page, search for the `TD Synnex StreamOne Ion` integration.

![](<../../../../../.gitbook/assets/Screenshot 2025-05-16 at 9.18.34 AM.png>)\
\
3\. Click on the integration tile to launch the configuration setup page.

4. Under **Parameters**, enter the information copied from TD Synnex StreamOne Ion into the relevant fields:
   1. **Account ID**
   2. **Initial Refresh Token**
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="info" %}
Got an idea for a new integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## TD Synnex StreamOne Ion integration actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

### Actions and endpoints

TD Synnex's complete documentation can be found [here](https://www.tdsynnex.com/ion/api/).

| Category                   | Action                                   | Description                                                                                  |
| -------------------------- | ---------------------------------------- | -------------------------------------------------------------------------------------------- |
| **Customers**              | List Customers                           | List all customers                                                                           |
| **Customers**              | Get Customer                             | Get Customer                                                                                 |
| **Customers**              | Create Customer                          | Create Customer                                                                              |
| **Customers**              | Update Customer                          | Update Customer                                                                              |
| **Generic Request**        | TD Synnex StreamOne Ion API Request      | Generic action for making authenticated requests against the TD Synnex StreamOne Ion V3 API. |
| **Orders**                 | List Account Orders                      | List Account Orders                                                                          |
| **Orders**                 | List Customer Orders                     | List Customer Orders                                                                         |
| **Orders**                 | Get Order                                | Get Order                                                                                    |
| **Orders**                 | Create or Update Order                   | Create or Update Order                                                                       |
| **Orders**                 | Cancel Order                             | Cancel Order                                                                                 |
| **Products**               | List Products                            | List All Products                                                                            |
| **Products**               | Get Product                              | Get Product                                                                                  |
| **Products**               | List Verticals                           | List All Verticals                                                                           |
| **Provisioning Templates** | Get Provisioning Template by Template Id | Get Provisioning Template by Template Id                                                     |
| **Provisioning Templates** | Get Provisioning Template by Vendor      | Get Provisioning Template by Vendor                                                          |
| **Subscriptions**          | Get Customer Subscription Details        | Get Customer Subscription Details                                                            |
| **Subscriptions**          | List Customer Subscriptions              | List Customer Subscriptions                                                                  |
