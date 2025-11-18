# Manage Duo Phones Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Duo: Manage Phones Crate in our Crate Marketplace.
{% endhint %}

## What does the **Manage Duo Phones** Crate do?

Duo: Manage Phones Crate ensures controlled access and accurate tracking of phone assignments through audit logs and ticket creation. Admins can add, remove, and audit phone assignments. Automate phone number management by streamlining the process of adding, removing, and auditing phone assignments. Reduce your manual efforts, minimize errors, and ensure consistency.&#x20;

### How the Crate works

The Crate creates an audit report in CSV format and logs a corresponding PSA ticket. The audit can be performed on different scopes:

* **Tenant**: Retrieves all users and their assigned phones.
* **Phone**: Lists users assigned to a specified phone number.
* **User**: Displays all phones assigned to the selected user.

### Workflow breakdown

1. The workflow begins with the **START** task using the **noop** action, which serves as the entry point and does nothing but initiate the flow.
2. The **is\_auditing\_user** task uses the **noop** action to check if the workflow is performing a user audit by evaluating if the action is `audit` and the audit scope is `user.`
3. If auditing a specific user, the workflow proceeds to the **duo\_audit\_user** task using the **\[REWST - TASK] Duo: Audit User** action to generate an audit report for the specified user ID and account ID.
4. If not auditing a specific user, the workflow continues to the **duo\_list\_accounts** task using the **List Accounts** action to retrieve all available Duo accounts from the system.
5. The **filter\_account\_ids** task uses the **Set Variable** action to process the account IDs, either selecting all accounts if `all` is specified in the input, or filtering to only include the specified account IDs from the retrieved accounts list.
6. The **select\_action** task uses the **noop** action to determine which operation to perform based on the action input parameter, branching to audit, remove, or add operations.
7. For audit operations, the **select\_audit\_scope** task uses the **noop** action to determine whether to audit accounts or phones based on the audit scope parameter.
8. If auditing accounts, the **duo\_audit\_account** task uses the **\[REWST - TASK] Duo: Audit Account** action to generate a comprehensive audit report for the specified account IDs.
9. If auditing phones, the **duo\_audit\_phone** task uses the **\[REWST - TASK] Duo: Audit Phone** action to audit a specific phone number across the specified account IDs.
10. For remove operations, the **duo\_remove\_phone** task uses the **\[REWST - TASK] Duo: Remove Phone** action with `with items` iteration to remove the specified phone number from each account ID in the list.
11. For add operations, the **is\_username\_provided** task uses the **noop** action to verify that a username has been provided as input for the phone assignment process.
12. If a username is provided, the **duo\_get\_user\_by\_username** task uses the **Get User by Username** action with `with items` iteration to search for the user across all specified account IDs.
13. The **filter\_users** task uses the **Set Variable** action to compile and structure the user information retrieved from the previous step, creating a list of users with their user IDs, usernames, and associated account IDs.
14. The **duo\_add\_and\_assign\_phone** task uses the **\[REWST - TASK] Duo: Add and Assign Phone** action with `with items` iteration to add and assign the specified phone to each user found in the filtered users list.
15. After completing audit operations, the **create\_csv\_report** task uses the **Set Variable** action to convert the audit report data into CSV format, or displays **No Data Found!** if no audit data exists.
16. The **psa\_create\_ticket** task uses the **\[REWST - PROCESS] PSA: Create Ticket** action to create a support ticket in the configured PSA system with the title `Duo Audit Report` and appropriate company information.
17. The **upload\_csv\_to\_ticket** task uses the **\[REWST - TASK] Upload Attachment To Ticket** action to attach the generated CSV audit report to the newly created PSA ticket with the filename "duo\_audit\_report.csv".
18. Any failures in the workflow are handled by the **FAILED** task using the **noop** action, which serves as a centralized failure handler before proceeding to the end.
19. The workflow concludes with the **END** task using the **noop** action, which publishes the final automation log and marks the successful completion of the workflow.

## Crate prerequisites

Before unpacking this Crate, you must have one of the following [PSAs integrated](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#psa-integrations) with Rewst:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [Datto PSA](../../automations/kits/datto-psa-integration-kit.md)
* [Halo PSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)

You also must have integrated [Duo](../../configuration/integrations/integration-guides/duo-integration-setup.md) with Rewst.

## Unpack the **Manage Duo Phones** Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Manage Duo Phones`**.**\
   \
   ![](<../../../.gitbook/assets/image (155).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.&#x20;
5. Click **Continue**.
6. Under **Configure Triggers**, make sure that the trigger is enabled for your desired organizations.
7. Click **Unpack**.

### Test the **Manage Duo Phones** Crate

1. Navigate to **Automations > Forms.**
2. Search for the form named **\[Rewst] Duo: Manage Phones.**
3. Click **⋮** and select **Usages**.
4. Locate the workflow named  **\[Rewst - CRATE] Duo: Manage Phones.**
5. Click **View Direct URLs**.
6. Click the link that corresponds to your MSP’s organization.
7. Any of the choices under **Action** will work for your test, but **Audit** will be the simplest. Choose this option to expose the next sections of the form.
8. Choose **Tenants** under **Audit Scope**.
9. Select your relevant organization in the **Tenants** drop-down selector.
10. Click **Submit**.
11. If successful, you'll see a green **Form submitted successfully** confirmation message.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-03-19 at 3.40.44 PM.png" alt=""><figcaption></figcaption></figure>



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
