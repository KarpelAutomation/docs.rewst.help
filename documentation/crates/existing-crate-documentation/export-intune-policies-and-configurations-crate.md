# Export Intune Policies and Configurations Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Export Intune Policies and Configurations Crate in our Crate Marketplace.
{% endhint %}

## What does the Export Intune Policies and Configurations Crate do?

Our Export Intune Policies and Configurations Crate allows you to select and export Intune policies and configurations. Once exported, these are made accessible in a JSON format via a webhook URL for easy download or integration into another workflow.

## Why use the Export Intune Policies and Configurations Crate?

* Regularly back up critical Intune policies and configurations to ensure quick recovery, compliance, and protection against accidental changes or system failures.
* Use a listener workflow to simplify deployment, ensure compliance and standardize policies and configurations across many organizations.
* Integrate Intune data with other systems to streamline security monitoring, IT service management and reporting.

## Crate prerequisites

[The Microsoft Graph integration](https://docs.rewst.help/documentation/integrations/cloud/microsoft-cloud-integration-bundle/microsoft-graph/microsoft-graph-integration-setup) must be set up before unpacking this Crate.

## Unpack the Export Intune Policies and Configurations Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2.  Use the search bar to search for `Export Intune Policies and Configurations`.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-12 at 3.23.32 PM.png" alt=""><figcaption></figcaption></figure>
3. Click on **Export Intune Policies and Configurations** to open up its Crate details page, which breaks down the purpose, features, and setup requirements of the Crate.
4. Click **Unpack Crate** in the right side menu.\
   ![](<../../../.gitbook/assets/image (4) (1) (1).png>)
5. Click **Continue**.\
   ![](<../../../.gitbook/assets/image (5) (1) (1).png>)
6. Enter the time saved.
7.  Click **Unpack**.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-12 at 3.53.31 PM.png" alt=""><figcaption></figcaption></figure>
8.  The Crate will now unpack the workflow, trigger and form ready to be used.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-12 at 3.56.08 PM.png" alt=""><figcaption></figcaption></figure>

## Test the Crate

1. Access the form by going to the left side menu of the platform and navigating to **Automations > Forms**.
2. Search for Intune.&#x20;
3. Click the form named **\[ROC] Endpoint: Export Intune Policies.**
4.  Click the **⋮** , then usages.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-12 at 4.09.22 PM.png" alt=""><figcaption></figcaption></figure>
5.  Click **View Direct URLs**.\


    <figure><img src="../../../.gitbook/assets/image (6) (1).png" alt=""><figcaption></figcaption></figure>
6.  Click the form link for the organization you would like to use for your test.\


    <figure><img src="../../../.gitbook/assets/image (7) (1).png" alt=""><figcaption></figcaption></figure>
7. Click the policies and configurations you would like to export, then click **Submit**.\
   ![](<../../../.gitbook/assets/image (8) (1).png>)
8. Access the workflow results by navigating to **Automations > Results**.
9.  Search for `Export Intune Configurations and Policies` and open the workflow result.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-12 at 4.26.46 PM.png" alt=""><figcaption></figcaption></figure>
10. Scroll down and expand the **core\_create\_webhook** action. Copy the URL listed underneath **Result:**\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-12 at 4.28.07 PM.png" alt=""><figcaption></figcaption></figure>
11. Paste the URL into any web browser and click enter. A JSON document will then be downloaded. Review and check that the JSON document is accurate.\


    <figure><img src="../../../.gitbook/assets/image (9) (1).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

