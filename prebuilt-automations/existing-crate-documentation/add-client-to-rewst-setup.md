# Add Client to Rewst Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Add Client to Rewst Crate in our Crate Marketplace.
{% endhint %}

{% hint style="info" %}
### There are two ways to add clients to Rewst:

1. With the Add Client to Rewst Crate.
2. Through your CSP integration.

This page will cover how to do this with the Add Client to Rewst Crate. [You can find alternative instructions for the second method here](../../documentation/user-management/adding-a-new-client-to-rewst.md).
{% endhint %}

## What does the Add Client to Rewst Crate do?

The Add Client to Rewst Crate lets you easily use a form to add a new client to Rewst, and map your installed integrations to the organization.

### Set up the Add Client to Rewst Crate

1. Navigate to **Crates** **>** **Crate Marketplace** in the Rewst platform.
2.  Search for **Add Client to Rewst**.

    \
    \
    ![](<../../.gitbook/assets/Screenshot 2025-03-07 at 9.50.14 AM.png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Add your **Time Saved**.
7. Click **Unpack**.

<figure><img src="../../.gitbook/assets/unpack-client-add-crate.gif" alt=""><figcaption><p>Adding the Crate</p></figcaption></figure>

### How to get to the form

After unpacking, use the Crate's form to add a client.

1. **Navigate to** **Automations > Forms**.
2. Find the new form. Use search to help with this, if your form list is lengthy.
3. Click on the **Options** menu to the right of the form.
4. Click **Usages**.
5. Click **View Direct URL**.
6. Click or copy the form URL to access the form.

### What you need to fill out the form

Once you're in the form, you'll see the following fields:

* **Company Name**: The name of the company you want to add to Rewst
* **Customer Primary Domain**: The domain of the company. For example, `Rewstyhouse.com .`

This form will also give you the option to map the following installed integration categories:

* **PSA**
* **RMM**
* **Network Monitoring & Remote Admin**
* **Documentation & CRM**
* **Licensing & Distribution**
* **Backup & Security**

With the above filled out and configured, you can add or invite users to the new site as the following roles:

* **Forms-only User**: Only able to view Rewst forms
* **Member Users**: Able to view forms, results, and create workflows in Rewst

<figure><img src="../../.gitbook/assets/filling-out-the-form.gif" alt=""><figcaption><p>Filling out the Form</p></figcaption></figure>

{% hint style="info" %}
**Organization Variables Needed**

Setting the following variables will allow a number of Crates (including the New User Add) to work without further client-specific setup:

* **Primary Identity Provider**: Azure Active Directory, On-prem AD, JumpCloud
* **New User Approval Email**: used if there needs to be an approver for new user creation
* **User Name Format**: Username Format for user creation Flast, First.Last etc
* **User Start-Date Behavior**: Document the start date in the ticket and create the user now, or pause workflow until the set user creation date
* **Do not attempt to create a new o365 mailbox**: used if you do not want a mailbox created for the user
{% endhint %}

### Finish up

Once your form is complete, you can submit your form.

{% hint style="warning" %}
**Make sure you map the CSP tenant for your customer**

You will then want to find the CSP tenant for your new customer and map it to the Rewst organization that you have created. You can do this by navigating to _Configuration_ → _Integrations_ → _Microsoft Cloud_ to find the relevant CSP tenant.
{% endhint %}

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
