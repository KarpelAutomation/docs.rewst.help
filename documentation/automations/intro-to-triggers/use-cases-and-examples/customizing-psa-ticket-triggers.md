# Customize PSA ticket triggers

In Rewst, setting specific trigger criteria for PSA Ticket triggers can be crucial to ensuring that workflows are initiated only under certain conditions. This page provides a step-by-step approach to customizing these triggers.

## Get started with trigger setup

### Create the workflow

In the Rewst platform:

1. Navigate to **Automations > Workflows > Create Workflow**.
2. Enter a workflow name, like `My First Webhook Trigger`.
3. Click **Submit** to proceed to a blank Workflow Builder Canvas.
4. Add a single [no-op](../../actions-in-rewst/core-actions.md#no-operation-noop) action to the canvas. Name it `BEGIN`
5. Click **Deploy** to save your workflow. No other actions are needed, as you'll just be working with triggers.
6. Click <img src="../../../../.gitbook/assets/Screenshot 2026-04-17 at 4.41.26 PM.png" alt="" data-size="line"> **> Flow Control**.
7. Drag the yellow **Triggers** to the Canvas. This opens up the new trigger's **Trigger Settings** in the right side menu.

### **Create the trigger**

1. Name your trigger.
2. Toggle **Enabled** on.
3. Use the **Trigger Type** drop-down selector to choose the trigger type relevant to your particular PSA ticket system:
   1. ConnectWise PSA: **Ticket Record Saved**.
   2. Datto PSA: **Ticket Webhook**&#x20;
      1. Note: Ensure that webhooks are enabled as per [Rewst Documentation](https://docs.rewst.help/documentation/integrations/psa/autotask-datto-psa/webhook-configuration).
   3. Halo PS&#x41;**:** **New Ticket Record**.
4. Click the **Criteria** tab.
5. Click **+ Add Criterion**. Add your[ trigger criteria](../trigger-criteria.md).

<div align="left"><figure><img src="../../../../.gitbook/assets/Screenshot 2026-04-20 at 3.29.02 PM.png" alt=""><figcaption></figcaption></figure></div>

The trigger is now active and will capture data when a new ticket is submitted. This screen is listening for your ticket records to be saved, and will show you live results as they come in.

<figure><img src="../../../../.gitbook/assets/image (33).png" alt=""><figcaption></figcaption></figure>

## Test the trigger with a PSA ticket

To see the trigger in action follow the below steps&#x20;

### **Create a test ticket**

* In your PSA system, create and classify a new ticket with desired criteria.
* Submit the ticket.
* You should see the ticket record appear in Rewst.

{% hint style="info" %}
Once the ticket is visible in Rewst, click the pause button to stop more tickets from coming in while you're building your trigger criteria.
{% endhint %}

### **Select criteria**

Find and click the values in the ticket you want as trigger criteria. They will have their corresponding path entered into the Trigger Criteria on the right.

<figure><img src="../../../../.gitbook/assets/image (35).png" alt=""><figcaption></figcaption></figure>

## Finalize and implement trigger criteria

### **Save your criteria**

* After selecting all desired criteria, click `Save` then `Close`.
* Your trigger criteria are now set and visible.

### **Apply criteria to workflows**

* Copy these criteria values.
* Paste them into other workflows you are configuring.

<div><figure><img src="../../../../.gitbook/assets/Screenshot 2026-04-20 at 3.33.36 PM.png" alt=""><figcaption></figcaption></figure> <figure><img src="../../../../.gitbook/assets/Screenshot 2026-04-20 at 3.33.41 PM.png" alt=""><figcaption></figcaption></figure></div>
