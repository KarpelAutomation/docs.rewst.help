# Add Client to Rewst Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Just in Time Admin Access Crate in our Crate Marketplace.
{% endhint %}

{% hint style="info" %}
### There are two ways to add clients to Rewst:

1. With the _Add Client to Rewst_ Crate.
2. Through your CSP integration.

This article will cover how to do this with the _Add Client to Rewst_ Crate. [You can find alternative instructions here](../../documentation/user-management/adding-a-new-client-to-rewst.md).
{% endhint %}



### Set up the Add Client to Rewst Crate

1. **Go to** _Crates_ → _Crate Marketplace_ in the app.
2. **Click** on the _Add Client to Rewst_ Crate.
3. (Optional) **Change** the name of the Workflow to suit your needs.
4. **Click** _Unpack_ at the bottom.

<figure><img src="../../.gitbook/assets/unpack-client-add-crate.gif" alt=""><figcaption><p>Adding the Crate</p></figcaption></figure>

### How to get to the form

You can get to the form to add a client with the following:

1. **Go to** _Automations_ → _Forms_.
2. **Find** the new Form.
   * If you have many forms, it's possible it will be on another page. You can use the search to help find it.
3. **Click** on the _Options_ menu to the right of the form.
4. **Click** _Usages_.
5. **Click** _View Direct URL_.
6. **Click** or **Copy** the form URL to access the form.

### What you need to fill out the form

Once you're in the form, you will see the following fields:

* **Company Name**: The Name of the company you want in Rewst
* **Customer Primary Domain**: The domain of the company (ex. `Rewstyhouse.com`)

This form will also give you the option to map the following installed integration categories:

* **PSA**
* **RMM**
* **Network Monitoring & Remote Admin**
* **Documentation & CRM**
* **Licensing & Distribution**
* **Backup & Security**

With the above filled out and configured, you can add or invite users to the new Site as the following Roles:

* **Forms-only User**: Only able to view Rewst Forms
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

Once your form is complete you can submit your form.

{% hint style="info" %}
**Make sure you map the CSP tenant for your customer**

You will then want to find the CSP tenant for your new customer and map it to the Rewst organization that you have created. You can do this by navigating to _Configuration_ → _Integrations_ → _Microsoft Cloud_ to find the relevant CSP tenant.
{% endhint %}

You are now set up and ready to run workflows for your customer!
