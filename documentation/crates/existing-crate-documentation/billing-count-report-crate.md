# Billing Count Report Crate

## What does the Billing Count Report Crate do?

Our Billing Count Report Crate is designed to streamline and enhance the process of compiling billing counts from various integrations. This tool iterates through multiple integrations, collects relevant billing data, and generates a comprehensive report, ensuring accuracy, efficiency, and consistency.

### Why use the Billing Count Report Crate?

Streamline and aggregate billing data from multiple integrations and ensure consistency through automation.

## Crate prerequisites

Your [RMM integration](broken-reference) with Rewst must be set up before unpacking this Crate.

## Unpack the Billing Count Report Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for the `Billing Count Report Crate`.
3. Click on the Crate tile to begin unpacking.
4.  Click **Unpack Crate**.\
    \


    <figure><img src="../../../.gitbook/assets/image (46).png" alt=""><figcaption></figcaption></figure>
5. Scroll to the bottom of the page. Choose how you want the billing report delivered. Fill out the other required information, depending on your delivery method.
6. Click **Continue**.\
   \
   ![](<../../../.gitbook/assets/image (47).png>)
7. Click **Unpack**.

## Test the Crate

To test this Crate, you'll need to adjust the cron trigger's schedule to a few minutes in the future, then adjust it back to your regular schedule after the test. Alternatively, you could wait until the regularly scheduled run occurs and check your result, which would not require you to update the cron trigger schedule.\


1. Navigate to **Automations > Workflows**.
2. Search for `billing count` .
3. Click on the workflow to open it in the workflow builder.
4. Adjust the cron trigger's schedule to five minutes from your current time. The workflow will run on its own then. A ticket or email will be generated if the workflow is successful.

<figure><img src="../../../.gitbook/assets/image (49).png" alt=""><figcaption></figcaption></figure>

## Troubleshoot the Billing Count Report Crate

This workflow is meant to run from your parent organization only. If you’re seeing workflow failures for child organizations, disable the trigger for child organizations.

<figure><img src="../../../.gitbook/assets/image (48).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}

