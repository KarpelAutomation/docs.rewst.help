# Configure Organizational Variables Crate

{% hint style="info" %}
If you're new to organization variables, read through [our documentation on them here](../../configuration/organization-variables.md) before unpacking this Crate.&#x20;

If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find this Crate in our Crate Marketplace.
{% endhint %}

## What does the Configure Organizational Variables Crate do?

The Configure Organizational Variables Crate is used to help you set the essential variables that will allow Rewst's prebuilt Crates to work.&#x20;

## Unpack the Configure Organizational Variables Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Configure Organizational Variables` .\
   \
   ![](<../../../.gitbook/assets/image (143).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6.  Enter your **Time Saved**.<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-04-10 at 5.02.35 PM.png" alt=""><figcaption></figcaption></figure>
7. Click **Unpack**.

{% hint style="success" %}
Unpacking this Crate adds two forms to your Rewst platform.

* \[ROC] Rewst: Configure Organizational Variables
* \[ROC] Rewst: Simple Organizational Variable Form for Child Accounts
{% endhint %}

<figure><img src="../../../.gitbook/assets/Screenshot 2024-02-29 at 2.26.18 PM.png" alt=""><figcaption></figcaption></figure>

### Use the forms

1. Navigate to **Automations > Forms > \[ROC] Rewst: Configure Organizational Variables**.
2. Click **⋮**.
3. Click **Usages > View Direct URLs**.
4. Choose your MSP URL.
5. Select **Standard** in the form options.
6. **Fill out** the form.&#x20;

{% hint style="info" %}
&#x20;Use the table at the bottom of this page for a definition of each field
{% endhint %}

<figure><img src="../../../.gitbook/assets/Screenshot 2024-02-29 at 2.28.19 PM.png" alt="" width="375"><figcaption></figcaption></figure>

### Set organization variables for suborganizations

To customize variables for client organizations:

1. Navigate to **Automations > Forms > \[ROC] Rewst: Simple Organizational Variable Form for Child Accounts**.
2. Click **⋮**.&#x20;
3. Click **Usages > View Direct URLs**.
4. Select the URL of the client you would like to configure.

<figure><img src="../../../.gitbook/assets/Screenshot 2024-02-29 at 2.30.14 PM.png" alt=""><figcaption></figcaption></figure>



#### PSA configuration

| Field label                            | Description                                                                                                                                     |
| -------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Default PSA                            | Select your PSA                                                                                                                                 |
| Default Ticket Location                | The board you want Rewst generated tickets to go onto                                                                                           |
| Default Ticket Status                  | The status when Rewst is actively working on a ticket                                                                                           |
| Ticket Status while Waiting for Input  | The status when Rewst is waiting for a techs input on a ticket, such as when waiting on a license to be purchased                               |
| Ticket Status when Workflow Complete   | The status when Rewst has finished the workflow and is ready for a tech to review                                                               |
| No Time in Tickets                     | <p>Only Use Notes: Will not add time entries to the ticket<br>Add Time Entries: Will add time entries into the ticket</p>                       |
| Default Tech ID                        | Define the Tech ID of the member that Rewst will impersonate for Time Entries                                                                   |
| Default Work Role                      | Define the Work Role for the Tech that Rewst will impersonate for Time Entries                                                                  |
| Default Work Type                      | Define the Work Type for the Tech that Rewst will impersonate for Time Entries                                                                  |
| Default Priority                       | Priority for Rewst created tickets                                                                                                              |
| Send From Address                      | Define the reply to address when sending emails to ensure replies automatically get created in your PSA. This will likely be your support email |

#### **Identity and access management**

| Field label                  | Description                                                                                                                                                                                                                                                        |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Default RMM                  | Select your RMM                                                                                                                                                                                                                                                    |
| Primary Identity Provider    | <p>Select what your organization uses for IDP.<br>Note if you use a hybrid setup with or with out ADsync you will want to select On-Prem</p>                                                                                                                       |
| Preferred Domain Controller  | Enter the domain controller's (DC) host name for Rewst to run PowerShell on — e.g., DC-01; fully qualified name not required. Note: Rewst auto-selects a DC for most RMMs, but you must specify one for N-able N-sight, N-able N-central, and ConnectWise Control. |
| Preferred ADConnect Server   | The name of the Server running ADConnect                                                                                                                                                                                                                           |
| On-Prem Exchange Server      | Name of the On-Prem Exchange Server (if you are not running On-Prem Exchange, leave blank)                                                                                                                                                                         |

#### Licensing and purchases

| Field label                      | Description                  |
| -------------------------------- | ---------------------------- |
| Microsoft Licensing Distributor  | Select your license provider |

#### Password management

| Field label                          | Description                                                                                                                               |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Store Password in Ticket             | Define whether to add the onboarding user one time password into the ticket internal notes. This is specific to the User Onboarding Crate |
| Onboarding - Password Save Location  | Select another location to create the user onboard password. Such as PSA, ItGlue, Hudu                                                    |
| PWPush URL                           | Add the URL for your PWPush if you have selected that option above                                                                        |

#### User onboarding and offboarding defaults&#x20;

{% hint style="warning" %}
#### These settings are specific to the User Onboarding and Offboarding Crates
{% endhint %}

| Field label                               | Description                                                                                                                                                                                                                                                                                |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| User Onboarding & Offboarding Defaultsand | These settings are specific to the user onboarding workflow                                                                                                                                                                                                                                |
| User Start-Date Behavior                  | <p>Start Automation Immediately: WIll create the user immediately regardless of the account creation date specified in the user onboarding form<br>Pause Workflow until Start Date Specified: Pause the workflow until the account creation date specified in the user onboarding form</p> |
| Type for Created New User Ticket          | Select the ticket type for a user onboard creation                                                                                                                                                                                                                                         |
| Subtype for Created New User Ticket       | Select the subtype for a user onboard creation                                                                                                                                                                                                                                             |
| Item for Created New User Ticket          | Select the item for the user onboard creation                                                                                                                                                                                                                                              |
| User Name Format                          | Select the username format for new users for your organization. Note you can specify a different username for each of your organizations with the "\[ROC] Rewst: Simple Organizational Variable Form for Child Accounts form"                                                              |
| No AD Sync                                | Check if you have an OnPrem AD with no Ad Sync                                                                                                                                                                                                                                             |
| Miscellaneous Settings                    |                                                                                                                                                                                                                                                                                            |
| Preferred Phone Number Format             | Select a Preferred Phone number format                                                                                                                                                                                                                                                     |
| M365 Usage Location                       | Select a default M365 Usage Location                                                                                                                                                                                                                                                       |
| New User Approval Email                   | If set, Rewst will send an email to this address requesting approval before it continues the user onboarding workflow.                                                                                                                                                                     |

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
