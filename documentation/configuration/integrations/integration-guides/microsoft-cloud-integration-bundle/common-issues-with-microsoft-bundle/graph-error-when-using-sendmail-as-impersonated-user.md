# Graph error when using Sendmail as impersonated user

## Error Message

When you are trying to use the Send Mail action as an Impersonated User, you may receive the following error message:

{% hint style="danger" %}
The specified object was not found in the store., The process failed to get the correct properties.
{% endhint %}

## What's the Issue?

This error likely indicates a permissions issue. When you send mail via this endpoint there are a few factors that come into play:

{% hint style="warning" %}
1. Sending via **delegated permissions does not work** and it must be done via **application permissions**. While you can technically get it to send with delegated permissions, the call would have to be to the local tenant and the user used to authorize the action would need to be granted permissions to the user's mailbox.
{% endhint %}

When using Rewst and sending this call from the MSP tenant, it's going to use application permissions. But if the call is done with CSP, it's going to use delegated authentication, meaning access to an external user/identity mailbox will not be granted.

{% hint style="warning" %}
2. When making the call through an application context the Rewst Application must have Send.Mail as an application permission.
{% endhint %}

## How to Resolve This Issue

If you receive this error when the call is being made with the MSP tenant, then it is necessary to check the following:

1. **Log in** to Entra in the MSP tenant.
2. **Verify** that the permission shows in the Permissions page for the Rewst Prod enterprise app.
3. **Click** the _Grant Admin Consent for_ button If the permission is missing
4. **Follow** the wizard for granting consent.
5. **Verify** permission now exists.
6. **Test** the workflow, if successful stop here.&#x20;

If the test is unsuccessful then follow these next steps:

1. **Re-authorize** the CSP integration.
2. **Re-authorize** the Graph integration without the CSP delegation slider checked.
3. **Re-authorize** the Graph integration with the CSP delegation slider checked.
4. **Repeat** these re-authorization steps for the _Exchange Online integration_.

## Contact Us for More Help

If you're continuing to have issues, check out our [roc-support](../../../../../../../support-and-community/roc-support/ "mention") page to get help!
