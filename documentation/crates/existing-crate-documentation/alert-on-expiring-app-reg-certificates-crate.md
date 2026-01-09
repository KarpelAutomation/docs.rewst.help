# Alert on Expiring App Reg Certificates Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Alert on Expiring App Reg Certificates Crate do?

Our Alert on Expiring App Reg Certificates Crate identifies any expiring certificates in your Application Registrations and logs individual tickets for each client as well as a detailed overall summary ticket. Reduce disruptions by getting notified on expiring application registration certificates.

### Workflow breakdown

1. The workflow begins with the **list\_organizations** task, which uses the **List Organizations** action to retrieve a list of all organizations in Rewst that the current organization manages.
2. Upon successful completion, the **list\_organizations** task publishes two context variables: `to_run_against` containing the organization IDs and `orgs_plus_root` which includes both the managed organizations and the current organization ID.
3. The workflow then proceeds to the **list\_expiring\_app\_reg\_certs** task, which executes the **\[Rewst Master v3] Azure: Alert on Expiring App Certs \[Part 2]** action using a "with items" loop that runs once for each organization in the `orgs_plus_root` list with a concurrency of 1.
4. The **list\_expiring\_app\_reg\_certs** task publishes the collected results to context variables `all_certs_collected_results` and `all_certs`, where the latter flattens all certificate data from all organizations into a single list.
5. If the **list\_expiring\_app\_reg\_certs** task succeeds, the workflow moves to the **check\_send\_aggregate** task, which uses the **noop** action to evaluate whether an aggregate ticket should be created.
6. The **check\_send\_aggregate** task has two possible transitions: if the context variable `send_aggregate` is true or undefined, it proceeds to create an aggregate ticket; otherwise, it skips to the end.
7. When creating an aggregate ticket, the **create\_all\_certs** task executes the **\[Rewst Master v2] PSA: Create Service Ticket** action to generate a detailed service ticket containing all expiring certificates from all organizations with formatted information including organization name, app display name, app ID, certificate display name, and expiry time.
8. If the **create\_all\_certs** task succeeds, the workflow proceeds to the **END** task, which uses the **noop** action to complete the workflow successfully.
9. If any task fails during execution, the workflow transitions to the **failure\_detected** task, which uses the **noop** action to handle the failure condition before terminating.
10. The workflow concludes at the **END** task, which uses the **noop** action to mark the successful completion of the certificate expiration alerting process.

## Crate prerequisites

* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate, to enable the Microsoft Graph integration with Rewst.
* Your [PSA](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) must be integrated with Rewst.
* `default_psa` [organization variable](../../configuration/organization-variables.md#what-is-an-organization-variable) must be added

## Unpack the Alert on Expiring App Reg Certificates Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst Platform.
2.  Search for `Alert on Expiring App Reg Certificates`.

    \
    ![](<../../../.gitbook/assets/image (96).png>)
3. Click on the Crate tile to begin the unpacking process.
4. Click **Unpack Crate**.

<figure><img src="../../../.gitbook/assets/image (54) (2).png" alt="Screenshot of the Rewst platform showing the unpacking screen for a workflow crate titled &#x22;[Rewst Master v3] Azure: Alert on Expiring App Certs [Part 1]&#x22;. The page displays a description: &#x22;Identify any Application Registrations that have expiring certificates and log a ticket per client, with an overall ticket with all detailed information.&#x22; Below that, there&#x27;s a &#x22;Crate Configuration&#x22; section with fields for &#x22;Workflow Name&#x22; (pre-filled), &#x22;Time Saved (seconds)&#x22; (set to 0), and a trigger configuration showing a Cron Job marked as &#x22;Enabled&#x22;. Buttons for &#x22;Previous&#x22; and &#x22;Unpack&#x22; appear at the bottom right."><figcaption><p>The Crate's configuration page</p></figcaption></figure>

4. Enter your **Time Saved**.
5. Click **Unpack**.

### Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.

1. Navigate to **Automations > Workflows**.
2.  Search for `Alert on Expiring App Certs [Part 1]`.<br>

    <figure><img src="../../../.gitbook/assets/image (98).png" alt=""><figcaption><p>The workflow, in a search result</p></figcaption></figure>
3.  Click on the workflow to open it in the workflow builder.<br>

    <figure><img src="../../../.gitbook/assets/image (99).png" alt=""><figcaption></figcaption></figure>
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own, and tickets will be created if expiring certs are found.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
