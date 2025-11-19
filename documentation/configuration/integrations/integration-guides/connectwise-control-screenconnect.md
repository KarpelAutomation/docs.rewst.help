# ConnectWise ScreenConnect integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).

Note that ConnectWise ScreenConnect was previously known as ConnectWise Control. They are the same product, and our ConnectWise Control integration will soon be updated to reflect this name change within ConnectWise's branding.
{% endhint %}

## What does the ConnectWise ScreenConnect integration do?

Run commands on your ConnectWise ScreenConnect agents and get logs from your sessions.

## Set up the ConnectWise ScreenConnect integration

### Setup steps in ConnectWise ScreenConnect

{% hint style="danger" %}
**Heads up!**

ConnectWise ScreenConnect utilizes the `CustomProperty1` property—typically referenced as `Company` within the UI—to store the organization name.

If you are using this property for another purpose, you will need to update the `CustomProperty1` property to store the organization name.
{% endhint %}

1. Click the **Admin** button on the left-hand side of the screen on your ConnectWise ScreenConnect instance.
2. Click **Security** in the left side menu.
3. Click **Show User Table** under the **Internal** submen&#x75;**.**
4. Click **Create User**.
5.  **Fill out** the required data.\


    <figure><img src="../../../../.gitbook/assets/Screenshot 2025-03-03 at 4.30.25 PM.png" alt="" width="375"><figcaption></figcaption></figure>
6. Ensure that you check on the following minimum permissions:\
   ![](<../../../../.gitbook/assets/image (243).png>)
   1. Global permissions: **ManageSessionGroups**
   2. Scoped permissions:
      * **ViewSessionGroup**
      * **ViewSessionGuestScreenshot**
      * **JoinSession**
      * **TransferSession**
      * **EditSession**
      * **RunCommandOutsideSession**
      * **AddNoteToSession**
      * **RemoveNoteFromSession**
      * **RemoveCommandFromSession**
      * **ReinstallSession**
      * **TransferFiles**
      * **PrintinSession**
      * **RunSharedToolAsUser**
      * **RunSharedToolAsSystemSilently**
      * **RunPersonalToolAsUser**
      * **RunPersonalToolAsSystemSilently**
      * **HostSessionWithoutConsent**
      * **ManageCredentials**
      * **SwitchLogonSession**
      * **CreateDelegatedAccessToken**
      * **EnableBackstageLogonSession**
      * **RespondToElevationRequest**
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
6. Click **Save Configuration.**
7.  Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;



{% hint style="warning" %}
You may run into a scenario where refesh options is not working. If this is the case, you can change the root session group to _All Machines_ to see if it pulls in customers. If this doesn't resolve the issue, you can contact support as found here: [support-priorities.md](../../../../support-and-community/roc-support/support-priorities.md "mention")
{% endhint %}

{% hint style="danger" %}
**ConnectWise ScreenConnect Failed Authentication**&#x20;

When using the `ConnectWise Control - ConnectWise Control API Request` action, the token can expire in transit when ConnectWise is sending the response back to Rewst.&#x20;

This will then result in a failed authentication against the user set in the integration. When there are a number of these failed authentication attempts in rapid succession, the user account will get locked out.

This is most commonly seen in cases where a workflow is scheduled to run across multiple computers at multiple orgs for a customer.&#x20;
{% endhint %}

## Use custom PowerShell scripts with your RMM integration

This brand of RMM allows PowerShell scripts to be passed via API. To report the script back to Rewst, you'lll need to add a manual webhook action. We recommend using the run PowerShell script subworkflow to handle this for you and if using custom scripts you will need to add this to bottom to ensure the call back to Rewst is made.

```
$postData = $PS_Results | ConvertTo-Json Invoke-RestMethod -Method 'Post' -Uri $post_url -Body $postData -ContentType 'application/json; charset=utf-8
```

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

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

### Get session

Used to help you debug issues with your PowerShell scripts by providing logs associated with a specific connection ID.

**Parameters**[**​**](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#parameters)

| Name            | Type                                                                                                        | Description                                                              |
| --------------- | ----------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| `Session`       | [Session](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session)             | **Required**. The session ID.                                            |
| `Connection ID` | `String`                                                                                                    | **Required**. The Connection ID provided by the "Invoke Command" Action. |
| `Session Group` | [Session Group](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session-group) | **Required**. The session group.                                         |
| `Event Types`   | `Array[[Event Type](#event-types]`                                                                          | **Required**. The event types to filter the logs.                        |

### Invoke command

Action to run a command template on an agent.

#### Invoke command parameters[​](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#invoke-command-parameters) <a href="#invoke-command-parameters" id="invoke-command-parameters"></a>

| Name            | Type                                                                                                        | Description                                                                                    |
| --------------- | ----------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `session_id`    | [Session](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session)             | **Required**. The session ID.                                                                  |
| `session_group` | [Session Group](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session-group) | **Required**. The session group.                                                               |
| `script`        | `Template`                                                                                                  | **Required**. The Powershell script template. You can create this under Automations → Scripts. |

## Reference types

#### Session[​](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session) <a href="#session" id="session"></a>

A reference to a "Session" within ConnectWise ScreenConnect.

#### Session group[​](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#session-group) <a href="#session-group" id="session-group"></a>

A reference to a session group within ConnectWise ScreenConnect.

#### Event types[​](http://localhost:3000/docs/integrations/Remote%20Control/connectwise-control#event-types) <a href="#event-types" id="event-types"></a>

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
