# Twilio integration setup

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## Overview

When you first sign up with Twilio, you have one account, your main account; however, you can also create subaccounts. Your main account will have an Account SID and Auth Token that Rewst will use to authenticate. When using Twilio actions within workflows, you can specify the Account SID to be used for a particular action.

### Setting up the API account

1. **Log in** to the [Twilio Console](https://console.twilio.com/).
2. **Copy** your main **Account SID** and **Auth Token.**

### Configuring the Integration

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Click** **on** the _"Integrations"_ menu on the left sidebar.
3. **Click** or search for "Twilio".
4. **Enter** your main **Account SID** and **Auth Token** from step 2 in "Setting up the API account".

### Setting up the Messaging Service

1. **Log in** to the [Twilio Console](https://console.twilio.com/).
2. **Go to** _Messaging_ -> _Services_
3. **Click** _Create Messaging Service_
4. **Type** Rewst in the messaging service-friendly name
5. **Click** _Create Messaging Service_&#x20;
6. **Click** _add sender_
7. **Select** _Phone Number_
8. **Click** _Continue_
9. **Select** the phone number you would like to SMS from Rewst
10. **Click** _Add phone numbers_
11. **Click** _Step 3 Set up integration_
12. **Click** _Complete Messaging Service Set up_
13. **Click** _View My New Messaging Service_
14. **Copy** the Messaging Service SID

### Configure the Rewst Organizational Variables

1. **Log in** to the [Rewst platform](https://app.rewst.io/).
2. **Go to** _Configuration_ -> _Organization Variables_

#### Configure Messaging Service SID

1. **Click** the add button (+ icon)&#x20;
2. **Set** the following for your organization variable
   * **Name**: `messaging_service_sid`&#x20;
   * **Value**: Your Messaging Service SID
   * **Category**: general
   * **Organization**: Select your organization
3. **Click** save (checkmark icon)

#### **Configure Send SMS to User**

1. **Click** the add button (+ icon)&#x20;
2. **Set** the following for your organization variable
   * **Name**: `send_sms_to_user`&#x20;
   * **Value**: `1`
   * **Category**: general
   * **Organization**: Select your organization
3. **Click** save (checkmark icon)

<figure><img src="../../../../../.gitbook/assets/Screenshot 2024-03-12 at 1.17.09 PM.png" alt=""><figcaption></figcaption></figure>

## Actions and endpoints



| Category                  | Action                                                | Description                                                                                                                                                         |
| ------------------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Accounts**              | List Account                                          | Retrieves a collection of Accounts belonging to the account used to make the request                                                                                |
| **Accounts**              | Create Account                                        | Create a new Twilio Subaccount from the account making the request                                                                                                  |
| **Accounts**              | Fetch Account                                         | Fetch the account specified by the provided Account Sid                                                                                                             |
| **Accounts**              | Update Account                                        | Modify the properties of a given Account                                                                                                                            |
| **Addresses**             | List Address                                          |                                                                                                                                                                     |
| **Addresses**             | Create Address                                        |                                                                                                                                                                     |
| **Addresses**             | List Dependent Phone Number                           |                                                                                                                                                                     |
| **Addresses**             | Fetch Address                                         |                                                                                                                                                                     |
| **Addresses**             | Update Address                                        |                                                                                                                                                                     |
| **Addresses**             | Delete Address                                        |                                                                                                                                                                     |
| **Applications**          | List Application                                      | Retrieve a list of applications representing an application within the requesting account                                                                           |
| **Applications**          | Create Application                                    | Create a new application within your account                                                                                                                        |
| **Applications**          | Fetch Application                                     | Fetch the application specified by the provided sid                                                                                                                 |
| **Applications**          | Update Application                                    | Updates the application's properties                                                                                                                                |
| **Applications**          | Delete Application                                    | Delete the application by the specified application sid                                                                                                             |
| **Authorizedconnectapps** | List Authorized Connect App                           | Retrieve a list of authorized-connect-apps belonging to the account used to make the request                                                                        |
| **Authorizedconnectapps** | Fetch Authorized Connect App                          | Fetch an instance of an authorized-connect-app                                                                                                                      |
| **Availablephonenumbers** | List Available Phone Number Country                   |                                                                                                                                                                     |
| **Availablephonenumbers** | Fetch Available Phone Number Country                  |                                                                                                                                                                     |
| **Availablephonenumbers** | List Available Phone Number Local                     |                                                                                                                                                                     |
| **Availablephonenumbers** | List Available Phone Number Machine To Machine        |                                                                                                                                                                     |
| **Availablephonenumbers** | List Available Phone Number Mobile                    |                                                                                                                                                                     |
| **Availablephonenumbers** | List Available Phone Number National                  |                                                                                                                                                                     |
| **Availablephonenumbers** | List Available Phone Number Shared Cost               |                                                                                                                                                                     |
| **Availablephonenumbers** | List Available Phone Number Toll Free                 |                                                                                                                                                                     |
| **Availablephonenumbers** | List Available Phone Number Voip                      |                                                                                                                                                                     |
| **Balance**               | Fetch Balance                                         | Fetch the balance for an Account based on Account Sid. Balance changes may not be reflected immediately. Child accounts do not contain balance information          |
| **Calls**                 | List Call                                             | Retrieves a collection of calls made to and from your account                                                                                                       |
| **Calls**                 | Create Call                                           | Create a new outgoing call to phones, SIP-enabled endpoints or Twilio Client connections                                                                            |
| **Calls**                 | Create Call Feedback Summary                          | Create a FeedbackSummary resource for a call                                                                                                                        |
| **Calls**                 | Fetch Call Feedback Summary                           | Fetch a FeedbackSummary resource from a call                                                                                                                        |
| **Calls**                 | Delete Call Feedback Summary                          | Delete a FeedbackSummary resource from a call                                                                                                                       |
| **Calls**                 | List Call Event                                       | Retrieve a list of all events for a call.                                                                                                                           |
| **Calls**                 | Fetch Call Feedback                                   | Fetch a Feedback resource from a call                                                                                                                               |
| **Calls**                 | Update Call Feedback                                  | Update a Feedback resource for a call                                                                                                                               |
| **Calls**                 | List Call Notification                                |                                                                                                                                                                     |
| **Calls**                 | Fetch Call Notification                               |                                                                                                                                                                     |
| **Calls**                 | Create Payments                                       | create an instance of payments. This will start a new payments session                                                                                              |
| **Calls**                 | Update Payments                                       | update an instance of payments with different phases of payment flows.                                                                                              |
| **Calls**                 | List Call Recording                                   | Retrieve a list of recordings belonging to the call used to make the request                                                                                        |
| **Calls**                 | Create Call Recording                                 | Create a recording for the call                                                                                                                                     |
| **Calls**                 | Fetch Call Recording                                  | Fetch an instance of a recording for a call                                                                                                                         |
| **Calls**                 | Update Call Recording                                 | Changes the status of the recording to paused, stopped, or in-progress. Note: Pass `Twilio.CURRENT` instead of recording sid to reference current active recording. |
| **Calls**                 | Delete Call Recording                                 | Delete a recording from your account                                                                                                                                |
| **Calls**                 | Create Siprec                                         | Create a Siprec                                                                                                                                                     |
| **Calls**                 | Update Siprec                                         | Stop a Siprec using either the SID of the Siprec resource or the `name` used when creating the resource                                                             |
| **Calls**                 | Fetch Call                                            | Fetch the call specified by the provided Call SID                                                                                                                   |
| **Calls**                 | Update Call                                           | Initiates a call redirect or terminates a call                                                                                                                      |
| **Calls**                 | Delete Call                                           | Delete a Call record from your account. Once the record is deleted, it will no longer appear in the API and Account Portal logs.                                    |
| **Conferences**           | List Conference                                       | Retrieve a list of conferences belonging to the account used to make the request                                                                                    |
| **Conferences**           | List Participant                                      | Retrieve a list of participants belonging to the account used to make the request                                                                                   |
| **Conferences**           | Create Participant                                    |                                                                                                                                                                     |
| **Conferences**           | Fetch Participant                                     | Fetch an instance of a participant                                                                                                                                  |
| **Conferences**           | Update Participant                                    | Update the properties of the participant                                                                                                                            |
| **Conferences**           | Delete Participant                                    | Kick a participant from a given conference                                                                                                                          |
| **Conferences**           | List Conference Recording                             | Retrieve a list of recordings belonging to the call used to make the request                                                                                        |
| **Conferences**           | Fetch Conference Recording                            | Fetch an instance of a recording for a call                                                                                                                         |
| **Conferences**           | Update Conference Recording                           | Changes the status of the recording to paused, stopped, or in-progress. Note: To use `Twilio.CURRENT`, pass it as recording sid.                                    |
| **Conferences**           | Delete Conference Recording                           | Delete a recording from your account                                                                                                                                |
| **Conferences**           | Fetch Conference                                      | Fetch an instance of a conference                                                                                                                                   |
| **Conferences**           | Update Conference                                     |                                                                                                                                                                     |
| **Connectapps**           | List Connect App                                      | Retrieve a list of connect-apps belonging to the account used to make the request                                                                                   |
| **Connectapps**           | Fetch Connect App                                     | Fetch an instance of a connect-app                                                                                                                                  |
| **Connectapps**           | Update Connect App                                    | Update a connect-app with the specified parameters                                                                                                                  |
| **Connectapps**           | Delete Connect App                                    | Delete an instance of a connect-app                                                                                                                                 |
| **Incomingphonenumbers**  | List Incoming Phone Number                            | Retrieve a list of incoming-phone-numbers belonging to the account used to make the request.                                                                        |
| **Incomingphonenumbers**  | Create Incoming Phone Number                          | Purchase a phone-number for the account.                                                                                                                            |
| **Incomingphonenumbers**  | List Incoming Phone Number Local                      |                                                                                                                                                                     |
| **Incomingphonenumbers**  | Create Incoming Phone Number Local                    |                                                                                                                                                                     |
| **Incomingphonenumbers**  | List Incoming Phone Number Mobile                     |                                                                                                                                                                     |
| **Incomingphonenumbers**  | Create Incoming Phone Number Mobile                   |                                                                                                                                                                     |
| **Incomingphonenumbers**  | List Incoming Phone Number Toll Free                  |                                                                                                                                                                     |
| **Incomingphonenumbers**  | Create Incoming Phone Number Toll Free                |                                                                                                                                                                     |
| **Incomingphonenumbers**  | List Incoming Phone Number Assigned Add On            | Retrieve a list of Add-on installations currently assigned to this Number.                                                                                          |
| **Incomingphonenumbers**  | Create Incoming Phone Number Assigned Add On          | Assign an Add-on installation to the Number specified.                                                                                                              |
| **Incomingphonenumbers**  | List Incoming Phone Number Assigned Add On Extension  | Retrieve a list of Extensions for the Assigned Add-on.                                                                                                              |
| **Incomingphonenumbers**  | Fetch Incoming Phone Number Assigned Add On Extension | Fetch an instance of an Extension for the Assigned Add-on.                                                                                                          |
| **Incomingphonenumbers**  | Fetch Incoming Phone Number Assigned Add On           | Fetch an instance of an Add-on installation currently assigned to this Number.                                                                                      |
| **Incomingphonenumbers**  | Delete Incoming Phone Number Assigned Add On          | Remove the assignment of an Add-on installation from the Number specified.                                                                                          |
| **Incomingphonenumbers**  | Fetch Incoming Phone Number                           | Fetch an incoming-phone-number belonging to the account used to make the request.                                                                                   |
| **Incomingphonenumbers**  | Update Incoming Phone Number                          | Update an incoming-phone-number instance.                                                                                                                           |
| **Incomingphonenumbers**  | Delete Incoming Phone Number                          | Delete a phone-numbers belonging to the account used to make the request.                                                                                           |
| **Keys**                  | List Key                                              |                                                                                                                                                                     |
| **Keys**                  | Create New Key                                        |                                                                                                                                                                     |
| **Keys**                  | Fetch Key                                             |                                                                                                                                                                     |
| **Keys**                  | Update Key                                            |                                                                                                                                                                     |
| **Keys**                  | Delete Key                                            |                                                                                                                                                                     |
| **Messages**              | List Message                                          | Retrieve a list of messages belonging to the account used to make the request                                                                                       |
| **Messages**              | Create Message                                        | Send a message from the account used to make the request                                                                                                            |
| **Messages**              | Create Message                                        | Send a message from the account used to make the request                                                                                                            |
| **Messages**              | Create Message Feedback                               |                                                                                                                                                                     |
| **Messages**              | List Media                                            | Retrieve a list of Media resources belonging to the account used to make the request                                                                                |
| **Messages**              | Fetch Media                                           | Fetch a single media instance belonging to the account used to make the request                                                                                     |
| **Messages**              | Delete Media                                          | Delete media from your account. Once delete, you will no longer be billed                                                                                           |
| **Messages**              | Fetch Message                                         | Fetch a message belonging to the account used to make the request                                                                                                   |
| **Messages**              | Update Message                                        | To redact a message-body from a post-flight message record, post to the message instance resource with an empty body                                                |
| **Messages**              | Delete Message                                        | Deletes a message record from your account                                                                                                                          |
| **Notifications**         | List Notification                                     | Retrieve a list of notifications belonging to the account used to make the request                                                                                  |
| **Notifications**         | Fetch Notification                                    | Fetch a notification belonging to the account used to make the request                                                                                              |
| **Outgoingcallerids**     | List Outgoing Caller Id                               | Retrieve a list of outgoing-caller-ids belonging to the account used to make the request                                                                            |
| **Outgoingcallerids**     | Create Validation Request                             |                                                                                                                                                                     |
| **Outgoingcallerids**     | Fetch Outgoing Caller Id                              | Fetch an outgoing-caller-id belonging to the account used to make the request                                                                                       |
| **Outgoingcallerids**     | Update Outgoing Caller Id                             | Updates the caller-id                                                                                                                                               |
| **Outgoingcallerids**     | Delete Outgoing Caller Id                             | Delete the caller-id specified from the account                                                                                                                     |
| **Queues**                | List Queue                                            | Retrieve a list of queues belonging to the account used to make the request                                                                                         |
| **Queues**                | Create Queue                                          | Create a queue                                                                                                                                                      |
| **Queues**                | List Member                                           | Retrieve the members of the queue                                                                                                                                   |
| **Queues**                | Fetch Member                                          | Fetch a specific member from the queue                                                                                                                              |
| **Queues**                | Update Member                                         | Dequeue a member from a queue and have the member's call begin executing the TwiML document at that URL                                                             |
| **Queues**                | Fetch Queue                                           | Fetch an instance of a queue identified by the QueueSid                                                                                                             |
| **Queues**                | Update Queue                                          | Update the queue with the new parameters                                                                                                                            |
| **Queues**                | Delete Queue                                          | Remove an empty queue                                                                                                                                               |
| **Recordings**            | List Recording                                        | Retrieve a list of recordings belonging to the account used to make the request                                                                                     |
| **Recordings**            | List Recording Transcription                          |                                                                                                                                                                     |
| **Recordings**            | Fetch Recording Transcription                         |                                                                                                                                                                     |
| **Recordings**            | Delete Recording Transcription                        |                                                                                                                                                                     |
| **Recordings**            | List Recording Add On Result                          | Retrieve a list of results belonging to the recording                                                                                                               |
| **Recordings**            | List Recording Add On Result Payload                  | Retrieve a list of payloads belonging to the AddOnResult                                                                                                            |
| **Recordings**            | Fetch Recording Add On Result Payload                 | Fetch an instance of a result payload                                                                                                                               |
| **Recordings**            | Delete Recording Add On Result Payload                | Delete a payload from the result along with all associated Data                                                                                                     |
| **Recordings**            | Fetch Recording Add On Result                         | Fetch an instance of an AddOnResult                                                                                                                                 |
| **Recordings**            | Delete Recording Add On Result                        | Delete a result and purge all associated Payloads                                                                                                                   |
| **Recordings**            | Fetch Recording                                       | Fetch an instance of a recording                                                                                                                                    |
| **Recordings**            | Delete Recording                                      | Delete a recording from your account                                                                                                                                |
| **Sip**                   | List Sip Credential List                              | Get All Credential Lists                                                                                                                                            |
| **Sip**                   | Create Sip Credential List                            | Create a Credential List                                                                                                                                            |
| **Sip**                   | List Sip Credential                                   | Retrieve a list of credentials.                                                                                                                                     |
| **Sip**                   | Create Sip Credential                                 | Create a new credential resource.                                                                                                                                   |
| **Sip**                   | Fetch Sip Credential                                  | Fetch a single credential.                                                                                                                                          |
| **Sip**                   | Update Sip Credential                                 | Update a credential resource.                                                                                                                                       |
| **Sip**                   | Delete Sip Credential                                 | Delete a credential resource.                                                                                                                                       |
| **Sip**                   | Fetch Sip Credential List                             | Get a Credential List                                                                                                                                               |
| **Sip**                   | Update Sip Credential List                            | Update a Credential List                                                                                                                                            |
| **Sip**                   | Delete Sip Credential List                            | Delete a Credential List                                                                                                                                            |
| **Sip**                   | List Sip Domain                                       | Retrieve a list of domains belonging to the account used to make the request                                                                                        |
| **Sip**                   | Create Sip Domain                                     | Create a new Domain                                                                                                                                                 |
| **Sip**                   | List Sip Auth Calls Credential List Mapping           | Retrieve a list of credential list mappings belonging to the domain used in the request                                                                             |
| **Sip**                   | Create Sip Auth Calls Credential List Mapping         | Create a new credential list mapping resource                                                                                                                       |
| **Sip**                   | Fetch Sip Auth Calls Credential List Mapping          | Fetch a specific instance of a credential list mapping                                                                                                              |
| **Sip**                   | Delete Sip Auth Calls Credential List Mapping         | Delete a credential list mapping from the requested domain                                                                                                          |
| **Sip**                   | List Sip Auth Calls Ip Access Control List Mapping    | Retrieve a list of IP Access Control List mappings belonging to the domain used in the request                                                                      |
| **Sip**                   | Create Sip Auth Calls Ip Access Control List Mapping  | Create a new IP Access Control List mapping                                                                                                                         |
| **Sip**                   | Fetch Sip Auth Calls Ip Access Control List Mapping   | Fetch a specific instance of an IP Access Control List mapping                                                                                                      |
| **Sip**                   | Delete Sip Auth Calls Ip Access Control List Mapping  | Delete an IP Access Control List mapping from the requested domain                                                                                                  |
| **Sip**                   | List Sip Auth Registrations Credential List Mapping   | Retrieve a list of credential list mappings belonging to the domain used in the request                                                                             |
| **Sip**                   | Create Sip Auth Registrations Credential List Mapping | Create a new credential list mapping resource                                                                                                                       |
| **Sip**                   | Fetch Sip Auth Registrations Credential List Mapping  | Fetch a specific instance of a credential list mapping                                                                                                              |
| **Sip**                   | Delete Sip Auth Registrations Credential List Mapping | Delete a credential list mapping from the requested domain                                                                                                          |
| **Sip**                   | List Sip Credential List Mapping                      | Read multiple CredentialListMapping resources from an account.                                                                                                      |
| **Sip**                   | Create Sip Credential List Mapping                    | Create a CredentialListMapping resource for an account.                                                                                                             |
| **Sip**                   | Fetch Sip Credential List Mapping                     | Fetch a single CredentialListMapping resource from an account.                                                                                                      |
| **Sip**                   | Delete Sip Credential List Mapping                    | Delete a CredentialListMapping resource from an account.                                                                                                            |
| **Sip**                   | List Sip Ip Access Control List Mapping               | Retrieve a list of IpAccessControlListMapping resources.                                                                                                            |
| **Sip**                   | Create Sip Ip Access Control List Mapping             | Create a new IpAccessControlListMapping resource.                                                                                                                   |
| **Sip**                   | Fetch Sip Ip Access Control List Mapping              | Fetch an IpAccessControlListMapping resource.                                                                                                                       |
| **Sip**                   | Delete Sip Ip Access Control List Mapping             | Delete an IpAccessControlListMapping resource.                                                                                                                      |
| **Sip**                   | Fetch Sip Domain                                      | Fetch an instance of a Domain                                                                                                                                       |
| **Sip**                   | Update Sip Domain                                     | Update the attributes of a domain                                                                                                                                   |
| **Sip**                   | Delete Sip Domain                                     | Delete an instance of a Domain                                                                                                                                      |
| **Sip**                   | List Sip Ip Access Control List                       | Retrieve a list of IpAccessControlLists that belong to the account used to make the request                                                                         |
| **Sip**                   | Create Sip Ip Access Control List                     | Create a new IpAccessControlList resource                                                                                                                           |
| **Sip**                   | List Sip Ip Address                                   | Read multiple IpAddress resources.                                                                                                                                  |
| **Sip**                   | Create Sip Ip Address                                 | Create a new IpAddress resource.                                                                                                                                    |
| **Sip**                   | Fetch Sip Ip Address                                  | Read one IpAddress resource.                                                                                                                                        |
| **Sip**                   | Update Sip Ip Address                                 | Update an IpAddress resource.                                                                                                                                       |
| **Sip**                   | Delete Sip Ip Address                                 | Delete an IpAddress resource.                                                                                                                                       |
| **Sip**                   | Fetch Sip Ip Access Control List                      | Fetch a specific instance of an IpAccessControlList                                                                                                                 |
| **Sip**                   | Update Sip Ip Access Control List                     | Rename an IpAccessControlList                                                                                                                                       |
| **Sip**                   | Delete Sip Ip Access Control List                     | Delete an IpAccessControlList from the requested account                                                                                                            |
| **Sms**                   | List Short Code                                       | Retrieve a list of short-codes belonging to the account used to make the request                                                                                    |
| **Sms**                   | Fetch Short Code                                      | Fetch an instance of a short code                                                                                                                                   |
| **Sms**                   | Update Short Code                                     | Update a short code with the following parameters                                                                                                                   |
| **Signingkeys**           | List Signing Key                                      |                                                                                                                                                                     |
| **Signingkeys**           | Create New Signing Key                                | Create a new Signing Key for the account making the request.                                                                                                        |
| **Signingkeys**           | Fetch Signing Key                                     |                                                                                                                                                                     |
| **Signingkeys**           | Update Signing Key                                    |                                                                                                                                                                     |
| **Signingkeys**           | Delete Signing Key                                    |                                                                                                                                                                     |
| **Tokens**                | Create Token                                          | Create a new token for ICE servers                                                                                                                                  |
| **Transcriptions**        | List Transcription                                    | Retrieve a list of transcriptions belonging to the account used to make the request                                                                                 |
| **Transcriptions**        | Fetch Transcription                                   | Fetch an instance of a Transcription                                                                                                                                |
| **Transcriptions**        | Delete Transcription                                  | Delete a transcription from the account used to make the request                                                                                                    |
| **Usage**                 | List Usage Record                                     | Retrieve a list of usage-records belonging to the account used to make the request                                                                                  |
| **Usage**                 | List Usage Record All Time                            |                                                                                                                                                                     |
| **Usage**                 | List Usage Record Daily                               |                                                                                                                                                                     |
| **Usage**                 | List Usage Record Last Month                          |                                                                                                                                                                     |
| **Usage**                 | List Usage Record Monthly                             |                                                                                                                                                                     |
| **Usage**                 | List Usage Record This Month                          |                                                                                                                                                                     |
| **Usage**                 | List Usage Record Today                               |                                                                                                                                                                     |
| **Usage**                 | List Usage Record Yearly                              |                                                                                                                                                                     |
| **Usage**                 | List Usage Record Yesterday                           |                                                                                                                                                                     |
| **Usage**                 | List Usage Trigger                                    | Retrieve a list of usage-triggers belonging to the account used to make the request                                                                                 |
| **Usage**                 | Create Usage Trigger                                  | Create a new UsageTrigger                                                                                                                                           |
| **Usage**                 | Fetch Usage Trigger                                   | Fetch and instance of a usage-trigger                                                                                                                               |
| **Usage**                 | Update Usage Trigger                                  | Update an instance of a usage trigger                                                                                                                               |
| **Usage**                 | Delete Usage Trigger                                  |                                                                                                                                                                     |
| **Test Action**           | Delete Usage Trigger                                  |                                                                                                                                                                     |
