# Bulk Create Client from PSA Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Bulk Create Client from PSA Crate in our Crate Marketplace.
{% endhint %}

## What does the **Bulk Create Client from PSA** Crate do?

Our Bulk Create Client from PSA Crate allows you to create organizations in Rewst from a filtered PSA client list, in bulk. Reduce time needed when onboarding into Rewst for the first time and quickly create multiple unique Rewst organizations from your PSA.

{% hint style="warning" %}
Once an organization is created via the Crate's execution, you can't change the parent organization of that child organization.&#x20;
{% endhint %}

### How the Crate works

* The form unpacked with this Crate is used to select the account types and account statuses from a dynamic field, pulling direct from your PSA, and then selects the organizations by default that match that criteria.
* On submission, the automation then checks if the organization is already created within Rewst. If so, it does nothing. If the organization does not exist, it is created.
* An email report is sent to the form submitter outlining the number of clients created, the number of clients bypassed, and the number of organizations with failures.

### Workflow breakdown

#### \[ROC] Rewst: Create Orgs from PSA - Stage 1: Collect Organisations

1. The workflow begins with the **BEGIN** task that uses the **noop** action to initialize the automation log as an empty array and starts the workflow execution.
2. The workflow executes the **workflows\_roc\_psa\_list\_organisations\_with\_filtering** task that uses the **\[ROC] PSA: List Organisations with Filtering** action to retrieve all organizations from the PSA system based on specified account types and statuses.
3. The workflow processes the PSA organization data by filtering it to match only the organization IDs provided in the input parameter, creating a refined list of organizations with their names and IDs.
4. The **rewst\_list\_integrations\_for\_organization** task executes the **List Integrations For Organization** action to retrieve all integrations currently installed for the organization and identifies the default PSA pack configuration.
5. The workflow runs the **create\_rewst\_org** task using the **\[ROC] Rewst: Create Orgs from PSA - Stage 2: Create Organisations** action with "with items" functionality, processing up to 5 organizations concurrently to create Rewst organizations for each PSA organization.
6. After organization creation completes or fails, the workflow calculates statistics including counts of organizations created, organizations that already existed, and organizations that failed to be created, along with their respective names.
7. The **core\_sendmail** task executes the **sendmail** action to send a summary email to the user containing the results of the bulk organization creation process, including counts and status information.
8. If any failures occur during the organization creation process, the **failure\_detected** task uses the **noop** action to handle the failure path before proceeding to send the notification email.
9. The workflow concludes with the **END** task that uses the **noop** action to finalize the workflow execution and output the automation log.

#### \[ROC] Rewst: Create Orgs from PSA - Stage 2: Create Organisations

1. The workflow begins with the **BEGIN** task using the **noop** action, which initializes an empty automation log and transitions to the organization variable check.
2. The **rewst\_get\_organization\_variable** task uses the **Get Organization Variable** action to check if a PSA-specific organization variable already exists for the given organization ID, looking for variables like `cw_manage_company_id`, `datto_company_id`, `halo_psa_client_id`, `kaseya_bms_account_id`, or f`reshdesk_company_id` depending on the default PSA configuration.
3. If the organization variable does not exist, the workflow proceeds to the **get\_company\_info** task which uses the **\[ROC] PSA: List Organisations with Filtering** action to retrieve company information from the PSA system using the provided organisation\_id.
4. If the organization variable already exists, the workflow skips to the **org\_exists** task using the **noop** action, which sets the action status to **Exists** and proceeds directly to completion.
5. When company information is successfully retrieved, the **rewst\_create\_organization** task uses the **Create Organization** action to create a new organization in Rewst using the company name from the PSA and sets the managing organization ID to the current organization.
6. After successful organization creation, the **rewst\_bulk\_upsert\_organization\_variables** task uses the **Bulk Upsert Organization Variables** action to create the appropriate PSA company ID variable for the newly created organization, with the variable name determined by the default PSA type.
7. If any task fails during execution, the workflow transitions to the **failure\_detected** task using the **noop** action, which sets the action status to **Failed**.
8. The workflow concludes with the **END** task using the **noop** action, which publishes the final organization information including the action taken, organization ID, and organization name to the workflow output.

## Crate prerequisites

Prior to unpacking and running this Crate, you should have one of the following PSA integrations configured in Rewst:

* [ConnectWise PSA](../../configuration/integrations/integration-guides/connectwise-integration-setup.md)
* [DattoPSA](../../configuration/integrations/integration-guides/datto-psa-integration-setup/)
* [Freshdesk](../../configuration/integrations/integration-guides/freshdesk-integration-setup.md)
* [HaloPSA](../../configuration/integrations/integration-guides/halo-integration-setup.md)
* [Kaseya BMS](../../configuration/integrations/integration-guides/kaseya-bms-integration-setup.md)

## Unpack the **Bulk Create Client from PSA** Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Bulk Create Client from PSA`.\
   \
   ![](<../../../.gitbook/assets/image (137).png>)
3. Click on the Crate tile to open its details page.
4. Locate the **Required Org Variables** menu on the right of the Crate details page. Click <img src="../../../.gitbook/assets/Screenshot 2025-03-05 at 2.39.11 PM (2).png" alt="" data-size="line"> to launch the **Add Organization Variable** dialog.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-03-17 at 1.28.30 PM.png>)
5. Set the **Name** field to `default_PSA`, if Rewst does not automatically populate this into the field for you.
6. Set the **Category** to general.
7.  Set the **Value** field to the value that corresponds to your PSA, referenced from the table below.<br>

    | **PSA**         | **Value**    |
    | --------------- | ------------ |
    | ConnectWise PSA | `cw_manage`  |
    | DattoPSA        | `datto_psa`  |
    | Freshdesk       | `freshdesk`  |
    | HaloPSA         | `halo_psa`   |
    | Kaseya BMS      | `kaseya_bms` |
8. Click **Submit**.
9. Click **Unpack Crate**, then **Continue**.
10. Follow the on-screen instructions.
11. Click **Unpack**.

### Use the Crate

1. Navigate to **Automations > Forms**.
2. Search for `[ROC] Rewst: Create Orgs from PSA Form`.
3.  Click **⋮ > Usages**.<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-03-19 at 2.05.38 PM.png" alt=""><figcaption></figcaption></figure>
4. Click the workflow named **\[ROC] Rewst: Create Orgs from PSA - Stage 1: Collect Organizations**.
5. Click **View Direct URLs**.
6. Click the link that corresponds to your MSP’s organization.
7. Choose your account types from the drop-down selector. These will act as a filter for the organizations you want to create.
8. Select status criteria from the **Account Statuses / Classification** drop-down selector to filter for the subset of organizations to create.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-03-19 at 2.06.37 PM.png>)
9. Remove any unwanted organizations from the list.
10. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
