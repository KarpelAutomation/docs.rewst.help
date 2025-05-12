# Ad-Hoc Install/Uninstall Software via Chocolatey Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Ad-Hoc Install/Uninstall Software via Chocolatey Crate in our Crate Marketplace.
{% endhint %}

## What does the Ad-Hoc Install/Uninstall Software via Chocolatey Crate do?

Our Ad-Hoc Install/Uninstall Software via Chocolatey Crate enables technicians to manage software installations directly from PSA tickets. It connects your PSA system with Chocolatey package management, allowing you to remotely install or uninstall software packages on specific client devices without manual intervention.

This Crate focuses on simplifying common software management tasks, but doesn't handle complex configuration management or application settings. You can extend its functionality by connecting it to other automation workflows in Rewst.

## Why use the Ad-Hoc Install/Uninstall Software via Chocolatey Crate?

* Quickly respond to software installation requests from clients
* Remove unauthorized or problematic software from client devices
* Deploy standard software packages across client environments
* Maintain accurate software inventory by logging all changes in PSA tickets
* Reduce technician time spent on routine software management tasks
* Ensure consistency in software deployment methods across your team

## Crate prerequisites

* An active [PSA integration](../../configuration/integrations/individual-integration-documentation/psa/) with Rewst
* [RMM integration](../../configuration/integrations/individual-integration-documentation/rmm/) with Rewst that supports PowerShell script execution

## Unpack the Ad-Hoc Install/Uninstall Software via Chocolatey Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2. Search for **Ad-Hoc Install/Uninstall Software via Chocolatey**.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-03-06 at 5.44.07 PM.png>)
3. Click on the Crate tile to begin unpacking and ensure that the required org variables are added.\
   \
   ![](<../../../.gitbook/assets/CleanShot 2025-03-05 at 23.00.13@2x.png>)
4. On the configuration form, select your **PSA Integration** from the drop-down menu.\
   \
   ![](<../../../.gitbook/assets/CleanShot 2025-03-05 at 23.00.24@2x.png>)
5. Click **Unpack Crate** to complete the installation.

### Test the Crate

1. Open the **\[ROC] RMM- Install Chocolatey Package** form
2. In the workflow form, select the following:
   1. Action type - Install or Uninstall
   2. Client
   3. Target device or devices
   4. Software package name
3. Click **Submit** to run the workflow. The workflow will run and automatically add notes to your PSA with the results of the software operation.
4. Verify that the software has been successfully installed or uninstalled on the target device.

## Troubleshoot the Ad-Hoc Install/Uninstall Software via Chocolatey Crate

* For software installation failures, check that the package name is correct and available in the Chocolatey repository.
* For connectivity issues, ensure the target device has internet access to download packages from the Chocolatey repository.
* Check your RMM's script execution logs for detailed error messages if the workflow reports a failure.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
