# Troubleshoot unpacked Crate forms

{% hint style="info" %}
For more information on unpacking Crates, see our Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates#unpack-a-crate).&#x20;
{% endhint %}

If a form field of a form unpacked from a Crate isn't populating with information, you have two options.&#x20;

1. Identify the issue by digging into the form.
2. Open a support ticket with Rewst's support team and have them troubleshoot the issue for you.&#x20;

Either option will require you to collect information from the form by completing the following steps. As an example, we're using the **\[Rewst Master v3] User Onboarding Minimalistic** form.

1. Navigate to **Automations > Forms**.
2. Open the form in question.
3. Scroll down in the right side menu. Click on any field that's further down in the field list.&#x20;
4. Click on the field. This will open its information in the right side menu.

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-18 at 12.58.09 PM.png" alt=""><figcaption><p>The view of an expanded form field, open for editing</p></figcaption></figure>

5. Scroll down to see if the field is a dynamic field. If it is, **Dynamic Options** will be toggled **on**.
6. Confirm if the field has **Workflow Generated** toggled **on**. If so, look at the options generator in the **Workflow** field beneath it.&#x20;
7. Open the options generator by clicking ![](<../../.gitbook/assets/Screenshot 2025-03-18 at 1.01.39 PM.png>).
8. Click **View results for workflow**. \
   \
   <img src="../../.gitbook/assets/Screenshot 2025-03-18 at 1.03.08 PM.png" alt="" data-size="original">
9. View the list of all times the workflow has run. Errors will be denoted by **Failed**.\
   <img src="../../.gitbook/assets/Screenshot 2025-03-18 at 1.05.52 PM.png" alt="" data-size="original">
10. Click on failed execution rows to see more information.
11. Click on any of the failed actions in the list at the bottom of the page to examine its **Workflow Execution** log.&#x20;

    1. If troubleshooting the issue yourself, find the errors in the workflow execution and correct them.&#x20;
    2. If creating a ticket for Rewst support, copy the URL of your browser while viewing this information, and paste it into your support ticket.&#x20;

    <figure><img src="../../.gitbook/assets/Screenshot 2025-03-18 at 1.08.36 PM.png" alt=""><figcaption><p>Click on ... under errors to expand error information</p></figcaption></figure>

