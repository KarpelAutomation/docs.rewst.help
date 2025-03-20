# Actions & Endpoints

## Introduction

The Twilio Integration with Rewst delivers a robust set of actions and endpoints for interacting with Twilio. Below is a summary of each section, highlighting the diverse capabilities and opportunities provided through the Twilio Integration:

* [**Accounts**](actions-and-endpoints.md#accounts)
* [**Addresses**](actions-and-endpoints.md#addresses)
* [**Applications**](actions-and-endpoints.md#applications)
* [**Authorizedconnectapps**](actions-and-endpoints.md#authorizedconnectapps)
* [**Availablephonenumbers**](actions-and-endpoints.md#availablephonenumbers)
* [**Balance**](actions-and-endpoints.md#balance)
* [**Calls**](actions-and-endpoints.md#calls)
* [**Conferences**](actions-and-endpoints.md#conferences)
* [**Connectapps**](actions-and-endpoints.md#connectapps)
* [**Incomingphonenumbers**](actions-and-endpoints.md#incomingphonenumbers)
* [**Keys**](actions-and-endpoints.md#keys)
* [**Messages**](actions-and-endpoints.md#messages)
* [**Notifications**](actions-and-endpoints.md#notifications)
* [**Outgoingcallerids**](actions-and-endpoints.md#outgoingcallerids)
* [**Queues**](actions-and-endpoints.md#queues)
* [**Recordings**](actions-and-endpoints.md#recordings)
* [**Sip**](actions-and-endpoints.md#sip)
* [**Sms**](actions-and-endpoints.md#sms)
* [**Signingkeys**](actions-and-endpoints.md#signingkeys)
* [**Tokens**](actions-and-endpoints.md#tokens)
* [**Transcriptions**](actions-and-endpoints.md#transcriptions)
* [**Usage**](actions-and-endpoints.md#usage)
* [**Test Action**](actions-and-endpoints.md#test-action)

## Actions

### Accounts

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Account" %}
{% swagger-description %}
Retrieves a collection of Accounts belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Account" %}
{% swagger-description %}
Create a new Twilio Subaccount from the account making the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Account" %}
{% swagger-description %}
Fetch the account specified by the provided Account Sid
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Account" %}
{% swagger-description %}
Modify the properties of a given Account
{% endswagger-description %}
{% endswagger %}

### Addresses

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Address" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Address" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Dependent Phone Number" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Address" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Address" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Address" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

### Applications

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Application" %}
{% swagger-description %}
Retrieve a list of applications representing an application within the requesting account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Application" %}
{% swagger-description %}
Create a new application within your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Application" %}
{% swagger-description %}
Fetch the application specified by the provided sid
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Application" %}
{% swagger-description %}
Updates the application's properties
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Application" %}
{% swagger-description %}
Delete the application by the specified application sid
{% endswagger-description %}
{% endswagger %}

### Authorizedconnectapps

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Authorized Connect App" %}
{% swagger-description %}
Retrieve a list of authorized-connect-apps belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Authorized Connect App" %}
{% swagger-description %}
Fetch an instance of an authorized-connect-app
{% endswagger-description %}
{% endswagger %}

### Availablephonenumbers

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Available Phone Number Country" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Available Phone Number Country" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Available Phone Number Local" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Available Phone Number Machine To Machine" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Available Phone Number Mobile" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Available Phone Number National" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Available Phone Number Shared Cost" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Available Phone Number Toll Free" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Available Phone Number Voip" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

### Balance

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Balance" %}
{% swagger-description %}
Fetch the balance for an Account based on Account Sid. Balance changes may not be reflected immediately. Child accounts do not contain balance information
{% endswagger-description %}
{% endswagger %}

### Calls

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Call" %}
{% swagger-description %}
Retrieves a collection of calls made to and from your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Call" %}
{% swagger-description %}
Create a new outgoing call to phones, SIP-enabled endpoints or Twilio Client connections
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Call Feedback Summary" %}
{% swagger-description %}
Create a FeedbackSummary resource for a call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Call Feedback Summary" %}
{% swagger-description %}
Fetch a FeedbackSummary resource from a call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Call Feedback Summary" %}
{% swagger-description %}
Delete a FeedbackSummary resource from a call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Call Event" %}
{% swagger-description %}
Retrieve a list of all events for a call.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Call Feedback" %}
{% swagger-description %}
Fetch a Feedback resource from a call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Call Feedback" %}
{% swagger-description %}
Update a Feedback resource for a call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Call Notification" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Call Notification" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Payments" %}
{% swagger-description %}
create an instance of payments. This will start a new payments session
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Payments" %}
{% swagger-description %}
update an instance of payments with different phases of payment flows.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Call Recording" %}
{% swagger-description %}
Retrieve a list of recordings belonging to the call used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Call Recording" %}
{% swagger-description %}
Create a recording for the call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Call Recording" %}
{% swagger-description %}
Fetch an instance of a recording for a call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Call Recording" %}
{% swagger-description %}
Changes the status of the recording to paused, stopped, or in-progress. Note: Pass \`Twilio.CURRENT\` instead of recording sid to reference current active recording.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Call Recording" %}
{% swagger-description %}
Delete a recording from your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Siprec" %}
{% swagger-description %}
Create a Siprec
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Siprec" %}
{% swagger-description %}
Stop a Siprec using either the SID of the Siprec resource or the \`name\` used when creating the resource
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Call" %}
{% swagger-description %}
Fetch the call specified by the provided Call SID
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Call" %}
{% swagger-description %}
Initiates a call redirect or terminates a call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Call" %}
{% swagger-description %}
Delete a Call record from your account. Once the record is deleted, it will no longer appear in the API and Account Portal logs.
{% endswagger-description %}
{% endswagger %}

### Conferences

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Conference" %}
{% swagger-description %}
Retrieve a list of conferences belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Participant" %}
{% swagger-description %}
Retrieve a list of participants belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Participant" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Participant" %}
{% swagger-description %}
Fetch an instance of a participant
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Participant" %}
{% swagger-description %}
Update the properties of the participant
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Participant" %}
{% swagger-description %}
Kick a participant from a given conference
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Conference Recording" %}
{% swagger-description %}
Retrieve a list of recordings belonging to the call used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Conference Recording" %}
{% swagger-description %}
Fetch an instance of a recording for a call
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Conference Recording" %}
{% swagger-description %}
Changes the status of the recording to paused, stopped, or in-progress. Note: To use \`Twilio.CURRENT\`, pass it as recording sid.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Conference Recording" %}
{% swagger-description %}
Delete a recording from your account
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Conference" %}
{% swagger-description %}
Fetch an instance of a conference
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Conference" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

### Connectapps

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Connect App" %}
{% swagger-description %}
Retrieve a list of connect-apps belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Connect App" %}
{% swagger-description %}
Fetch an instance of a connect-app
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Connect App" %}
{% swagger-description %}
Update a connect-app with the specified parameters
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Connect App" %}
{% swagger-description %}
Delete an instance of a connect-app
{% endswagger-description %}
{% endswagger %}

### Incomingphonenumbers

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Incoming Phone Number" %}
{% swagger-description %}
Retrieve a list of incoming-phone-numbers belonging to the account used to make the request.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Incoming Phone Number" %}
{% swagger-description %}
Purchase a phone-number for the account.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Incoming Phone Number Local" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Incoming Phone Number Local" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Incoming Phone Number Mobile" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Incoming Phone Number Mobile" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Incoming Phone Number Toll Free" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Incoming Phone Number Toll Free" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Incoming Phone Number Assigned Add On" %}
{% swagger-description %}
Retrieve a list of Add-on installations currently assigned to this Number.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Incoming Phone Number Assigned Add On" %}
{% swagger-description %}
Assign an Add-on installation to the Number specified.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Incoming Phone Number Assigned Add On Extension" %}
{% swagger-description %}
Retrieve a list of Extensions for the Assigned Add-on.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Incoming Phone Number Assigned Add On Extension" %}
{% swagger-description %}
Fetch an instance of an Extension for the Assigned Add-on.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Incoming Phone Number Assigned Add On" %}
{% swagger-description %}
Fetch an instance of an Add-on installation currently assigned to this Number.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Incoming Phone Number Assigned Add On" %}
{% swagger-description %}
Remove the assignment of an Add-on installation from the Number specified.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Incoming Phone Number" %}
{% swagger-description %}
Fetch an incoming-phone-number belonging to the account used to make the request.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Incoming Phone Number" %}
{% swagger-description %}
Update an incoming-phone-number instance.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Incoming Phone Number" %}
{% swagger-description %}
Delete a phone-numbers belonging to the account used to make the request.
{% endswagger-description %}
{% endswagger %}

### Keys

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create New Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

### Messages

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Message" %}
{% swagger-description %}
Retrieve a list of messages belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Message" %}
{% swagger-description %}
Send a message from the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Message Feedback" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Media" %}
{% swagger-description %}
Retrieve a list of Media resources belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Media" %}
{% swagger-description %}
Fetch a single media instance belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Media" %}
{% swagger-description %}
Delete media from your account. Once delete, you will no longer be billed
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Message" %}
{% swagger-description %}
Fetch a message belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Message" %}
{% swagger-description %}
To redact a message-body from a post-flight message record, post to the message instance resource with an empty body
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Message" %}
{% swagger-description %}
Deletes a message record from your account
{% endswagger-description %}
{% endswagger %}

### Notifications

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Notification" %}
{% swagger-description %}
Retrieve a list of notifications belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Notification" %}
{% swagger-description %}
Fetch a notification belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

### Outgoingcallerids

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Outgoing Caller Id" %}
{% swagger-description %}
Retrieve a list of outgoing-caller-ids belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Validation Request" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Outgoing Caller Id" %}
{% swagger-description %}
Fetch an outgoing-caller-id belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Outgoing Caller Id" %}
{% swagger-description %}
Updates the caller-id
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Outgoing Caller Id" %}
{% swagger-description %}
Delete the caller-id specified from the account
{% endswagger-description %}
{% endswagger %}

### Queues

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Queue" %}
{% swagger-description %}
Retrieve a list of queues belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Create Queue" %}
{% swagger-description %}
Create a queue
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Member" %}
{% swagger-description %}
Retrieve the members of the queue
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Member" %}
{% swagger-description %}
Fetch a specific member from the queue
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Member" %}
{% swagger-description %}
Dequeue a member from a queue and have the member's call begin executing the TwiML document at that URL
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Queue" %}
{% swagger-description %}
Fetch an instance of a queue identified by the QueueSid
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Queue" %}
{% swagger-description %}
Update the queue with the new parameters
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Queue" %}
{% swagger-description %}
Remove an empty queue
{% endswagger-description %}
{% endswagger %}

### Recordings

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Recording" %}
{% swagger-description %}
Retrieve a list of recordings belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Recording Transcription" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Recording Transcription" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Delete Recording Transcription" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Recording Add On Result" %}
{% swagger-description %}
Retrieve a list of results belonging to the recording
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Recording Add On Result Payload" %}
{% swagger-description %}
Retrieve a list of payloads belonging to the AddOnResult
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Recording Add On Result Payload" %}
{% swagger-description %}
Fetch an instance of a result payload
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Recording Add On Result Payload" %}
{% swagger-description %}
Delete a payload from the result along with all associated Data
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Recording Add On Result" %}
{% swagger-description %}
Fetch an instance of an AddOnResult
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Recording Add On Result" %}
{% swagger-description %}
Delete a result and purge all associated Payloads
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Recording" %}
{% swagger-description %}
Fetch an instance of a recording
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Recording" %}
{% swagger-description %}
Delete a recording from your account
{% endswagger-description %}
{% endswagger %}

### Sip

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Credential List" %}
{% swagger-description %}
Get All Credential Lists
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Credential List" %}
{% swagger-description %}
Create a Credential List
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Credential" %}
{% swagger-description %}
Retrieve a list of credentials.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Credential" %}
{% swagger-description %}
Create a new credential resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Credential" %}
{% swagger-description %}
Fetch a single credential.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Sip Credential" %}
{% swagger-description %}
Update a credential resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Credential" %}
{% swagger-description %}
Delete a credential resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Credential List" %}
{% swagger-description %}
Get a Credential List
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Sip Credential List" %}
{% swagger-description %}
Update a Credential List
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Credential List" %}
{% swagger-description %}
Delete a Credential List
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Domain" %}
{% swagger-description %}
Retrieve a list of domains belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Domain" %}
{% swagger-description %}
Create a new Domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Auth Calls Credential List Mapping" %}
{% swagger-description %}
Retrieve a list of credential list mappings belonging to the domain used in the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Auth Calls Credential List Mapping" %}
{% swagger-description %}
Create a new credential list mapping resource
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Auth Calls Credential List Mapping" %}
{% swagger-description %}
Fetch a specific instance of a credential list mapping
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Auth Calls Credential List Mapping" %}
{% swagger-description %}
Delete a credential list mapping from the requested domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Auth Calls Ip Access Control List Mapping" %}
{% swagger-description %}
Retrieve a list of IP Access Control List mappings belonging to the domain used in the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Auth Calls Ip Access Control List Mapping" %}
{% swagger-description %}
Create a new IP Access Control List mapping
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Auth Calls Ip Access Control List Mapping" %}
{% swagger-description %}
Fetch a specific instance of an IP Access Control List mapping
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Auth Calls Ip Access Control List Mapping" %}
{% swagger-description %}
Delete an IP Access Control List mapping from the requested domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Auth Registrations Credential List Mapping" %}
{% swagger-description %}
Retrieve a list of credential list mappings belonging to the domain used in the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Auth Registrations Credential List Mapping" %}
{% swagger-description %}
Create a new credential list mapping resource
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Auth Registrations Credential List Mapping" %}
{% swagger-description %}
Fetch a specific instance of a credential list mapping
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Auth Registrations Credential List Mapping" %}
{% swagger-description %}
Delete a credential list mapping from the requested domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Credential List Mapping" %}
{% swagger-description %}
Read multiple CredentialListMapping resources from an account.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Credential List Mapping" %}
{% swagger-description %}
Create a CredentialListMapping resource for an account.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Credential List Mapping" %}
{% swagger-description %}
Fetch a single CredentialListMapping resource from an account.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Credential List Mapping" %}
{% swagger-description %}
Delete a CredentialListMapping resource from an account.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Ip Access Control List Mapping" %}
{% swagger-description %}
Retrieve a list of IpAccessControlListMapping resources.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Ip Access Control List Mapping" %}
{% swagger-description %}
Create a new IpAccessControlListMapping resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Ip Access Control List Mapping" %}
{% swagger-description %}
Fetch an IpAccessControlListMapping resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Ip Access Control List Mapping" %}
{% swagger-description %}
Delete an IpAccessControlListMapping resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Domain" %}
{% swagger-description %}
Fetch an instance of a Domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Sip Domain" %}
{% swagger-description %}
Update the attributes of a domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Domain" %}
{% swagger-description %}
Delete an instance of a Domain
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Ip Access Control List" %}
{% swagger-description %}
Retrieve a list of IpAccessControlLists that belong to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Ip Access Control List" %}
{% swagger-description %}
Create a new IpAccessControlList resource
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Sip Ip Address" %}
{% swagger-description %}
Read multiple IpAddress resources.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Sip Ip Address" %}
{% swagger-description %}
Create a new IpAddress resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Ip Address" %}
{% swagger-description %}
Read one IpAddress resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Sip Ip Address" %}
{% swagger-description %}
Update an IpAddress resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Ip Address" %}
{% swagger-description %}
Delete an IpAddress resource.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Sip Ip Access Control List" %}
{% swagger-description %}
Fetch a specific instance of an IpAccessControlList
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Sip Ip Access Control List" %}
{% swagger-description %}
Rename an IpAccessControlList
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Sip Ip Access Control List" %}
{% swagger-description %}
Delete an IpAccessControlList from the requested account
{% endswagger-description %}
{% endswagger %}

### Sms

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Short Code" %}
{% swagger-description %}
Retrieve a list of short-codes belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Short Code" %}
{% swagger-description %}
Fetch an instance of a short code
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Short Code" %}
{% swagger-description %}
Update a short code with the following parameters
{% endswagger-description %}
{% endswagger %}

### Signingkeys

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Signing Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create New Signing Key" %}
{% swagger-description %}
Create a new Signing Key for the account making the request.
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Signing Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Signing Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Signing Key" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

### Tokens

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Token" %}
{% swagger-description %}
Create a new token for ICE servers
{% endswagger-description %}
{% endswagger %}

### Transcriptions

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Transcription" %}
{% swagger-description %}
Retrieve a list of transcriptions belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Transcription" %}
{% swagger-description %}
Fetch an instance of a Transcription
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Transcription" %}
{% swagger-description %}
Delete a transcription from the account used to make the request
{% endswagger-description %}
{% endswagger %}

### Usage

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record" %}
{% swagger-description %}
Retrieve a list of usage-records belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record All Time" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record Daily" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record Last Month" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record Monthly" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record This Month" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record Today" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record Yearly" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Record Yesterday" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="List Usage Trigger" %}
{% swagger-description %}
Retrieve a list of usage-triggers belonging to the account used to make the request
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Create Usage Trigger" %}
{% swagger-description %}
Create a new UsageTrigger
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="get" summary="Fetch Usage Trigger" %}
{% swagger-description %}
Fetch and instance of a usage-trigger
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="post" summary="Update Usage Trigger" %}
{% swagger-description %}
Update an instance of a usage trigger
{% endswagger-description %}
{% endswagger %}

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Usage Trigger" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}

### Test Action

{% swagger baseUrl="api.twilio.com" path="/<url_path>" method="delete" summary="Delete Usage Trigger" %}
{% swagger-description %}

{% endswagger-description %}
{% endswagger %}
