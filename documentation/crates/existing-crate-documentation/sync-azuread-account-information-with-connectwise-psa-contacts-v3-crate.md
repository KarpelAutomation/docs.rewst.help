# Sync AzureAD Account Information with ConnectWise PSA Contacts (V3) Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Sync AzureAD Account Information with ConnectWise PSA Contacts (V3) Crate do?

Our Sync AzureAD Account Information with ConnectWise PSA Contacts (V3) Crate synchronizes the M365 Account status with ConnectWise PSA and runs on a cron or recurring schedule.

### How the Crate works

The Crate checks Azure Active Directory daily for user accounts without matching ConnectWise PSA contacts and helps maintain synchronization between the two systems.

* Ensures that user information from Azure AD is properly reflected in ConnectWise PSA contacts
* Finds discrepancies between the two systems where users exist in one but not the other
* Helps maintain accurate contact information across both platforms
* Performs these checks daily to catch new users or changes

The Crate uses a cron trigger that runs automatically on a daily schedule at a predetermined time. This automated daily execution ensures that the Azure AD and ConnectWise PSA contacts stay synchronized without requiring any manual intervention.

## Crate prerequisites

* [ConnectWise PSA Integration](../../configuration/integrations/integration-guides/connectwise-integration-setup.md): Must be properly configured and connected to Rewst.
* [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/):  Required for Azure AD access and user information retrieval.
* Proper Permissions: Appropriate permissions in both Azure AD and ConnectWise PSA to read user/contact data.

## Unpack the Sync AzureAD Account Information with ConnectWise PSA Contacts (V3) Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Sync AzureAD Account Information with ConnectWise PSA Contacts (V3)`.

    \
    ![](<../../../.gitbook/assets/image (202).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Contacts may be optionally excluded from being disabled, for instance, if a contact is a non-Microsoft user or a contractor. Enter the names of the PSA contact types into the **Excluded Contact Types** field to configure the PSA contact types to exclude. Use commas to separate the names.
6. ConnectWise PSA uses configurable communication item type names. Communication item types are the different methods of contact information that can be stored and managed for contacts in ConnectWise PSA. Fill out the provided fields to configure the workflow with the type names the PSA environment uses.
   * **Business email** - Business email addresses
   * **Business phone** -Business phone numbers
   * **Mobile phone** - Mobile phone numbers
7. Click **Continue**.
8. Enter **Time Saved** under **Crate Configuration**.
9. Ensure that **Enabled** is toggled on under **Configure Triggers**.\
   Note that you have the option under the Cron Job accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
10. Click **Unpack**.

### Test the Crate

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2.  Search for `ConnectWise PSA Add or Update Communication Item to Contact`.



    <figure><img src="../../../.gitbook/assets/image (204).png" alt=""><figcaption></figcaption></figure>
3. Click on the workflow to view it in the Workflow Builder Canvas.&#x20;
4. Click **Test** in the top right corner of the Workflow Builder Canvas.
5. Click **Test**.
6. Allow the workflow to run.
7. You'll see a green success message at the top of your screen if the execution is successful. You'll see a red failure message if the execution fails. Click **View Results** for a more detailed breakdown of each.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
