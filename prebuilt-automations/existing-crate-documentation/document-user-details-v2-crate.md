# Document User Details V2 Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://app.rewst.io/marketplace/crates/ad23cb3a-d4fb-4066-91d1-719ea95a6355).
{% endhint %}

## What does the Document User Details V2 Crate do?

Our Document User Details V2 Crate streamlines the documentation of user information in Microsoft 365. This crate automatically records critical user details such as licenses, aliases, and permission levels into your documentation tool.

## Why use the Document User Details V2 Crate?

* Keep up-to-date records of a clients users base in their M365 environment.
* Provide ad-hoc and QBR reporting to your clients.

## Crate prerequisites

IT Glue or Hudu must be integrated with Rewst prior to unpacking this Crate.

The Microsoft Cloud Bundle must be unpacked, and configured, with GDAP Relationships established for your customers.

## Unpack the Document User Details V2 Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for the Document User Details V2 Crate.\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-03-24 at 2.53.14 PM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6.  Change the **Workflow name**, if desired.\
    \


    <figure><img src="../../.gitbook/assets/Screenshot 2025-03-24 at 2.54.27 PM.png" alt=""><figcaption></figcaption></figure>
7. Click **Unpack**.
8. Navigate to **Automation > Workflows**.
9. Search for `[Rewst Master v3] ITG: Document Users - [Part 1]`.
10. Click into the workflow.
11. Select the Gear icon to view trigger details.\
    \
    ![](<../../.gitbook/assets/image (41).png>)
12. Set the trigger to **Enabled**.
13. Set the **Cron Schedule** as desired.\
    \


    <figure><img src="../../.gitbook/assets/image (42).png" alt=""><figcaption></figcaption></figure>
14. Click **Submit**.

{% hint style="info" %}
The workflow is designed to run at the MSP level organization. The workflow will automatically iterate through your Rewst child organizations and populate their specific form URLs in the documentation platform.
{% endhint %}

## Test the Crate

1. Click **test** in the top right corner of the page.
2. Select your MSP organization and click **Test**.
3. Navigate to **Automation > Results** to view the workflow execution. Failed tasks in the record would indicate that the Crate is not working.

## Troubleshoot the Document User Details V2 Crate

### Forbidden error on Microsoft Graph actions

Check your Microsoft Cloud Bundle to make sure the client is configured correctly. Click the green shield icon next to your client to reconsent to delegate admin permission. If errors continue, check GDAP permissions.

### Forbidden error on IT Glue actions

Enable [password access to the API user in IT Glue](https://support.itglue.com/hc/en-us/articles/360017660198-Password-Access-Workflow-in-IT-Glue).

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

