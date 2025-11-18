# Enterprise Application Creation Alert Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Enterprise Application Creation Alert Crate do?

This Crate automates the monitoring of new enterprise applications in Microsoft Entra and creates a ticket in your PSA system for each new app detected. By continuously scanning for updates, it ensures your IT team is promptly informed of any new apps, enhancing security and oversight.

### How the Crate works

1. The workflow continuously monitors Microsoft Entra for new enterprise applications, checking daily for any changes or additions. The cron trigger can be adjusted to customize the time your workflow runs.
2. When a new app is detected, the workflow instantly generates a detailed ticket in your PSA system. This ticket includes pertinent information about the new app, ensuring your IT team is promptly notified and can take necessary actions.
3. The workflow interacts with Microsoft Entra to detect new enterprise apps and uses your PSA system's API to create and populate tickets with relevant data.

### Workflow breakdown

1. The workflow begins with the **begin** task that uses the **noop** action to initialize the workflow execution.
2. The workflow proceeds to the **list\_applications** task which uses the **Graph API Request** action to retrieve all enterprise applications from Microsoft Graph API, specifically requesting the displayName, createdDateTime, appId, description, and notes fields.
3. If the **list\_applications** task succeeds, the workflow moves to the **format\_applications** task that uses the **noop** action to filter the retrieved applications and identify only those created within the last 24 hours, publishing this filtered list as new\_apps to the workflow context.
4. If the **list\_applications** task fails, the workflow branches to the **list\_applications\_failed** task which uses the **noop** action as an error handling step before terminating the workflow.
5. After successful application formatting, the workflow executes the **determine\_alert** task using the **noop** action to evaluate whether any new enterprise applications were found by checking if the new\_apps list contains any items.
6. If new applications are detected, the workflow transitions to the **create\_psa\_service\_ticket** task which uses the **\[Rewst Master v2] PSA: Create Service Ticket** action to create a service ticket in the configured PSA system with details about the newly detected enterprise applications, including their display names, descriptions, creation dates, and app IDs.
7. If no new applications are found, the workflow branches to the **no\_new\_apps** task that uses the **noop** action to handle the scenario where no alerts need to be generated.
8. Both the ticket creation path and the no new apps path converge at the **end** task which uses the **noop** action to complete the workflow execution successfully.

## Crate prerequisites

* Your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst before unpacking this Crate.&#x20;
* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Enterprise Application Creation Alert Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Enterprise Application Creation Alert`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-11-18 at 10.43.10 AM.png>)\

3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Note that you have the option under the **Cron Job** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [trigger criteria](https://docs.rewst.help/documentation/automations/intro-to-triggers/trigger-criteria) or for integration overrides.
6. Click **Unpack**.

### Use the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Create a new enterprise application in Microsoft Entra.
2. Update your cron trigger in Rewst in the workflow to five minutes in the future.
3. After the time has passed, check to ensure that a ticket was created for the new enterprise application in your PSA.
4. Re-adjust the cron trigger as desired.

### Update the cron trigger schedule

The cron trigger will execute the workflow to generate the ticket at the same time each day. You can adjust the chosen time for execution in the workflow itself. Edit a cron trigger in the workflow to change the timing of when it will routinely run.

1. Navigate to **Automations > Workflows**.
2. Search for  `Alert - New Enterprise App Detected`.
3. Click on the workflow to open it in the Workflow Builder.
4.  Click <img src="../../../.gitbook/assets/image (189).png" alt="" data-size="line"> to open the edit trigger menu.\


    <figure><img src="../../../.gitbook/assets/image (241).png" alt=""><figcaption></figcaption></figure>
5. Update the timing of the cron trigger as desired in the fields under **Trigger Parameters**. Note that when entering the time into the **Cron Schedule** field, the correct format is minutes followed by hour. For example, 18 3, not 3 18.
6. Click **Submit**.

### Information recorded in the PSA ticket

The ticket description contains the following detailed information about each new enterprise application detected, formatted differently based on the PSA system:

1. **Application Display Name** - The friendly name of the application
2. **Description** - The application's description from Azure AD
3. **Creation Date** - When the application was created, formatted as `createdDateTime`
4. **App ID** - The unique identifier for the application , `appId`

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
