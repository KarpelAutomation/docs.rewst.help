# Slide integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Slide integration do?

Our Slide integration enables MSPs to automate critical backup and disaster recovery operations using Rewst workflows. By integrating with Slide.tech, users can streamline tasks such as agent deployment, pre- and post-update backups, system verification, and monitoring. This ensures systems are always protected, reduces manual overhead, and improves responsiveness to backup issues or system outages.

### Why use the Slide integration?

Common uses include:

* Automatically installing the Slide agent on new or reprovisioned systems
* Initiating backups before and after scheduled software updates to create restore points
* Verifying that updates were successfully applied and flagging discrepancies
* Monitoring offline endpoints and spinning up resources that have remained inactive
* Detecting backup failures and triggering escalations or automated remediation steps

## Set up the Slide integration

### Set up steps in Slide

1. Log in to your [Slide Console](https://console.slide.tech/).
2. Navigate to **My Settings** **> API**.
3.  Click **+ CREATE API TOKEN**.\
    <br>

    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-04-23 at 3.26.52 PM.png" alt=""><figcaption></figcaption></figure>
4. Enter a name that lets you know the token is being used for Rewst into the **Name** field of the dialog that appears.
5. Click **Create**.
6. Copy the API token. Note that the token will only be displayed once, and cannot be retrieved once the dialog is closed. You'll need this token for the rest of the set up steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the integrations page, search for the `Slide` integration.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-04-23 at 3.30.55 PM.png>)<br>
3. Click on the integration tile to launch the configuration setup page.
4. Paste the API token copied from Slide into the **API Token** field.
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

## Test the integration

Saving your configuration during integration setup automatically triggers a test API call to verify that your setup is correct. If something is wrong with your credentials and the integration fails, you'll receive an error message in the Rewst platform.

{% hint style="success" %}
Got an idea for a new integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Slide integration actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).
{% endhint %}

Slide's complete documentation can be found [here](https://docs.slide.tech/api/).

| Category            | Action                 | Description                                                            |
| ------------------- | ---------------------- | ---------------------------------------------------------------------- |
| **Account**         | List Accounts          | Returns a list of accounts                                             |
| **Account**         | Get Account            | Returns details for a specific account                                 |
| **Account**         | Update Account         | Updates an account's details                                           |
| **Agents**          | List Agents            | Returns a list of agents                                               |
| **Agents**          | Get Agent              | Returns details for a specific agent                                   |
| **Agents**          | Update Agent           | Updates an agent's details                                             |
| **Agents**          | Create Agent           | Create an agent for an auto-pair installation                          |
| **Agents**          | Pair Agent             | Pairs an unpaired agent to a device using a pair code                  |
| **Alerts**          | List Alerts            | Returns a list of alerts                                               |
| **Alerts**          | Get Alert              | Returns details for a specific alert                                   |
| **Alerts**          | Update Alert           | Updates an alert's details                                             |
| **Backups**         | List Backups           | Returns a list of backups                                              |
| **Backups**         | Start Backup           | Initiates a new backup                                                 |
| **Backups**         | Get Backup             | Returns details for a specific backup                                  |
| **Clients**         | List Clients           | Returns a list of clients                                              |
| **Clients**         | Create Client          | Creates a new client                                                   |
| **Clients**         | Delete Client          | Deletes a specific client                                              |
| **Clients**         | Get Client             | Returns details for a specific client                                  |
| **Clients**         | Update Client          | Updates a client's details                                             |
| **Devices**         | List Devices           | Returns a list of devices                                              |
| **Devices**         | Get Device             | Returns details for a specific device                                  |
| **Devices**         | Update Device          | Updates a device's details                                             |
| **File Restores**   | List File Restores     | Returns a list of file restores                                        |
| **File Restores**   | Create File Restore    | Initiates a new file restore                                           |
| **File Restores**   | Delete File Restore    | Deletes a specific file restore                                        |
| **File Restores**   | Get File Restore       | Returns details for a specific file restore                            |
| **File Restores**   | Browse File Restore    | Description coming soon...                                             |
| **Generic Request** | Slide API Request      | Generic action for making authenticated requests against the Slide API |
| **Image Restores**  | List Image Exports     | Returns a list of image exports                                        |
| **Image Restores**  | Create Image Export    | Initiates a new image export                                           |
| **Image Restores**  | Delete Image Export    | Deletes a specific image export                                        |
| **Image Restores**  | Get Image Export       | Get a specific image export                                            |
| **Image Restores**  | Browse Image Export    | Description coming soon...                                             |
| **Snapshots**       | List Snapshots         | Returns a list of snapshots                                            |
| **Snapshots**       | Get Snapshot           | Returns details for a specific snapshot                                |
| **Users**           | List Users             | Returns a list of users                                                |
| **Users**           | Get User               | Returns details for a specific user                                    |
| **Vm Restores**     | List Virtual Machines  | Returns a list of virtual machine restores                             |
| **Vm Restores**     | Create Virtual Machine | Initiates a new virtual machine restore                                |
| **Vm Restores**     | Delete Virtual Machine | Deletes a specific virtual machine restore                             |
| **Vm Restores**     | Get Virtual Machine    | Returns details for a specific virtual machine restore                 |
| **Vm Restores**     | Update Virtual Machine | Updates details of a virtual machine restore                           |

