---
noIndex: true
---

# Pax8 - 2025 OAuth transition planning

{% hint style="info" %}
As of January 31, 2025, Pax8 is retiring API Key requests for Rewst and will require Rewst’s customers to move to OAuth 2.0 to authenticate to their APIs. Rewst customers will need to authenticate with OAuth before January 31 to continue to use our Pax 8 integration.

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

{% file src="../../../../.gitbook/assets/Pax 8 OAuth.mp4" %}
This quick video shows step two of the process, where you’ll log in to Pax8 and authorize OAuth.
{% endfile %}

### Pax8 Transition FAQs

#### Why do we need to switch to OAuth 2.0?

Pax8 is driving the transition to OAuth 2.0 to enhance the security of customer integrations and align with industry standards for secure authorization. OAuth 2.0 allows applications to access resources without exposing user credentials, providing a more secure and reliable method for authentication. To ensure uninterrupted service, all customers must authenticate using OAuth 2.0 before January 31, 2025. This change reflects Pax8’s commitment to protecting your data and maintaining a seamless integration experience.

#### Are there any steps needed on the Pax8 side?

Rewst utilizes Pax8’s Delegated Authorization to access Pax8’s Public APIs on your behalf. During the authorization process, you’ll be prompted to log into Pax8 to grant necessary permissions. No additional configuration is required within Pax8. Note that if you have both a vendor and a partner account in Pax8, you’ll need to log in with the partner login.

#### What happens after January 31, 2025 if I don’t switch to OAuth2.0?

If you don't switch to OAuth 2.0 by January 31, 2025, Pax 8 will block API key authentication requests. This means your integration will no longer be able to authenticate, and you won't be able to utilize Rewst’s Pax 8 integration. To ensure uninterrupted service, please make the switch to OAuth 2.0 before the deadline.
