# Bulk Create Client from PSA Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Bulk Create Client from PSA Crate in our Crate Marketplace.
{% endhint %}

## What does the **Bulk Create Client from PSA** Crate do?

Our **Bulk Create Client from PSA** Crate allows you to create organizations in Rewst from a filtered PSA client list, in bulk.

### Why use the Bulk Create Client from PSA Crate?

* Reduce time needed when onboarding into Rewst for the first time.
* Quickly create multiple unique Rewst organizations from your PSA.

## Crate prerequisites

Prior to unpacking and running this Crate, you should have one of the following PSA integrations configured in Rewst:

* ConnectWise PSA
* DattoPSA
* Freshdesk
* HaloPSA
* Kaseya BMS

## Unpack the **Bulk Create Client from PSA** Crate

1. Navigate to **Crates > Crate Marketplace** in the Rewst platform.
2. Search for **Bulk Create Client from PSA**.\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-03-17 at 1.14.34 PM.png>)
3. Click on the Crate tile to open its details page.
4. Locate the **Required Org Variables** menu on the right of the Crate details page. Click <img src="../../.gitbook/assets/Screenshot 2025-03-05 at 2.39.11 PM (1).png" alt="" data-size="line"> to launch the **Add Organization Variable** dialog.\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-03-17 at 1.28.30 PM.png>)
5. Set the **Name** field to `default_PSA`, if Rewst does not automatically populate this into the field for you.
6. Set the **Category** to general.
7.  Set the **Value** field to the value that corresponds to your PSA, referenced from the table below.\


    | **PSA**         | **Value**    |
    | --------------- | ------------ |
    | ConnectWise PSA | `cw_manage`  |
    | DattoPSA        | `datto_psa`  |
    | Freshdesk       | `freshdesk`  |
    | HaloPSA         | `halo_psa`   |
    | Kaseya BMS      | `kaseya_bms` |
8. Click **Submit**.
9. Click **Unpack Crate**, then **Continue**.
10. Enter your time saved.
11. Follow the on-screen instructions.
12. Click **Unpack**.
13. Once unpacking has completed, click **Done**.

## Test the Crate

1. Navigate to **Automations > Forms**.
2. Search for `[ROC] Rewst: Create Orgs from PSA Form`.
3.  Click **⋮** and select **usages**.\


    <figure><img src="../../.gitbook/assets/Screenshot 2025-03-19 at 2.05.38 PM.png" alt=""><figcaption></figcaption></figure>
4. Click the workflow named **\[ROC] Rewst: Create Orgs from PSA - Stage 1: Collect Organizations**.
5. Click **View Direct URLs**.
6. Click the link that corresponds to your MSP’s organization.
7. Choose your account types from the drop-down selector. These will act as a filter for the organizations you want to create.
8. Select status criteria from the **Account Statuses / Classification** drop-down selector to filter for the subset of organizations to create.\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-03-19 at 2.06.37 PM.png>)
9. Remove any unwanted organizations from the list.
10. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
