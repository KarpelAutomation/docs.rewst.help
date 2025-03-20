# HubSpot integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

Integrating Rewst with HubSpot offers MSPs a seamless and efficient way to manage and streamline their customer relationship management (CRM) and marketing activities. With the integration, Rewst can synchronize data between any other integration and HubSpot, ensuring a unified view of customer interactions, leads, and sales processes. Users can seamlessly import and export contacts, track customer interactions, and automate marketing campaigns. By leveraging HubSpot's CRM and marketing capabilities, Rewst users can enhance their customer engagement, nurture leads, and drive conversions, all within a single integrated platform. The integration empowers users to efficiently manage their sales and marketing efforts, ultimately improving productivity and maximizing the potential of their customer relationships.

## Setup

1. **Navigate** to the integrations page in [Rewst](https://app.rewst.io/).
2. **Click** on the HubSpot integration.
3. **Fill out** the configuration form.
4. **Click** on the OAuth Configuration Authorize/Re-Authorize button.

## Actions

### Companies

#### Search Companies[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#search-companies) <a href="#search-companies" id="search-companies"></a>

Search companies in Hubspot

| Parameter  | Description                                         | Type            |
| ---------- | --------------------------------------------------- | --------------- |
| Query      |                                                     | String          |
| Filters    | A list of filters to be applied to teh search       | Array\[Filters] |
| Properties | a list of properties to be included in the response | String          |

#### Get Company[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#get-company) <a href="#get-company" id="get-company"></a>

get a Hubspot company by id

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| Company   |             | String |
| params    |             | Params |

#### Delete Company[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#delete-company) <a href="#delete-company" id="delete-company"></a>

delete a company in Hubspot

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| Company   |             | String |

#### Create Company[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#create-company) <a href="#create-company" id="create-company"></a>

create a company in Hubspot

| Parameter             | Description | Type                        |
| --------------------- | ----------- | --------------------------- |
| Domain Name\*         |             | String                      |
| Name\*                |             | String                      |
| Description           |             | String                      |
| Phone                 |             | String                      |
| Number of employees   |             | Integer                     |
| Address               |             | String                      |
| Address2              |             | String                      |
| City                  |             | String                      |
| State                 |             | String                      |
| Country               |             | String                      |
| Zip                   |             | String                      |
| Number of employees   |             | Integer                     |
| Annual Revenue        |             | Integer                     |
| Twitter Bio           |             | String                      |
| Facebook Company Page |             | String                      |
| Website               |             | String                      |
| type                  |             | String                      |
| Industry              |             | String                      |
| Custom Properties     |             | Key-Value pair (Dictionary) |

#### Update Company[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#update-company) <a href="#update-company" id="update-company"></a>

update a company in Hubspot

| Parameter             | Description | Type                        |
| --------------------- | ----------- | --------------------------- |
| Company\*             |             | Integer                     |
| Domain Name\*         |             | String                      |
| Name\*                |             | String                      |
| Description           |             | String                      |
| Phone                 |             | String                      |
| Number of employees   |             | Integer                     |
| Address               |             | String                      |
| Address2              |             | String                      |
| City                  |             | String                      |
| State                 |             | String                      |
| Country               |             | String                      |
| Zip                   |             | String                      |
| Number of employees   |             | Integer                     |
| Annual Revenue        |             | Integer                     |
| Twitter Bio           |             | String                      |
| Facebook Company Page |             | String                      |
| Website               |             | String                      |
| type                  |             | String                      |
| Industry              |             | String                      |
| Custom Properties     |             | Key-Value pair (Dictionary) |

#### Filters[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#filters) <a href="#filters" id="filters"></a>

| Parameter        | Description                                 | Type   |
| ---------------- | ------------------------------------------- | ------ |
| Filter Parameter | the field you want to filter on             | String |
| Filter Operation | the type of comparision you want to perform | String |
| Filter Value     | the value you want to filter for            | String |

#### Params - Companies[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#params---companies) <a href="#params---companies" id="params---companies"></a>

| Parameter  | Description                                         | Type   |
| ---------- | --------------------------------------------------- | ------ |
| Properties | a list of properties to be included in the response | String |

### Contact Lists

#### List Contact Lists[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#list-contact-lists) <a href="#list-contact-lists" id="list-contact-lists"></a>

| Parameter | Description | Type |
| --------- | ----------- | ---- |
| url       |             |      |

### Contacts

#### Search Contacts[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#search-contacts) <a href="#search-contacts" id="search-contacts"></a>

search contacts in Hubspot

| Parameter        | Description                                         | Type   |
| ---------------- | --------------------------------------------------- | ------ |
| Query            | search term(s)                                      | String |
| Filter Parameter | the field you want to filter on                     | String |
| Filter Operation | the type of comparision you want to perform         | String |
| Filter Value     | the value you want to filter for                    | String |
| Properties       | a list of properties to be included in the response | String |

#### Get Contact[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#get-contact) <a href="#get-contact" id="get-contact"></a>

get a Hubspot contact by id

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| Contact   |             | String |
| params    |             | Params |

#### Delete Contact[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#delete-contact) <a href="#delete-contact" id="delete-contact"></a>

delete a contact in Hubspot

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| Contact   |             | String |

#### Create Contact[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#create-contact) <a href="#create-contact" id="create-contact"></a>

create a contact in Hubspot

| Parameter            | Description                                                                                                                             | Type                        |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| Company size         | Contact's company size. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                         | String                      |
| Date of birth        | Contact's date of birth. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                        | String                      |
| Degree               | Contact's degree. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                               | String                      |
| Field of study       | Contact's field of study. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                       | String                      |
| Gender               | Contact's gender. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                               | String                      |
| Graduation date      | Contact's graduation date. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                      | String                      |
| Buying Role          | Role the contact plays during the sales process. Contacts can have multiple roles, and can share roles with others.                     | String                      |
| Lead Status          | The contact's sales, prospecting or outreach status                                                                                     | String                      |
| Job function         | Contact's job function. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                         | String                      |
| Marital Status       | Contact's marital status. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                       | String                      |
| Military status      | Contact's military status. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                      | String                      |
| Relationship Status  | Contact's relationship status. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                  | String                      |
| School               | Contact's school. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                               | String                      |
| Seniority            | Contact's seniority. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                            | String                      |
| Start date           | Contact's start date. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                           | String                      |
| Work email           | Contact's work email. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                           | String                      |
| First Name           | A contact's first name                                                                                                                  | String                      |
| Twitter Username     | The contact's Twitter handle. This is set by HubSpot using the contact's email address.                                                 | String                      |
| Last Name            | A contact's last name                                                                                                                   | String                      |
| Salutation           | The title used to address a contact                                                                                                     | String                      |
| Email                | A contact's email address                                                                                                               | String                      |
| Mobile Phone Number  | A contact's mobile phone number                                                                                                         | String                      |
| Phone Number         | A contact's primary phone number                                                                                                        | String                      |
| Fax Number           | A contact's primary fax number                                                                                                          | String                      |
| Street Address       | Contact's street address, including apartment or unit number.                                                                           | String                      |
| City                 | A contact's city of residence                                                                                                           | String                      |
| LinkedIn Bio         | A contact's LinkedIn bio                                                                                                                | String                      |
| Twitter Bio          | The contact's Twitter bio. This is set by HubSpot using the contact's email address.                                                    | String                      |
| State/Region         | The contact's state of residence. This might be set via import, form, or integration.                                                   | String                      |
| Postal Code          | The contact's zip code. This might be set via import, form, or integration.                                                             | String                      |
| Country/Region       | The contact's country/region of residence. This might be set via import, form, or integration.                                          | String                      |
| LinkedIn Connections | How many LinkedIn connections they have                                                                                                 | Number (float)              |
| Preferred language   | Set your contact's preferred language for communications. This property can be changed from an import, form, or integration.            | String                      |
| Job Title            | A contact's job title                                                                                                                   | String                      |
| Message              | A default property to be used for any message or comments a contact may want to leave on a form.                                        | String                      |
| Lifecycle Stage      | The qualification of contacts to sales readiness. It can be set through imports, forms, workflows, and manually on a per contact basis. | String                      |
| Company Name         | Name of the contact's company. This can be set independently from the name property on the contact's associated company.                | String                      |
| Website URL          | Associated company website.                                                                                                             | String                      |
| Number of Employees  | The number of company employees                                                                                                         | String                      |
| Annual Revenue       | Annual company revenue                                                                                                                  | String                      |
| Industry             | The Industry a contact is in                                                                                                            | String                      |
| Custom Properties    |                                                                                                                                         | Key-Value pair (Dictionary) |

#### Update Contact[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#update-contact) <a href="#update-contact" id="update-contact"></a>

update a contact in Hubspot

| Parameter            | Description                                                                                                                             | Type                        |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| url\_params          |                                                                                                                                         |                             |
| Contact\*            |                                                                                                                                         | String                      |
| Company size         | Contact's company size. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                         | String                      |
| Date of birth        | Contact's date of birth. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                        | String                      |
| Degree               | Contact's degree. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                               | String                      |
| Field of study       | Contact's field of study. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                       | String                      |
| Gender               | Contact's gender. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                               | String                      |
| Graduation date      | Contact's graduation date. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                      | String                      |
| Buying Role          | Role the contact plays during the sales process. Contacts can have multiple roles, and can share roles with others.                     | String                      |
| Lead Status          | The contact's sales, prospecting or outreach status                                                                                     | String                      |
| Job function         | Contact's job function. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                         | String                      |
| Marital Status       | Contact's marital status. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                       | String                      |
| Military status      | Contact's military status. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                      | String                      |
| Relationship Status  | Contact's relationship status. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                  | String                      |
| School               | Contact's school. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                               | String                      |
| Seniority            | Contact's seniority. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                            | String                      |
| Start date           | Contact's start date. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                           | String                      |
| Work email           | Contact's work email. Required for the Facebook Ads Integration. Automatically synced from the Lead Ads tool.                           | String                      |
| First Name           | A contact's first name                                                                                                                  | String                      |
| Twitter Username     | The contact's Twitter handle. This is set by HubSpot using the contact's email address.                                                 | String                      |
| Last Name            | A contact's last name                                                                                                                   | String                      |
| Salutation           | The title used to address a contact                                                                                                     | String                      |
| Email                | A contact's email address                                                                                                               | String                      |
| Mobile Phone Number  | A contact's mobile phone number                                                                                                         | String                      |
| Phone Number         | A contact's primary phone number                                                                                                        | String                      |
| Fax Number           | A contact's primary fax number                                                                                                          | String                      |
| Street Address       | Contact's street address, including apartment or unit number.                                                                           | String                      |
| City                 | A contact's city of residence                                                                                                           | String                      |
| LinkedIn Bio         | A contact's LinkedIn bio                                                                                                                | String                      |
| Twitter Bio          | The contact's Twitter bio. This is set by HubSpot using the contact's email address.                                                    | String                      |
| State/Region         | The contact's state of residence. This might be set via import, form, or integration.                                                   | String                      |
| Postal Code          | The contact's zip code. This might be set via import, form, or integration.                                                             | String                      |
| Country/Region       | The contact's country/region of residence. This might be set via import, form, or integration.                                          | String                      |
| LinkedIn Connections | How many LinkedIn connections they have                                                                                                 | Number (float)              |
| Preferred language   | Set your contact's preferred language for communications. This property can be changed from an import, form, or integration.            | String                      |
| Job Title            | A contact's job title                                                                                                                   | String                      |
| Message              | A default property to be used for any message or comments a contact may want to leave on a form.                                        | String                      |
| Lifecycle Stage      | The qualification of contacts to sales readiness. It can be set through imports, forms, workflows, and manually on a per contact basis. | String                      |
| Company Name         | Name of the contact's company. This can be set independently from the name property on the contact's associated company.                | String                      |
| Website URL          | Associated company website.                                                                                                             | String                      |
| Number of Employees  | The number of company employees                                                                                                         | String                      |
| Annual Revenue       | Annual company revenue                                                                                                                  | String                      |
| Industry             | The Industry a contact is in                                                                                                            | String                      |
| Custom Properties    |                                                                                                                                         | Key-Value pair (Dictionary) |

#### Params - Contacts[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#params---contacts) <a href="#params---contacts" id="params---contacts"></a>

| Parameter  | Description                                         | Type   |
| ---------- | --------------------------------------------------- | ------ |
| Properties | a list of properties to be included in the response | String |

### Deals

#### Search Deals[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#search-deals) <a href="#search-deals" id="search-deals"></a>

Search deals in Hubspot

| Parameter        | Description                                         | Type   |
| ---------------- | --------------------------------------------------- | ------ |
| Query            |                                                     | String |
| Filter Parameter | the field you want to filter on                     | String |
| Filter Operation | the type of comparison you want to perform          | String |
| Filter Value     | the value you want to filter for                    | String |
| Properties       | a list of properties to be included in the response | String |

#### List Deal Associations[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#list-deal-associations) <a href="#list-deal-associations" id="list-deal-associations"></a>

List a HubSpot Deal's associations

| Parameter   | Description | Type   |
| ----------- | ----------- | ------ |
| Deal        |             | String |
| Object Type |             | String |

#### List Company Associations[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#list-company-associations) <a href="#list-company-associations" id="list-company-associations"></a>

List a HubSpot Companies associations

| Parameter   | Description | Type   |
| ----------- | ----------- | ------ |
| Company     |             | String |
| Object Type |             | String |

#### Delete Deal[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#delete-deal) <a href="#delete-deal" id="delete-deal"></a>

delete a Hubspot deal by id

| Parameter | Description | Type   |
| --------- | ----------- | ------ |
| Deal      |             | String |

#### Create Deal[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#create-deal) <a href="#create-deal" id="create-deal"></a>

create a Hubspot deal

| Parameter           | Description | Type                        |
| ------------------- | ----------- | --------------------------- |
| Deal name           |             | String                      |
| Amount              |             | Number (float)              |
| Description         |             | String                      |
| Pipeline            |             | String                      |
| Deal stage          |             | String                      |
| Deal type           |             | String                      |
| Expected close date |             |                             |
| Custom Properties   |             | Key-Value pair (Dictionary) |

#### Update Deal[​](http://localhost:3000/docs/integrations/CRM/crm-hubspot-integration#update-deal) <a href="#update-deal" id="update-deal"></a>

Hubspotupdate a hubspot deal

| Parameter           | Description | Type                        |
| ------------------- | ----------- | --------------------------- |
| Deal name           |             | String                      |
| Amount              |             | Number (float)              |
| Description         |             | String                      |
| Pipeline            |             | String                      |
| Deal stage          |             | String                      |
| Deal type           |             | String                      |
| Expected close date |             |                             |
| Custom Properties   |             | Key-Value pair (Dictionary) |
