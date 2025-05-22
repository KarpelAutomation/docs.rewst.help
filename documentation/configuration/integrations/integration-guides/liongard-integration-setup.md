# Liongard integration

{% hint style="info" %}
&#x20;If you’re new to integrations in Rewst, read through our introductory integration documentation [here](https://docs.rewst.help/documentation/integrations).
{% endhint %}

## What does the Liongard integration do?

Our Liongard integration enables automation of system inspection and monitoring. Use the Liongard API within Rewst workflows to manage environments, agents, systems, detections, and alerts.

## Set up the Liongard integration

### Set up steps in Liongard

1. Enter your Liongard URL. Match the prefix of the URL to your ROAR instance.
2. Go to your Liongard dashboard to generate an access token.
3. Navigate to **Profile > Account Settings > Access Tokens**.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-02 at 11.35.07 AM.png>)
4. Click **Generate New Token**.
5. Choose **Liongard API Token** from the options that appear in the selector.
6. Select **Unlimited** for the expiration time period. If unlimited is not selected, your integration may break unexpectedly when the token expires.\
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-02 at 11.36.12 AM.png>)
7. Click **Generate**.
8. Copy the Access Key ID and Access Key Secret. Store this information somewhere secure. Note that you won't be able to view these again once you move away from this page. You'll need this information to complete further steps in Rewst.

### Set up steps in Rewst

1. Navigate to **Configuration > Integrations** in the left side menu of your Rewst platform.
2. Search for `Liongard` in the integrations page.\
   \
   ![](<../../../../../.gitbook/assets/Screenshot 2025-05-02 at 11.20.46 AM.png>)
3. Click on the integration tile to launch the configuration setup page.
4. Under **Parameters**, enter the information copied from Liongard into its relevant fields.
   1. **Hostname** - e.g., companyABC.app.liongard.com
   2. **Access Key ID**
   3. **Access Key Secret**
5. Click **Save Configuration**.
6. Rewst will do a quick validation of your input. Once completed, you'll see a new section beneath the configuration form for[ organization mapping](https://docs.rewst.help/documentation/integrations#what-is-organization-mapping). Complete your mapping as desired.&#x20;

{% hint style="success" %}
Got an idea for a new Integration? Rewst is constantly adding new integrations to our integrations page. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/integrations).
{% endhint %}

## Actions and endpoints

{% hint style="info" %}
For more on how actions work in Rewst, check out our [introductory actions documentation here](https://docs.rewst.help/documentation/workflows/actions-in-rewst).&#x20;
{% endhint %}

View Liongard's own API documentation [here](https://support.liongard.com).

| Category            | Action                                    | Description                                                                                                                                                                                                                                  |
| ------------------- | ----------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Access Key**      | List Access Keys                          | Returns a List of Access Tokens created by user                                                                                                                                                                                              |
| **Access Key**      | Create Access Key                         | Create an Access Token with the permission of user or with only 'Add Agent' permission                                                                                                                                                       |
| **Access Key**      | Delete Access Key                         | Delete Access Token created by user                                                                                                                                                                                                          |
| **Agents**          | List Agents                               | List all agents.                                                                                                                                                                                                                             |
| **Agents**          | Delete Agent                              | Remove an agent                                                                                                                                                                                                                              |
| **Agents**          | Get Agent by ID                           | Get a specific Agent.                                                                                                                                                                                                                        |
| **Agents**          | Update Agent                              | Edits a deployed liongard agent, cannot update On-Demand agents.                                                                                                                                                                             |
| **Agents**          | Flush Job Queue                           | Empty an agent's job queue.                                                                                                                                                                                                                  |
| **Alerts**          | List Alerts                               | Returns a list of alerts that have been raised.                                                                                                                                                                                              |
| **Alerts**          | Get Alert by ID                           | Returns a single alert that has been raised.                                                                                                                                                                                                 |
| **Detections**      | List Detection Events                     | Returns a list of all detection events.                                                                                                                                                                                                      |
| **Detections**      | Get Detections by ID                      | Gets a specific detection.                                                                                                                                                                                                                   |
| **Generic Request** | Liongard API Request                      | Generic action for making authenticated requests against the Liongard API                                                                                                                                                                    |
| **Groups**          | List Groups                               | Returns a List of available Assignable groups for a user                                                                                                                                                                                     |
| **Inspector**       | Get Inspector Templates                   | Retrieve Inspector Config and SecureConfig Fields, using the Name key for launchpoint configuration, and distinguishing between SecureConfig and Config fields with Secure and Required keys.                                                |
| **Inspector**       | Get Inspector Versions                    | Get a list of Inspector Versions and their IDs, sorted by "desc" for easy access to the latest version based on the highest ID or "CreatedOn" field.                                                                                         |
| **Inspector**       | List Inspector Types                      | Lists all avaialble Inspectors in Liongard                                                                                                                                                                                                   |
| **Launchpoints**    | Delete Launchpoints in Bulk               | Remove all launchpoints.                                                                                                                                                                                                                     |
| **Launchpoints**    | List Launchpoints                         | Lists all launchpoints.                                                                                                                                                                                                                      |
| **Launchpoints**    | Create Launchpoint                        | Create a launchpoint. You will need to reference the inspector templates for ilding out the config and secure config objects for this launchpoint. Each Inspector has a different template that contains the necessary configuration fields. |
| **Launchpoints**    | Edit Launchpoints in Bulk                 | Update many launchpoints to run on the same schedule.                                                                                                                                                                                        |
| **Launchpoints**    | Run Inspections in Bulk                   | Kick off many inspections.                                                                                                                                                                                                                   |
| **Launchpoints**    | Delete Launchpoint                        | Remove a single launchpoint.                                                                                                                                                                                                                 |
| **Launchpoints**    | Get Launchpoints by ID                    | Return a specific launchpoint by ID.                                                                                                                                                                                                         |
| **Launchpoints**    | Update Launchpoint                        | Edit a single inspector launchpoint, referencing inspector templates for configuring the launchpoint with specific configuration fields.                                                                                                     |
| **Launchpoints**    | Run Inspection                            | Set a Launchpoint to run an inspection                                                                                                                                                                                                       |
| **Launchpoints**    | Get Launchpoint Log                       | Return the logs for a specific inspection.                                                                                                                                                                                                   |
| **System**          | List Systems                              | List all systems.                                                                                                                                                                                                                            |
| **System**          | Get System Detail View by ID              | Returns the Raw data from the latest inspection for a system.                                                                                                                                                                                |
| **Timeline**        | List Timeline Entries                     | Fetch all timeline entries.                                                                                                                                                                                                                  |
| **Timeline**        | Get Timeline by ID                        | Fetch a specific timeline.                                                                                                                                                                                                                   |
| **Timeline**        | Get Timeline Detail                       | Fetch the Raw timeline entry (including the entire dataprint).                                                                                                                                                                               |
| **Users**           | List Users                                | Returns a list of users in your Liongard Instance                                                                                                                                                                                            |
| **Users**           | Create User                               | Creates a single User                                                                                                                                                                                                                        |
| **Users**           | Delete User                               | Remove a single User.                                                                                                                                                                                                                        |
| **Users**           | Get User by ID                            | Returns a Single User                                                                                                                                                                                                                        |
| **Users**           | Update User                               | Updates a single User                                                                                                                                                                                                                        |
| **V2 Environments** | List Environments (V2)                    | Retrieve a list of environments. You can specify the page size, columns to include, and the order of the response                                                                                                                            |
| **V2 Environments** | Add Environment (V2)                      | API endpoint to add a new environment. The endpoint requires a JSON body containing the label for the environment                                                                                                                            |
| **V2 Environments** | Update Environments in Bulk (V2)          | Update multiple environments using the Liongard API                                                                                                                                                                                          |
| **V2 Environments** | Add Environments in Bulk (V2)             | Add multiple environments by making a POST request to the /environments/bulk endpoint with a JSON body containing the necessary information                                                                                                  |
| **V2 Environments** | Delete Environment (V2)                   | Delete an environment by its ID                                                                                                                                                                                                              |
| **V2 Environments** | Get Environment (V2)                      | Get a single environment by providing the environmentId as a path parameter                                                                                                                                                                  |
| **V2 Environments** | Update Environment (V2)                   | Update a single environment by providing the environment ID and the updated JSON body                                                                                                                                                        |
| **V2 Environments** | Get Related Entities Per Environment (V2) | Returns all the Related Entities that are tied to a single Environment such as Agents, Launchpoints, and Integration mappings                                                                                                                |
| **V2 Metrics**      | List Metrics (V2)                         | Returns a list of metrics that have been created.                                                                                                                                                                                            |
| **V2 Metrics**      | Get Related Environments for Metric (V2)  | Returns Environment IDs for all related Environments for a given Metric ID                                                                                                                                                                   |
| **V2 Metrics**      | Get Metric Values (V2)                    | Get Metric values for systems using Metric ID/UUID(s). Max 100 requests/min per user. No need for filters/sorting, but include an empty array in the request.                                                                                |
| **V2 Metrics**      | Get Metric Enabled Values (V2)            | Returns Metric values for all Enabled Metrics for a given System ID, Metrics must have "display" set to enabled to show in the response                                                                                                      |
