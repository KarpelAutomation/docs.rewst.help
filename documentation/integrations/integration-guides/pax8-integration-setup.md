---
description: >-
  This document outlines the requirements and setup for Rewst's Pax8
  integration.
---

# Pax8 integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).

Pax8's own documentation on least privileged access can be found [here](https://devx.pax8.com/docs#authentication).
{% endhint %}

## **What does the Pax8 integration do?**

Our Pax8 integration allows MSPs to automate license procurement and billing reconciliation processes. By integrating Pax8 with Rewst, you can streamline operations, reduce manual tasks, and enhance accuracy in billing and license management.

### Why use the Pax8 integration?

* Automate the procurement of licenses for various services.
* Streamline billing reconciliation processes to ensure accurate invoicing.
* Reduce manual data entry and associated errors in license management.
* Enhance operational efficiency by integrating Pax8's offerings into Rewst workflows.

## Integration prerequisites

* An active Pax8 partner account with administrative privileges
* Access to the Rewst platform with administrative rights
* Ensure that your Pax8 account is set up for API access

## Set up the Pax8 integration

### Set up steps in Pax8

1. Log in to your Pax8 partner account.
2. If required, generate an API access token. Refer to Pax8's [API documentation](https://devx.pax8.com/) for detailed instructions.
3. Navigate to **Integrations > Apps**.
4.  Search for `Rewst`.<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2026-07-22 at 9.14.56 AM.png" alt=""><figcaption></figcaption></figure>
5. Click **Create**. You’ll see a green confirmation dialog appear in the top right corner of your screen.
6. Copy the Client ID and Client Secret for the credential and store them somewhere secure. You’ll need both for further setup steps in Rewst.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-08-13 at 10.47.20 AM.png" alt=""><figcaption></figcaption></figure>

### Set up steps in Rewst

1. Navigate to **Marketplace > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the `Pax8` integration.\
   \
   ![](<../../../.gitbook/assets/image (27) (1).png>)
3. Click on the integration tile to launch setup.
4. Enter your copied **Client ID** and **Client Secret** into their relevant fields.
5. Leave **Is Default** checked to on.
6. Click the **Authorize** button.
7. If prompted, log in to your Pax8 account by entering your username, password, and one-time code.
8. Accept the authorization request. You'll know that the integration was successfully installed if you now see an option to **ReAuthorize**.
9. Click **Save Configuration**.
10. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.\
    <br>

    <figure><img src="../../../.gitbook/assets/image (32) (1).png" alt=""><figcaption></figcaption></figure>

## Test the Integration

1.  After completing the setup, create a test workflow in Rewst that utilizes a Pax8 action, such as retrieving a list of licenses.\
    <br>

    <figure><img src="../../../.gitbook/assets/image (34) (1).png" alt=""><figcaption><p>An example of what your test workflow might look like</p></figcaption></figure>
2. Run the workflow and verify that it successfully interacts with your Pax8 account, confirming that the integration is functioning correctly.

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Crates related to the Pax8 integration

<table data-view="cards"><thead><tr><th></th><th data-hidden data-card-target data-type="content-ref"></th><th data-hidden data-card-cover data-type="image">Cover image</th></tr></thead><tbody><tr><td><strong>Microsoft: User Onboarding</strong></td><td><a href="../../crates/existing-crate-documentation/microsoft-user-onboarding-crate-v2/">microsoft-user-onboarding-crate-v2</a></td><td><a href="../../../.gitbook/assets/Screenshot 2025-11-13 at 3.06.37 PM.png">Screenshot 2025-11-13 at 3.06.37 PM.png</a></td></tr><tr><td><strong>Microsoft: User Offboarding</strong></td><td><a href="../../crates/existing-crate-documentation/microsoft-user-offboarding-crate.md">microsoft-user-offboarding-crate.md</a></td><td><a href="../../../.gitbook/assets/Screenshot 2025-11-13 at 3.06.23 PM.png">Screenshot 2025-11-13 at 3.06.23 PM.png</a></td></tr><tr><td><strong>Alert on Unused M365 Licenses</strong></td><td><a href="../../crates/existing-crate-documentation/alert-on-unused-m365-licenses-crate.md">alert-on-unused-m365-licenses-crate.md</a></td><td><a href="../../../.gitbook/assets/Screenshot 2025-11-13 at 3.05.54 PM.png">Screenshot 2025-11-13 at 3.05.54 PM.png</a></td></tr></tbody></table>

## Troubleshoot the **Pax8** integration

### **Authorization Issues**

If you encounter problems during authorization, ensure that your Pax8 credentials are correct and that your account has the necessary API access permissions.

### **API Connection Errors**

Verify that there are no network issues preventing Rewst from connecting to Pax8's API endpoints.

### **Data Retrieval Problems**

Ensure that the data you are trying to access in Pax8 exists and that your account has the appropriate permissions to retrieve it.

## Pax8 actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

Ensure that you have the necessary permissions and correct endpoint URLs as specified in Pax8's [API documentation](https://devx.pax8.com/docs/introduction) when configuring these actions.

| name                          | http\_method |
| ----------------------------- | ------------ |
| Cancel Subscription           | DELETE       |
| Create Company                | POST         |
| Create Order                  | POST         |
| Get Company                   | GET          |
| Get Company Contact           | GET          |
| Get Order                     | GET          |
| Get Product                   | GET          |
| Get Product Provision Details | GET          |
| Get Subscription              | GET          |
| List Companies                | GET          |
| List Company Contacts         | GET          |
| List Orders                   | GET          |
| List Products                 | GET          |
| List Subscriptions            | GET          |
| Pax8 API Request              | GET          |
| Update Subscription           | PUT          |

{% hint style="info" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Pax8 2025 OAuth transition planning

{% hint style="info" %}
Our team expects the OAuth changes will be released on December 21, 2024. Follow the steps below to complete your transition. Note that while new Rewst customers won't need to provision the client ID and secret from Pax8, existing customers will still be able to view this information in Rewst for a portion of 2025 as our total OAuth transition concludes.
{% endhint %}

### Customer transition instructions

1. Update the configuration in the Rewst platform:
   1. Navigate to **Configuration > Integrations**.
   2. Select **Pax8**.
   3. In the **Parameters** section, under **OAuth Configuration**, select the **Authorize** button.
2. If you’re logged out of Pax8, you’ll be taken to the Pax8 login screen. Enter your username, password, and one-time code.
   1. Once OAuth is authorized, you’ll see a **success** message.
   2. The OAuth button will change to **Re-Authorize**.

{% file src="../../../.gitbook/assets/Pax 8 OAuth.mp4" %}
This quick video shows step two of the process, where you’ll log in to Pax8 and authorize OAuth.
{% endfile %}

### Pax8 Transition FAQs

#### Why do we need to switch to OAuth 2.0?

Pax8 is driving the transition to OAuth 2.0 to enhance the security of customer integrations and align with industry standards for secure authorization. OAuth 2.0 allows applications to access resources without exposing user credentials, providing a more secure and reliable method for authentication. To ensure uninterrupted service, all customers must authenticate using OAuth 2.0 before January 31, 2025. This change reflects Pax8’s commitment to protecting your data and maintaining a seamless integration experience.

#### Are there any steps needed on the Pax8 side?

Rewst utilizes Pax8’s Delegated Authorization to access Pax8’s Public APIs on your behalf. During the authorization process, you’ll be prompted to log into Pax8 to grant necessary permissions. No additional configuration is required within Pax8. Note that if you have both a vendor and a partner account in Pax8, you’ll need to log in with the partner login.

#### What happens after January 31, 2025 if I don’t switch to OAuth2.0?

If you don't switch to OAuth 2.0 by January 31, 2025, Pax 8 will block API key authentication requests. This means your integration will no longer be able to authenticate, and you won't be able to utilize Rewst’s Pax 8 integration. To ensure uninterrupted service, please make the switch to OAuth 2.0 before the deadline.
