# Subworkflow: Check a User's Group Memberships to Proceed in a Workflow Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Subworkflow: Check a User's Group Memberships to Proceed in a Workflow Crate do?

Use this subworkflow in your workflows and [option generators](../../automations/workflows/option-generator-workflows.md) to check to see if a user is a member of one of a list of provided group. This is useful for form-triggered workflows where you may wish to limit the functionality based on a form submitter's role.

### How the Crate works

{% hint style="info" %}
This Crate is a little different from most of our other Crates. It contains a subworkflow you can use in building your own workflows rather than a fully-executable workflow that achieves a goal right after unpacking.
{% endhint %}

The Crate uses the Microsoft Graph API Request action to get all groups a user belongs to.

1. Makes a GET request to the Microsoft Graph API
2. The response will include all groups the user is a member of
3. Checks if your target group is in the returned list

### Workflow breakdown

1. The workflow begins with the **microsoft\_graph\_list\_groups** task, which executes the **List Groups** action to search for Azure AD groups that match the provided group names from the input.
2. The **microsoft\_graph\_list\_groups** task uses a filter to find groups where the display name equals any of the group names provided in the input, selecting only the id and displayName fields for efficiency.
3. If the **List Groups** action succeeds and returns matching groups, the workflow transitions to the **make\_group\_id\_list** task, which executes the **noop** action to create a list of group IDs from the search results.
4. The **make\_group\_id\_list** task publishes a group\_id\_list variable containing the extracted group IDs and then transitions to the **check\_member\_groups** task.
5. The **check\_member\_groups** task executes the **Graph API Request** action to call the Microsoft Graph checkMemberGroups endpoint, passing the username and the list of group IDs to determine if the user is a member of any of those groups.
6. If the **check\_member\_groups** task succeeds, it publishes two key variables: member\_group\_ids containing the group IDs the user belongs to, and user\_in\_group set to true or false based on whether any group membership was found, then transitions to the **checks\_successful** task.
7. The **checks\_successful** task executes the **noop** action and serves as the successful completion point of the workflow.
8. If any task fails or if no matching groups are found in step 2, the workflow transitions to the **errors\_in\_processing** task, which executes the **noop** action and publishes any accumulated errors to the workflow output.
9. The workflow concludes by outputting three values: user\_in\_group indicating membership status, member\_group\_ids containing the specific group IDs the user belongs to, and errors containing any error messages encountered during processing.

## Crate prerequisite

The [Microsoft Cloud integration bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/), which contains our Microsoft Graph integration, must successfully be installed before unpacking this Crate.

## Example Jinja template for checking membership

```django
jinja
{% set target_group_id = "your-group-id-here" %}
{% set user_groups = CTX.user_groups.groups %}
{% set is_member = false %}

{% for group in user_groups %}
  {% if group.group_id == target_group_id %}
    {% set is_member = true %}
  {% endif %}
{% endfor %}

{{ is_member }}
```

## Unpack the Subworkflow: Check a User's Group Memberships to Proceed in a Workflow Crate

1. Navigate to **Crates** > **Crate Marketplace** in the left side menu Rewst platform.
2.  Search for `Sub-workflow: Check a User's Group Memberships to Proceed in a Workflow`.

    \
    ![](<../../../.gitbook/assets/image (320).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Enter **Time Saved** under **Crate Configuration**.
7. Click **Unpack**.

## Use the subworkflow

1. Navigate to **Automations > Workflows** in the left side menu of your Rewst platform.
2. Click into the workflow where you would like to use the subworkflow, or create a new workflow.
3. Search in your actions list for `Check if a User is in an AzureAD Group`.\
   ![](<../../../.gitbook/assets/Screenshot 2025-12-19 at 9.51.38 AM.png>)
4. Click and drag the action to the Workflow Builder canvas.
5.  Enter the required information into the following fields of the task's configuration menu:

    1. **groups**: the name or ID of AzureAD Groups to check the user's membership against
    2. **username**: use CTX.username to capture the form submitter

    ![](<../../../.gitbook/assets/Screenshot 2025-12-19 at 9.54.30 AM.png>)

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
