# JumpCloud integration

{% hint style="info" %}
If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the JumpCloud integration do?

Integrating Rewst with JumpCloud offers users a powerful combination of IT documentation and cloud directory services. Seamlessly leverage JumpCloud's comprehensive identity and access management capabilities within the Rewst platform. Manage user accounts, access permissions, and authentication processes, all while maintaining a centralized documentation repository in Rewst.&#x20;

## Set up the JumpCloud integration[​](http://localhost:3000/docs/integrations/Documentation/jumpcloud-integration-setup#setup) <a href="#setup" id="setup"></a>

{% hint style="warning" %}
If you need to access multiple organizations with this integration, you'll also need to:

* Have access to the JumpCloud Multi-Tenant Portal
* Define a default organization ID in the configuration form in Rewst
* Map Rewst organizations to their JumpCloud counterparts

For more details, see [JumpCloud’s documentation on multi-tenancy](https://jumpcloud.com/support/multi-tenancy).
{% endhint %}

### Set up steps in JumpCloud

1. Log in to the JumpCloud Console.
2. Click your **User icon**, then click **My API Key**.
3. Copy your API key.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. In the integrations page, search for `JumpCloud`.\
   \
   ![Screenshot of the JumpCloud integration card in Rewst. It shows the JumpCloud logo and a description: "Enables automation of identity and access management. Utilize the JumpCloud API within Rewst workflows to manage user identities and groups, streamline access controls, enforce security policies, and more." The card also notes it was last updated on April 24th, 2025, and includes a teal "SSO" badge at the bottom.](<../../../../.gitbook/assets/Screenshot 2025-04-28 at 2.42.49 PM.png>)
3. Click on the integration tile to launch setup.
4. Enter the API key copied from JumpCloud into the **API Key** field.
5. Optionally, define a default organization ID.
6. Select **True** or **False** from the **Do you have multiple organizations in this JumpCloud instance** drop-down selector.&#x20;
7. Click **Save Configuration**.
8. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

| Category            | Action                 | Description                                                                |
| ------------------- | ---------------------- | -------------------------------------------------------------------------- |
| **Generic Request** | JumpCloud API Request  | Generic action for making authenticated requests against the JumpCloud API |
| **Groups**          | List User Groups       | Description coming soon...                                                 |
| **Groups**          | Add User to Group      | Adds a user to specified group                                             |
| **Groups**          | Remove User from Group | Removes a user to specified group                                          |
| **Users**           | Get User               | Gets user by user ID                                                       |
| **Users**           | Create User            | Description coming soon...                                                 |
| **Users**           | Delete User            | Delete user by user ID                                                     |
| **Users**           | Modify User            | Modify user by user ID                                                     |
| **Users**           | Assign Manager         | Assigns manager to specified user                                          |
| **Users**           | Change Password        | Changes the specified user's password                                      |
