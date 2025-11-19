# Thread Automations Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Thread Automations Crate do?

Our Thread Automations Crate establishes a flexible integration framework between Thread and Rewst, enabling various automated processes through webhook integration. Currently, the crate focuses on onboarding automation, capturing user information submitted through Thread Intents and passing it to Rewst workflows for further processing.

* Uses the dedicated intent in Thread that collects essential information for different automation scenarios
* Currently uses the default Rewst onboarding automation that collects First Name, Last Name, Username, and Email Address
* Securely transmits collected data to Rewst via webhooks when an Intent is completed
* Enables automatic processing of tasks in Rewst based on the submitted information
* Provides confirmation feedback to users about their submitted information directly in the PSA ticket
* Maintains security through secret key validation between Thread and Rewst

This Crate doesn’t perform validation on the data beyond what Thread provides natively. Any complex validation logic or business rules would need to be implemented in the Rewst workflow that receives the webhook data.

## Unpack the Thread Automations Crate

### Set up steps in Thread

Note that the individual setting up the integration must be an admin in Thread.

1. Log into your Thread account.
2. Navigate to [**Thread Admin**](https://admin.getthread.com/) **> Magic AI > Magic Agents > Catalog**.
3. Click **Create Intent**.
4. Enter the intent details into their relevant fields exactly as follows:
   * **Intent Name**: `Rewst - Onboarding` \
     ![](<../../../.gitbook/assets/Screenshot 2025-06-09 at 1.33.24 PM.png>)
   *   **Describe the intent**: `An intent to assist in building new intents within the Magic Agent service catalog by gathering necessary information, including crafting effective prompts for arguments. Think logically about the user’s intent and craft questions to fill in more about the issue or request, like features IT might need. The goal is to ask the right questions to gather accurate information so a Tier 2 IT Service Tech will have all they need to resolve the issue. Keep questions succinct, minimal, logically ordered, and ensure logical consistency.` \
       \


       <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-10 at 10.08.53 AM.png" alt=""><figcaption></figcaption></figure>
   * **Visibility filters**: Choose the **Specific clients** option to select your internal or test companies, or modify to specific client types as needed. If you would rather, choose **All clients**.&#x20;
5.  Click **+Add form field** three times to create a total of four form fields, including the one that was available when you first created the intent. Name them each as follows:

    1. `First Name`
    2. `Last Name`
    3. `Username`
    4. `Email Address`&#x20;

    Note that adding additional fields beyond what is indicated here will require you to configure the Thread wrapper to pass into the Rewst workflow.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-06-10 at 10.10.59 AM.png" alt=""><figcaption></figcaption></figure>

6. Optionally, enter `Reply with the summary of what they provided against the field names, so for instance telling us that the first name they provided was X` in the **Describe what the AI should reply** field of the **External Reply (Optional)** submenu.

<figure><img src="../../../.gitbook/assets/Screenshot 2025-06-10 at 10.11.30 AM.png" alt=""><figcaption></figcaption></figure>

7. Keep your browser window with Thread open. In a new tab or window, proceed to steps in Rewst. You'll come back to Thread later.

### Set up steps in Rewst

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Thread Automation`.
3. Click on the Crate tile to open its details page. \
   \
   ![](<../../../.gitbook/assets/image (192).png>)
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter your time saved.
7.  Click to expand the **Webhook** accordion menu. Ensure that **Enabled** is toggled on.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-04-29 at 11.42.58 AM.png" alt=""><figcaption></figcaption></figure>
8. Choose which organizations this Crate should be applied to in the Activate for Organizations drop-down selector, if desired.
9. Click **Unpack**.
10. Navigate to **Configuration > Organization Variables**.
11. Create an [organization variable](../../configuration/organization-variables.md#what-is-an-organization-variable) with the name `rewst_thread_webhook_secret` . Change the category of the organization variable to **Secret**.  Enter a secure password into the **Value** field. Copy this password value somewhere secure. You'll need it for later set up steps in both Rewst and Thread.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-10 at 11.05.39 AM.png" alt=""><figcaption></figcaption></figure>
12. Navigate to **Automations > Workflows**.&#x20;
13. Search for `[Rewst - Crate] Thread Automations`.
14. Click on the workflow to enter the workflow builder view.
15. Click ![](<../../../.gitbook/assets/image (196).png>) to open the trigger.
16. Click **View Webhook URLs** under **Trigger Configuration**.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-10 at 10.42.00 AM.png" alt=""><figcaption></figcaption></figure>
17. Copy the URL. You'll need this URL for further set up steps in Thread.
18. Find the **Secret Key** drop-down selector under that **Trigger Parameters** submenu. Set the organization variable you created earlier. \


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-10 at 11.22.13 AM.png" alt=""><figcaption></figcaption></figure>
19. Click **Submit**.

### Additional setup steps in Thread

1.  Enter the webhook URL copied from Rewst into the **API URL field** of the **Automation (Optional)** submenu.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-10 at 10.44.07 AM.png" alt=""><figcaption></figcaption></figure>
2. Enter the secret password copied from Rewst into the **Headers (Optional) Value of the header** field. Enter `x-rewst-secret` into the **Key of the header** field.
3. Ensure that MagicAI is enabled for the client you are using in Thread.
4. Click **Save** in the top right corner of the intent screen.

## Use the Crate

### **Intent fields**

You can modify the fields collected in the Thread Intent to match your specific requirements. The default onboarding setup includes First Name, Last Name, Username, and Email Address. Note that adding additional fields will require you to configure the Thread wrapper to pass into the Rewst workflow.

### **Thread reply message**

You can customize the External Reply field in the Intent to provide personalized confirmation messages to users after they submit their information.



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
