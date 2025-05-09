# ConnectWise ScreenConnect integration

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../multi-instance-integration/multi-instance-integration-setup.md).

Note that ConnectWise ScreenConnect was previously known as ConnectWise Control. They are the same product, and our ConnectWise Control integration will soon be updated to reflect this name change within ConnectWise's branding.
{% endhint %}

## ConnectWise ScreenConnect

Run commands on your ConnectWise ScreenConnect agents and get logs from your sessions.

{% hint style="danger" %}
**Heads up!**

ConnectWise ScreenConnect utilizes the `CustomProperty1` property—typically referenced as `Company` within the UI—to store the organization name.

If you are using this property for another purpose, you will need to update the `CustomProperty1` property to store the organization name.
{% endhint %}

## Setup

To allow Rewst access to your ConnectWise ScreenConnect, you'll need to create a new user and allow it access to your sessions. To add a new user:

### Setup steps in ConnectWise ScreenConnect

1. Click the **Admin** button on the left-hand side of the screen on your ConnectWise ScreenConnect instance.
2. Click **Security** in the left side menu.
3. Click **Show User Table** under the **Internal** submen&#x75;**.**
4. Click **Create User**.
5.  **Fill out** the required data.\


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-03 at 4.30.25 PM.png" alt=""><figcaption></figcaption></figure>
6. Ensure that you check on at minimum the **Control Admin** permission.
7. Make a note of the **username**, **password**, and **OTP** secret , which you'll need for setup steps in Rewst.
8. Click **Save User**.

{% hint style="warning" %}
The steps to generate your OTP secret will differ depending on your MFA tool. See [ConnectWise's own documentation here](https://docs.connectwise.com/ScreenConnect_Documentation/Get_started/Administration_page/Security_page/Enable_two-factor_authentication_for_host_accounts) for steps pertaining to your particular MFA method.
{% endhint %}

### Setup steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the Integrations page, search for the ConnectWise ScreenConnect integration.\
   \
   ![](<../../../../.gitbook/assets/Screenshot 2025-02-25 at 3.13.53 PM.png>)
3. Click on the integration tile to launch the **Configuration** setup page.
4. Under **Configuration**:
   1. Edit the **Name**
   2. Add an optional **Description** for your configuration.
   3. Check on **Is Default**.
5. Under **Parameters**:
   1. Enter your ConnectWise ScreenConnect domain in the **Hostname** field.
   2. Enter the password you created for your Rewst API user in the **Password** field.
   3. Enter the username for your Rewst user in the **Username** field.
   4. Enter the base32 OTP secret copied from ConnectWise ScreenConnect into the **TOTP Secret** field.
6.  Click **Save Configuration.**





{% hint style="warning" %}
You may run into a scenario where refesh options is not working. If this is the case, you can change the root session group to _All Machines_ to see if it pulls in customers. If this doesn't resolve the issue, you can contact support as found here: [support-priorities.md](../../../../support/roc-support/support-priorities.md "mention")
{% endhint %}

{% hint style="danger" %}
**ConnectWise ScreenConnect Failed Authentication**&#x20;

When using the `ConnectWise Control - ConnectWise Control API Request` action, the token can expire in transit when ConnectWise is sending the response back to Rewst.&#x20;

This will then result in a failed authentication against the user set in the integration. When there are a number of these failed authentication attempts in rapid succession, the user account will get locked out.

This is most commonly seen in cases where a workflow is scheduled to run across multiple computers at multiple orgs for a customer.&#x20;
{% endhint %}

## Troubleshoot the ConnectWise ScreenConnect integration

### Failed to refresh options: Error failed to get sessions

<figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-03 at 4.25.10 PM.png" alt="" width="375"><figcaption><p>The error message will appear in a red box across the configuration screen</p></figcaption></figure>



In ScreenConnect:

1. Create a session group named `All Machines by Company` and give it a sub group expression of `CustomProperty2`.
2. Create a session group called `All Machines` with no sub group expression.

In Rewst:

1. Navigate to the ConnectWise ScreenConnect integrations' configuration page.
2. Set the following values:
   1. Organization Subgroup Expression: `CustomProperty2`
   2. Root Session Group: `All Machines by Company`

View ConnectWise's own documentation for how to create a session group in the below video.

{% embed url="https://www.youtube.com/watch?v=f2L-eXBKT2U" %}

## Actions

### Get Session

Used to help you debug issues with your PowerShell scripts by providing logs associated with a specific connection ID.

**Parameters**[**​**](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#parameters)

| Name            | Type                                                                                                        | Description                                                              |
| --------------- | ----------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| `Session`       | [Session](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session)             | **Required**. The session ID.                                            |
| `Connection ID` | `String`                                                                                                    | **Required**. The Connection ID provided by the "Invoke Command" Action. |
| `Session Group` | [Session Group](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session-group) | **Required**. The session group.                                         |
| `Event Types`   | `Array[[Event Type](#event-types]`                                                                          | **Required**. The event types to filter the logs.                        |

### Invoke Command

Action to run a command template on an agent.

#### Invoke Command Parameters[​](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#invoke-command-parameters) <a href="#invoke-command-parameters" id="invoke-command-parameters"></a>

| Name            | Type                                                                                                        | Description                                                                                    |
| --------------- | ----------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `session_id`    | [Session](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session)             | **Required**. The session ID.                                                                  |
| `session_group` | [Session Group](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session-group) | **Required**. The session group.                                                               |
| `script`        | `Template`                                                                                                  | **Required**. The Powershell script template. You can create this under Automations → Scripts. |

## Reference Types

#### Session[​](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session) <a href="#session" id="session"></a>

A reference to a "Session" within ConnectWise ScreenConnect.

#### Session Group[​](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session-group) <a href="#session-group" id="session-group"></a>

A reference to a session group within ConnectWise ScreenConnect.

#### Event Types[​](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#event-types) <a href="#event-types" id="event-types"></a>

| Event                      | Value |
| -------------------------- | ----- |
| Connected                  | 10    |
| Disconnected               | 11    |
| CreatedSession             | 20    |
| EndedSession               | 21    |
| InitiatedJoin              | 30    |
| InvitedGuest               | 31    |
| AddedNote                  | 32    |
| QueuedReinstall            | 40    |
| QueuedUninstall            | 41    |
| QueuedInvalidateLicense    | 42    |
| QueuedWake                 | 43    |
| QueuedCommand              | 44    |
| QueuedMessage              | 45    |
| QueuedGuestInfoUpdate      | 46    |
| QueuedTool                 | 47    |
| QueuedForceDisconnect      | 48    |
| ProcessedReinstall         | 50    |
| ProcessedUninstall         | 51    |
| ProcessedInvalidateLicense | 52    |
| ProcessedWake              | 53    |
| ProcessedCommand           | 54    |
| ProcessedMessage           | 55    |
| ProcessedGuestInfoUpdate   | 56    |
| ProcessedTool              | 57    |
| ProcessedForceDisconnect   | 58    |
| ModifiedName               | 60    |
| ModifiedIsPublic           | 61    |
| ModifiedCode               | 62    |
| ModifiedHost               | 63    |
| ModifiedCustomProperty     | 64    |
| RanCommand                 | 70    |
| SentMessage                | 71    |
| SentPrintJob               | 80    |
| ReceivedPrintJob           | 81    |
| CopiedText                 | 82    |
| CopiedFiles                | 83    |
| DraggedFiles               | 84    |
| RanFiles                   | 85    |
| SentFiles                  | 86    |
