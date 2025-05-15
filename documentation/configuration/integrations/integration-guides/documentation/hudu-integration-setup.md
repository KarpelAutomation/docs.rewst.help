# Hudu integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Hudu integration do?

Rewst's Hudu integration enables the automation of documentation management. Use the Hudu API within Rewst workflows to perform actions such as managing and documenting assets, websites, passwords, and procedures.

### Why use the Hudu integration?

* Document Microsoft enviornment
* Document Rewst form URLs
* Document Microsoft shared mailboxes
* Document Microsoft user details
* Document Microsoft group details

## Set up the Hudu integration

### Set up steps in Hudu

1. Log in to your Hudu instance.
2. Click on the **Admin** tab in the top menu.
3.  Scroll down and click **API Keys** under the **Account Administration** menu.\
    \


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-04-14 at 2.30.36 PM.png" alt=""><figcaption></figcaption></figure>
4. Click **+ New API Key** at the upper right of the page.
5.  Enter or select the following:

    1. **Name:** Rewst
    2. **Limit scope to:**&#x20;
    3. **Allowed IP Addresses:** View Rewst IPs [here](https://docs.rewst.help/security/security-policy)
    4. Check the box for **View passwords**
    5. Check the box for **Delete data**
    6. Check the box for **Export data**

    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-04-14 at 2.36.13 PM (1).png" alt=""><figcaption></figcaption></figure>
6. Click **Create**.
7. Copy and save the API key that is generated and listed at the top of the page under **New API Key**.

## Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the integrations page, search for `Hudu`.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-04-14 at 2.40.46 PM.png>)
3. Click on the integration tile to begin the installation process.
4. Enter the name of your choice for your integration.
5. Enter a description if desired.
6. Enter your copied API key from your Hudu Instance.
7. Add your Hudu Instance hostname in the **Hudu URL** field: for example, `yourinstance.huducloud.com` .
8. Click **Save Configuration**.
9.  [Map](broken-reference) Rewst to Hudu organizations below. In the organization mapping, you may need to click **Refresh Options** to get customers to populate.\


    <figure><img src="../../../../../.gitbook/assets/Screenshot 2025-02-04 at 2.19.52 PM.png" alt=""><figcaption></figcaption></figure>

## Test the integration

1. Navigate to **Automations > Workflows**.
2. Click **Create**.
3. Name your workflow, and click **Submit**. Note that after your test, you won't need this workflow, and could delete it if desired.
4. Drag the Hudu action **List Companies** onto your workflow builder canvas.\
   \
   ![](<../../../../../.gitbook/assets/image (40) (1).png>)
5. Click **Test**. If the action succeeds, then you’re all set.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Crates related to the Hudu integration

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><strong>Document M365 Environment</strong></td><td><a href="../../../../../.gitbook/assets/Document m365 environment (4).png">Document m365 environment (4).png</a></td></tr><tr><td><strong>Document Rewst Form URLs</strong></td><td><a href="../../../../../.gitbook/assets/Document Rewst form urls it glue hudu.png">Document Rewst form urls it glue hudu.png</a></td></tr><tr><td><strong>Document Shared Mailbox Details</strong></td><td><a href="../../../../../.gitbook/assets/Document shared mailbox details (2).png">Document shared mailbox details (2).png</a></td></tr><tr><td><strong>Document Group Details</strong></td><td><a href="../../../../../.gitbook/assets/Document Group Details V2 (1).png">Document Group Details V2 (1).png</a></td></tr><tr><td><strong>Document User Details</strong></td><td><a href="../../../../../.gitbook/assets/Document user details v2 (2).png">Document user details v2 (2).png</a></td></tr></tbody></table>

{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Hudu actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

You can access Hudu’s own API documentation by signing into your Hudu instance with an admin account, and navigating to **Admin > API > Hudu API Documentation**.

| Action Name                      | Description                                      | Endpoint Related to Action |
| -------------------------------- | ------------------------------------------------ | -------------------------- |
| Archive Asset                    | Archive an Asset                                 | /companies                 |
| Archive Company                  | Archive a Company                                | /companies                 |
| Archive Knowledge Base Article   | Archive a Knowledge Base Article                 | /articles                  |
| Archive Password                 | Archive a Password by ID                         | /asset\_passwords          |
| Create Asset for Company         |                                                  | /companies                 |
| Create Asset Layout              |                                                  | /asset\_layouts            |
| Create Company                   |                                                  | /companies                 |
| Create Folder                    |                                                  | /folders                   |
| Create Knowledge Base Article    |                                                  | /articles                  |
| Create or Update Magic Dash Item |                                                  | /magic\_dash               |
| Create Password                  |                                                  | /asset\_passwords          |
| Create Relation                  |                                                  | /relations                 |
| Create Website                   |                                                  | /websites                  |
| Delete Asset                     | Delete an Asset                                  | /companies                 |
| Delete Company                   | Delete a Company                                 | /companies                 |
| Delete Folder                    | Delete a Folder by ID                            | /folders                   |
| Delete Knowledge Base Article    | Delete a Knowledge Base Article                  | /articles                  |
| Delete Magic Dash Item with ID   | Delete a Magic Dash Item with ID                 | /magic\_dash               |
| Delete Password                  | Delete a Password                                | /asset\_passwords          |
| Delete Relation                  | Delete a Relation                                | /relations                 |
| Delete Website                   | Delete a Website                                 | /websites                  |
| Get Asset                        | Get an Asset by ID                               | /companies                 |
| Get Asset Layout                 | Get an Asset Layout by ID                        | /asset\_layouts            |
| Get Company                      | Get a Company by ID                              | /companies                 |
| Get Folder                       | Get a Folder by ID                               | /folders                   |
| Get Knowledge Base Article       | Get a Knowledge Base Article by ID               | /articles                  |
| Get Password                     | Get a Password by ID                             | /asset\_passwords          |
| Get Procedure                    | Get a Procedure (Process) by ID                  | /procedures                |
| Get Website                      | Get a Website by ID                              | /websites                  |
| Hudu API Request                 | Generic Action for Making Authenticated Requests |                            |
| List Activity Logs               | Get Activity Logs for Account                    | /activity\_logs            |
| List All Assets                  | List Assets for All Companies                    | /companies                 |
| List All Relations               | Get a List of All Relations                      | /relations                 |
| List Asset Layouts               | Get a List of Asset Layouts                      | /asset\_layouts            |
| List Companies                   | Get a List of Companies                          | /companies                 |
| List Company Assets              | Get a List of Assets Specific to a Company       | /companies                 |
| List Expirations                 | Get Expirations for Account                      | /expirations               |
| List Folders                     | Get a List of Folders                            | /folders                   |
| List Knowledge Base Articles     | Get a List of Knowledge Base Articles            | /articles                  |
| List Magic Dash Items            | Get all Magic Dash Items                         | /magic\_dash               |
| List Passwords                   | Get a List of Passwords                          | /asset\_passwords          |
| List Procedures (Processes)      | Get a List of Procedures (Processes)             | /procedures                |
| List Websites                    | Get a List of All Websites                       | /websites                  |
| Search Integration Cards         | Lookup Cards with Outside Integration Details    | /cards                     |
| Unarchive Asset                  | Unarchive an Asset                               | /companies                 |
| Unarchive Company                | Unarchive a Company                              | /companies                 |
| Unarchive Knowledge Base Article | Unarchive a Knowledge Base Article               | /articles                  |
| Unarchive Password               | Unarchive a Password by ID                       | /asset\_passwords          |
| Update Asset                     | Update an Asset by ID                            | /companies                 |
| Update Asset Layout              | Update an Asset Layout                           | /asset\_layouts            |
| Update Company                   | Update a Company                                 | /companies                 |
| Update Folder                    | Update a Folder by ID                            | /folders                   |
| Update Knowledge Base Article    | Update a Knowledge Base Article                  | /articles                  |
| Update Password                  | Update a Password by ID                          | /asset\_passwords          |
| Update Website                   | Update a Website by ID                           | /websites                  |
