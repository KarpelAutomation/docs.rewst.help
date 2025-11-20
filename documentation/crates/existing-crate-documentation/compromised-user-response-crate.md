# Compromised User Response Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Compromised User Response Crate do?

This Crate is designed to manage user accounts and generate detailed reports based on selected actions within an organization. It helps administrators enforce security policies, monitor user activities, and audit mailbox configurations efficiently.

* Administrators can select an organization, users, and a date range. They can then take actions such as forcing password changes, invalidating user sessions, and blocking sign-ins.
* The workflow generates various reports, including sign-in activity, mailflow, app registrations, and MFA methods. It also provides a comprehensive report that covers mailbox settings, usage, managed devices, and more.
* It handles actions to maintain and enforce security, such as removing external mail forwards or blocking user sign-ins.
* It executes actions and generates reports based on form inputs, with the ability to process multiple options simultaneously.
* The workflow produces detailed reports that are accessible to the administrator, offering insights into user activity, security configurations, and mailbox statistics. If reporting options are selected, the reports are attached as an HTML file to the created ticket.

This workflow does not cover tasks outside of the selected options. Manual intervention is required for actions not included in the selectable list, such as custom security configurations or one-off user actions.

### How the Crate works

This Crate is kicked off by a form submission. Administrators can choose which actions to perform for specific organizations and users, and which reports to generate, including:

* Forcing password changes
* Invalidating user sessions
* Blocking sign-ins
* Generating various reports (sign-in activity, mailflow, MFA methods, etc.)

## Crate prerequisites

* Your [PSA must be successfully integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst before unpacking this Crate.&#x20;
* The [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

## Unpack the Compromised User Response Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Compromised User Response`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-09-23 at 4.15.21 PM.png>)<br>
3. Click on the Crate tile to begin unpacking.
4. Click **Continue**.
5. Note that you have the option under the **Form Submission** accordion mens to activate the Crate for all future organizations in addition to the current one.  You may also set activation to certain [tags](../../settings/tags-in-rewst.md). Ensure that **Enabled** is toggled on.
6. Click **Unpack**.

### Use the Crate

The Crate runs off of form submission.&#x20;

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `Compromised User Response`.
3. Click **⋮ > Usages > View Direct URLs**.
4. Click on the link for the organization which contains your relevant user and computer. This will launch the form in a new tab.
5. Choose your relevant org from the **Organization** drop-down selector.
6. Use the **Start Date and Time** and **End Date and Time** fields to specify the date and time range for the compromising incident.
7. Check the relevant boxes under **User Actions** to indicate your desired result:
   1. **Forced Password Change** will force the selected users to change their password
   2. **Invalidate User Sessions** will kick all selected users out of active sessions
   3. **Block User Sign-ins** will prevent the selected users from signing in
8. Check **Remove Rile Forward to External Domain**&#x20;
9. Make relevant choices under **Reporting** to indicate your desired result:
   1. Choose a ticket from the **Ticket** drop-down selector to add the information from the report to that ticket, or leave it blank to create a new ticket that contains the report info
   2. Check the **User Sign-in** box to add a record of when the users signed in during the designated time window to the report
   3. Check the **Mail Sent During Timeframe** to add a record of what mail was sent by the users during the designated time window to the report
   4. Check the **App Activity** to add a record of app activity associated with the users during the designated time window to the report
   5. Check the **MFA Methods** to add a record of what MFA settings were set during the designated time window to the report
   6. Check the **Generate REWSTER** report box to generate a report. Select the length of time the report should cover from the **REWSTER Report Period** drop-down selector: **7, 30, 90,** or **180** days.
10. Click **Submit**.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-09-23 at 4.39.12 PM.png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
