# Remove Malicious Email and Block Sender Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Remove Malicious Email and Block Sender Crate do?

Our Remove Malicious Email and Block Sender Crate will allow you to search for a specific sender, remove any emails from that sender and block them on an organization wide basis. It will then document the action in an existing ticket.

### Why use the Remove Malicious Email and Block Sender Crate?

* Achieve a quick resolution of spam issues affecting multiple users.
* Ensure proactive blocking of known spam senders.
* Set up automatic documentation of spam-related actions in a ticket for auditing.

## Crate prerequisites

* The Microsoft Graph integration must be set up before unpacking this Crate.
* For ticketing functionality, set up one of the following PSA integrations:
  * Halo PSA
  * Datto PSA
  * ConnectWise PSA
  * Freshdesk
  * Kaseya BMS
  * ServiceNow
* For ticketing functionality, the organizational variable `default_psa` should be defined per the table below.

| PSA             | Value        |
| --------------- | ------------ |
| ConnectWise PSA | `cw_manage`  |
| DattoPSA        | `datto_psa`  |
| Freshdesk       | `freshdesk`  |
| HaloPSA         | `halo_psa`   |
| Kaseya BMS      | `kaseya_bms` |
| ServiceNow      | `servicenow` |

## Unpack the Remove Malicious Email and Block Sender Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for [`Remove Malicious Email and Block Sender`](https://app.rewst.io/marketplace/crates/c93b810f-8f3e-4e60-b9b0-27c9caad02e1).\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-04-01 at 4.37.10 PM.png>)
3. Click on the Crate tile to open its details page.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter your time savings into the **Time Saved (seconds)** field.
7. Click **Unpack**.
8. Once unpacking has completed, click **Done**.

## Test the Crate

1. Navigate to **Automations > Forms** in the Rewst platform.
2.  Search for `Remove Emails and Block Sender`.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-04-01 at 4.39.48 PM.png" alt=""><figcaption></figcaption></figure>
3. Click **⋮** to the right of your searched form. Select **Usages**.
4. Click **View Direct URLs** for the Workflow named **\[ROC] M365: Remove Malicious Emails and Block Sender**.
5. Click the link that corresponds to your target organization. Note that the target organization will need to have been mapped and authorized within the [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/cloud/microsoft-cloud-integration-bundle/).\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-04-01 at 4.40.56 PM.png>)
6. Select the ticket number to document the workflow actions for the request from the **Ticket Number** drop-down selector.
7. Enter the **Email Address of the Sender** that you wish to remove and block.
8. Click **Submit**.

{% hint style="danger" %}
This will remove all emails from the sender specified above that have been sent to the organization. Make sure that you wish to delete all of these emails before using the form.
{% endhint %}

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
