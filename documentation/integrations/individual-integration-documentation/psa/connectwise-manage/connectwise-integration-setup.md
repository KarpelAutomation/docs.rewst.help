---
description: >-
  This document outlines the requirements and setup for the ConnectWise Manage
  integration.
---

# ConnectWise integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

## What does the ConnectWise PSA integration do?

### Integration use cases

Here’s just a taste of what you can automate with relevant Crates, after you've set up your ConnectWise PSA integration:

* Add your child organizations, also known as customers, to Rewst.
* User onboarding and offboarding
* Categorize tickets using OpenAI

## Integration prerequisites

Rewst has a number of tasks that can be performed using the ConnectWise Manage API, all of which require different permissions. You can review the [ConnectWise Manage Security Roles Matrix](https://developer.connectwise.com/@api/deki/files/422/Security_Roles_Matrix_11132017.xlsx?revision=1) for more information.

{% hint style="info" %}
You'll need an active ConnectWise Developer account to access the above URL.
{% endhint %}

## Set up the ConnectWise PSA integration

## Setup steps in ConnectWise

#### Create a security role in ConnectWise PSA

1. Navigate to **System > Security Roles**.
2. Click the **+** in the top left of your screen.
3. Name the Security Role **Rewst API**. &#x20;
4. Click the **save** icon.
5. Set your permission as per [this document](least-privilege-access-requirements-for-connectwise-manage-integration.md).

#### Create an API account

You'll need to create an API account. This can be done by following [ConnectWise's own instructions](https://developer.connectwise.com/Special:Userlogin?returntotitle=Products%2FManage%2FDeveloper_Guide%2FAuthentication#tab=login). Note that you'll need to be signed in to ConnectWise to view the documentation.&#x20;

#### Create an API member

1. Navigate to **System > Members > API Members in ConnectWise PSA**.
2. Click **+** to create a new API member.
3. Enter a **Member ID** and **Member Name**. We suggest naming each of these Rewst.
4. Select **Rewst API** as your **Role ID**.
5. Select your highest **Level**, such as Corporate (Level 1)_._
6. Select a **Location**, **Department**, **Name**, and **Default Territory**, as per your company guidelines.
7. Click the **Save** icon at the top.

<figure><img src="../../../../../.gitbook/assets/cwm-api-member.jpg" alt=""><figcaption><p>Creating an API Member in ConnectWise Manage</p></figcaption></figure>

8. Click on the **Rewst API member**.
9. Click API Keys **+**.
10. Add a new API Key.
11. Add Rewst API as the **Description**.
12. Click the **Save** icon.
13. Copy and save the public and private key in a secure location. You'll need these to move on to the rest of the setup steps in Rewst.

<figure><img src="../../../../../.gitbook/assets/public-api-key.jpg" alt=""><figcaption><p>Public and Private Key</p></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for ConnectWise PSA. \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-02-11 at 6.01.15 PM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. In the **Configuration** form, enter the following into the relevant fields:
   1. The copied **API Member ID**&#x20;
   2. The **company ID** used when logging into ConnectWise PSA
   3. The **Hostname** for ConnectWise PSA
   4. The Private & Public API Key.
      1. Optionally, change the Company Query Conditions to filter what companies are returned by the API
5. Click **Save Configuration**.

<figure><img src="../../../../../.gitbook/assets/cwm-rewst-integration-setup.jpg" alt=""><figcaption><p>Configuring ConnectWise Manage Integration in Rewst</p></figcaption></figure>

{% hint style="warning" %}
**Other Configurations**

Once the integration has been configured within Rewst, we can use the Rewst Crate: Configure Organization Variables to configure your own custom settings and how Rewst should interact with ConnectWise PSA. Our Guide for that Crate can be found here: [_Configure Organization Variable_](https://docs.rewst.help/prebuilt-automations/existing-crate-documentation/configure-organization-variables)[_s_](../../../../../prebuilt-automations/existing-crate-documentation/configure-organization-variables.md)

Note that this form asks for information about your RMM / M365 settings as well. While this form can be completed again separately, we recommend that you also set up the integration for Microsoft Graph and your RMM at this same time.
{% endhint %}

