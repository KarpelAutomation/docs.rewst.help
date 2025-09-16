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

The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Export Intune Policies and Configurations Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2.  Search for `Export Intune Policies and Configurations`.

    \
    ![](<../../../.gitbook/assets/image (142).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter the time saved.
7. Click **Unpack**.\


## Test the Crate

1. Access the form by navigating to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `Intune`.&#x20;
3. Click the form named **\[ROC] Endpoint: Export Intune Policies.**
4. Click **⋮ >** **Usages >View Direct URLs**.
5. Click the form link for the organization you would like to use for your test.
6.  Click the policies and configurations you would like to export, then click **Submit**.

    \
    ![](<../../../.gitbook/assets/image (8) (1).png>)
7. Access the workflow results by navigating to **Automations > Results**.
8.  Search for `Export Intune Configurations and Policies` and open the workflow result.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-12 at 4.26.46 PM.png" alt=""><figcaption></figcaption></figure>
9.  Scroll down and expand the **core\_create\_webhook** action. Copy the URL listed underneath **Result:**\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-02-12 at 4.28.07 PM.png" alt=""><figcaption></figcaption></figure>
10. Paste the URL into any web browser and click enter. A JSON document will then be downloaded. Review and check that the JSON document is accurate.\


    <figure><img src="../../../.gitbook/assets/image (9) (1).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

