# Synnex Integration Setup

## Synnex Integration Setup

1. **Log in** to ECexpress with your Reseller Account Information.
   * Once signed in you’ll be on the ECexpress landing page.
2. **Select** the tab in the top row of the page or the tile on the screen to access StreamOne Stellr.
   * Now you should see the StreamOne Stellr Marketplace Page.
3. **Access** the Developer Resource Page using the integration dropdown.
   * You will then land on the StreamOne Stellr Comprehensive Reseller API Hub.
4. **Select** the “My Account” Button in the upper-right-hand corner of the page to access your API credentials.
5. **Navigate** to the "Client Credentials" tab to find the Client Credentials of the current user.
6. **Choose** whether you want to use the Sandbox or Production environment.
7. **Copy** the Client ID and Client Secret into the appropriate fields in the Synnex pack configuration.
8. **Click** "Save" to save the configuration.

We'll run a quick test to make sure everything is working.



## Synnex Integration Limitations

{% hint style="danger" %}
Note that in order to purchase licences via the New User Employee automation, you must follow the below instructions
{% endhint %}

### **The Problem**

When you purchase a licence, we validate the number of licences that are available in the Microsoft Tenant - the Graph API returns the quantity, SkuID and a couple of other properties related to the licence.

When you need to purchase a licence via your distributor, such as Synnex, we need to match that licence to the product and/or subscription in the distributor.  Some distributors have a way to say the XYZ SkuID is the ABC Subscription which then allows us to match, and therefore update the relevant subscription.

Currently, Synnex does not have a way for us to match the licence in M365, to their own product or subscription.

### **The Fix in Theory**

This limitation on the Synnex end, means we have to give you a choice about which subscription you want to update.  There are benefits here, such as you being able to select the NCE Annual Sub vs the NCE Monthly Sub. &#x20;

The fix is to utilise a field on the New User form that returns the subscriptions from Synnex itself, and choose which is the relevant sub you want to update.

### **The Actual Fix**

There is a single requirement, an Org Variable to be created either at the MSP Level (with default ticked) or an Org Var created at the customer level.  The former means that the field will appear for all customers, the latter will just appear for the single org you select.

#### Step 1: Create the Org Var

`Org Variable Name: licencing_choose_subscription`

`Org Variable Value:` `1`

<figure><img src="https://i.ibb.co/pdTk7jk/Peek-2024-05-13-23-36.gif" alt=""><figcaption><p>Create the Org Var Gif</p></figcaption></figure>

<figure><img src="https://i.ibb.co/2n8XCwy/Adam-Synnex.png" alt=""><figcaption><p>Org Var Example - All Customers</p></figcaption></figure>

#### Step 2: Choose the Subscription

Once the Org Var has been created, navigate to the New User form as normal.  You will notice a new field, as outlined in the image below.

<figure><img src="https://i.ibb.co/P1TkvTK/Screenshot-20240513-234203.png" alt=""><figcaption><p>Example Sub via Synnex</p></figcaption></figure>

{% hint style="warning" %}
Note there is a limitation on only being able to select a single licence at this stage, so we correctly increase the correct sub.&#x20;
{% endhint %}

Ensure that you correctly select the Direct M365 License Assignment, which is from the M365 tenant itself and reflects the quantity.  In Licence Subscription, ensure that you select the Sub returned from Synnex that matches the one you want to increase.&#x20;

#### Step 3: Enjoy automatic licence purchases via Synnex!



