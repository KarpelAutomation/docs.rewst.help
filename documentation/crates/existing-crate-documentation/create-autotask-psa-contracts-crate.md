# Create Autotask PSA Contracts Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Create Autotask PSA Contracts Crate do?

Our Create Autotask PSA Contracts Crate enables you to create contracts in Autotask PSA using a form. The form will prompt for contract beginning dates, contract types, and periods.

### How the Crate works <a href="#how-the-crate-works" id="how-the-crate-works"></a>

* Uses the Datto PSA API endpoint `POST /V1.0/Contracts` to create new contracts
* Leverages `PATCH /V1.0/Contracts` for updates and `GET /V1.0/Contracts/{id}` for retrieval
* Uses `POST /V1.0/Contracts/query` to retrieve contracts based on criteria

The workflow process involves the following activities:

1. Form-based input
2. Data validation
3. Contract creation
4. Post-creation actions

## Crate prerequisites

The [Datto  Autotask PSA integration](../../configuration/integrations/integration-guides/datto-psa-integration-setup/) must be set up before unpacking this Crate.

### Unpack the Create Autotask PSA Contracts Crate <a href="#unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate" id="unpack-the-browse-rewst-form-triggers-within-a-form-and-attach-to-a-ticket-crate"></a>

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Create Autotask PSA Contracts`.



    ​![](<../../../.gitbook/assets/image (1) (3).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Follow the guidance in the configuration screen to make your selections for the format of the form to be unpacked with the Crate. The contract shall be named \<Company name> \<Contract type> \<Start date>, with the start date using any of the following formats:
   * YYYY-MM-DD
   * DD-MM-YYYY
   * MM-DD-YYYY
   * When creating each contract, you may or may not require tickets to have start or stop times.
   * After creating a contract, you may or may not email the form submitter the form submitter to let them know whether the contract creation has been succeeded or failed.
6. Click **Continue**.
7. Ensure that **Enabled** is toggled on under **Configure Triggers**. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. You may also set activation to certain [tags](../../settings/tags-in-rewst.md), and set [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md) or [integration overrides](../../automations/intro-to-triggers/).
8. Click **Unpack**.

#### Use the Crate <a href="#use-the-crate" id="use-the-crate"></a>

1. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
2. Search for `Create Autotask PSA Contracts`.
3. Click **⋮ > Usages > View Direct URLs.**
4.  Click on the link for the organization, which contains the user you wish to manage. This will launch the form in a new tab.



    ![](<../../../.gitbook/assets/image (2) (4).png>)
5. Choose the client you'd like to run the form on from the **Client** drop-down selector.&#x20;
6. Select the start date of the contracts from the **Date to Start the Contracts** date picker.
7. Select the applicable contract types from the **Contract Types** drop-down selector.
8. Select the applicable contract period from the **Contract Period** drop-down selector.
9. Click **Submit** to run the workflow. The workflow executes the automated contract creation within your Autotask PSA system, complete with proper tracking and documentation.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
