# Customize PSA ticket triggers

## Introduction

In Rewst, setting specific trigger criteria for PSA Ticket triggers can be crucial to ensuring that workflows are initiated only under certain conditions. This page provides a step-by-step approach to customizing these triggers.

***

## Getting Started with Trigger Setup

### Create the workflow

In the Rewst platform:

1. Navigate to **Workflows > Create**.
2. Enter a workflow name, like `My First Webhook Trigger`.
3. Click **Submit** to proceed to a blank workflow creation screen.
4. Add a single [no-op](../../actions-in-rewst/core-actions.md#no-operation-noop) action to the canvas. Name it `BEGIN`. Click **Publish** to save your workflow. No other actions are needed, as you'll just be working with triggers.
5. Click **Add Trigger** at the top of your workflow builder.

<figure><img src="../../../../.gitbook/assets/image (17).png" alt=""><figcaption></figcaption></figure>

### **Create the trigger**

1. Name your trigger.
2. Toggle **Enable** on.
3. Choose the trigger type relevant to your particular PSA ticket system:
   1. ConnectWise PSA: **Ticket Record Saved**.
   2. Datto PSA: **Ticket Webhook**&#x20;
      1. Note: Ensure that webhooks are enabled as per [Rewst Documentation](https://docs.rewst.help/documentation/integrations/psa/autotask-datto-psa/webhook-configuration).
   3. Halo PS&#x41;**:** **New Ticket Record**.
4. Click on the graph button under the **Trigger Criteria** section.

<div align="left"><figure><img src="../../../../.gitbook/assets/image (18).png" alt="" width="404"><figcaption></figcaption></figure></div>

The trigger is now active and will capture data when a new ticket is submitted. This screen is listening for your ticket records to be saved, and will show you live results as they come in.

<figure><img src="../../../../.gitbook/assets/image (19).png" alt=""><figcaption></figcaption></figure>

***

## Testing the Trigger with a PSA Ticket

To see the trigger in action follow the below steps&#x20;

### **Creating a Test Ticket**

* In your PSA system, create and classify a new ticket with desired criteria.
* Submit the ticket.
* You should see the ticket record appear in Rewst.

<figure><img src="../../../../.gitbook/assets/image (20).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Once the ticket is visible in Rewst, click the pause button to stop more tickets from coming in while you're building your trigger criteria.
{% endhint %}

### **Selecting Criteria**

Find and click the values in the ticket you want as trigger criteria. They will have their corresponding path entered into the Trigger Criteria on the right.

<figure><img src="../../../../.gitbook/assets/image (21) (1).png" alt=""><figcaption></figcaption></figure>

***

## Finalizing and Implementing Trigger Criteria

### **Saving Your Criteria**

* After selecting all desired criteria, click `Save` then `Close`.
* Your trigger criteria are now set and visible.

### **Applying Criteria to Workflows**

* Copy these criteria values.
* Paste them into other workflows you are configuring.

<figure><img src="../../../../.gitbook/assets/image (22) (1).png" alt=""><figcaption></figcaption></figure>

***

## Conclusion

This process allows for precise control over when your workflows are triggered, enhancing the automation's effectiveness. Experiment with different criteria to tailor your workflows to specific needs.
