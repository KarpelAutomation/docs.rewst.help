# Change a User’s Password Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find this Crate in our Crate Marketplace.
{% endhint %}

## What does the Change a User’s Password Crate do?

Our Change a User’s Password Crate uses a form-driven submission to change a user’s password in any environment: on-prem, hybrid, or Entra. Select an existing ticket, or a new one will be created to document the change. Select a generated password, or enter one manually.

### Why use the Change a User’s Password Crate?

* Efficiently change a user’s password
* Consistently document the change

## Crate prerequisites

* [PSA integration](../../configuration/integrations/integration-guides/psa/) must be set up
* [RMM integration](../../configuration/integrations/integration-guides/rmm/) must be set up
* default\_psa org variable set
* default\_rmm org variable set

## Unpack the Change a User’s Password Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Change a User’s Password`.
3. Click on the Crate tile to begin unpacking.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-03-26 at 4.25.01 PM.png>)
4.  Ensure that you have the required org variables setup for the Crate. Ready org variables will have a checkmark next to them under the Required Org Variables section, as seen in the screenshot below. An org variable without a check mark [will still need to be set up](../../configuration/organization-variables.md) before proceeding with unpacking the Crate. When confirmed, click Unpack Crate.\
    \


    <figure><img src="../../../.gitbook/assets/image (44).png" alt=""><figcaption></figcaption></figure>
5. Click **Continue**.
6. Click **Unpack**.

{% hint style="success" %}
Integration overrides will automatically be added during the Crate's unpacking process.&#x20;
{% endhint %}

## Test the Crate

1. Navigate to **Automations > Workflow**s.
2. Search for `User: Change Password` .
3.  Click into the workflow.\
    \


    <figure><img src="../../../.gitbook/assets/image (45).png" alt=""><figcaption></figcaption></figure>
4. Click <img src="../../../.gitbook/assets/Screenshot 2025-02-21 at 11.20.06 AM.png" alt="" data-size="line"> next to the trigger name to edit the trigger.
5. Select **View Direct URLs** under the **Trigger Configuration** submenu.
6. Copy the associated URL of the company you will be using to test the Crate.&#x20;
7. Open that URL in a new browser window.
8. Choose a user to use for your test. Fill out the form, then click **Submit**.
9. View the workflow results by clicking <img src="../../../.gitbook/assets/Screenshot 2025-03-05 at 2.40.07 PM (1).png" alt="" data-size="line"> from the workflow. If the Crate is functioning correctly, your results log won't contain errors.

## Troubleshoot the Change a User’s Password Crate

If you experience a PSA or RMM error, make sure you have set the org variables **default\_psa** and **default\_rmm**. For any other error, please [reach out to the ROC](../../../support-and-community/roc-support/).

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
