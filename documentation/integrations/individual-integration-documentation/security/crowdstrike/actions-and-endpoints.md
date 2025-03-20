# Actions & Endpoints

## Actions & Endpoints

### Introduction

The Crowdstrike Integration with Rewst delivers a robust set of actions and endpoints for interacting with Crowdstrike. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Crowdstrike Integration:

* **Alerts**
* **Detects**
* **Devices**
* **Discover**
* **Generic Request**
* **Incidents**
* **Reports**
* **Users**

### Actions

#### Alerts

{% swagger baseUrl="https://api.crowdstrike.com" path="/alerts/queries/alerts/v1" method="get" summary="List Alerts" %}
{% swagger-description %}
Lists any alerts that have been raised
{% endswagger-description %}
{% endswagger %}

#### Detects

{% swagger baseUrl="https://api.crowdstrike.com" path="/detects/queries/detects/v1" method="get" summary="List Detections" %}
{% swagger-description %}
Lists any detections that have been raised
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/detects/entities/summaries/GET/v1" method="post" summary="Get Detection(s)" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

#### Devices

{% swagger baseUrl="https://api.crowdstrike.com" path="/devices/queries/devices/v1" method="get" summary="List Devices" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/devices/entities/devices/v2" method="get" summary="Get Device(s)" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/devices/queries/host-groups/v1" method="get" summary="List Device Host Groups" %}
{% swagger-description %}
Description coming soon...
{% endswagger-description %}
{% endswagger %}

#### Discover

{% swagger baseUrl="https://api.crowdstrike.com" path="/discover/queries/accounts/v1" method="get" summary="List Accounts" %}
{% swagger-description %}
List subaccounts associated with your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/discover/queries/hosts/v1" method="get" summary="List Hosts" %}
{% swagger-description %}
List hosts associated with your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/discover/queries/logins/v1" method="get" summary="List Logins" %}
{% swagger-description %}
List the logins for users on your account
{% endswagger-description %}
{% endswagger %}

#### Generic Request

{% swagger baseUrl="https://api.crowdstrike.com" path="/<url_path>" method="get/put/post/delete" summary="API Request" %}
{% swagger-description %}
Generic action for making authenticated requests against the CrowdStrike Falcon API
{% endswagger-description %}
{% endswagger %}

#### Incidents

{% swagger baseUrl="https://api.crowdstrike.com" path="/incidents/queries/incidents/v1" method="get" summary="List Incidents" %}
{% swagger-description %}
Lists any incidents that have been raised
{% endswagger-description %}
{% endswagger %}

#### Reports

{% swagger baseUrl="https://api.crowdstrike.com" path="/falconx/queries/reports/v1" method="get" summary="List Reports" %}
{% swagger-description %}
Lists FalconX Reports for your account
{% endswagger-description %}
{% endswagger %}

#### Users

{% swagger baseUrl="https://api.crowdstrike.com" path="/user-management/queries/users/v1" method="get" summary="List Users" %}
{% swagger-description %}
Lists created users and their properties for your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/user-management/entities/users/GET/v1" method="post" summary="Get User(s)" %}
{% swagger-description %}
Gets specified users and their properties from your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/user-management/queries/roles/v1" method="get" summary="List User Roles" %}
{% swagger-description %}
Lists user roles and their properties for your accounts
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/user-management/entities/users/v1" method="delete" summary="Delete User" %}
{% swagger-description %}
Deletes specified users permanently from your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="https://api.crowdstrike.com" path="/user-management/entities/users/v1" method="post" summary="Create User" %}
{% swagger-description %}
Creates a new user in your account
{% endswagger-description %}
{% endswagger %}
