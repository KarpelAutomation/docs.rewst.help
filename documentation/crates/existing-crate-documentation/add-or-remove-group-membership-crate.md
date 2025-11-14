# Add or Remove Group Membership Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Add or Remove Group Membership Crate do?

Our Add or Remove Group Membership Crate provides a form-based interface that enables adding or removing a user from Microsoft groups, whether in on-premises environments or Microsoft 365 cloud-based groups. This Crate:

* Facilitates seamless addition or removal of users from on-premise Active Directory or Microsoft 365 groups
* Works with both security and distribution groups across environments
* Supports the management of multiple users within a single submission, ensuring faster group membership updates via batch processing
* Can be combined with other Rewst workflows for automation across onboarding, offboarding, or user-role changes

This Crate only handles membership changes, not group creation. It focuses on simple add or remove operations and does not manage nested group hierarchies.

### Workflow breakdown

1. The workflow begins with the **core\_noop** task which serves as the initialization point and processes the input data to prepare organization variables for creation by filtering out system-reserved keys and categorizing variables into integration and general configuration types.
2. The **rewst\_list\_organizations** task retrieves a list of all existing organizations within the current managing organization to check if the new client organization already exists in the Rewst platform.
3. If the organization name does not already exist in the system, the **rewst\_create\_organization** task creates a new organization in Rewst using the provided organization name and domain, establishing it as a managed organization under the current parent organization.
4. If the organization already exists, the workflow skips the creation step and retrieves the existing organization ID to proceed with configuration updates.
5. The **create\_integration\_org\_var** task iterates through the filtered integration-specific organization variables and creates them as system-category variables within the target organization, configuring essential integration settings and connection parameters.
6. The **invite\_forms\_users** task processes the list of users designated for forms-only access and sends invitations to each user with the appropriate role permissions, granting them access to execute forms within the organization.
7. The **invite\_member\_users** task processes the list of users designated for full member access and sends invitations to each user with both forms and member role permissions, providing them with broader access to the organization's resources.
8. The **create\_general\_org\_var** task iterates through the filtered general organization variables and creates them as general-category variables within the target organization, establishing configuration settings for identity providers, user management, and other operational parameters.
9. The workflow completes successfully after all organization variables have been created and all user invitations have been processed, resulting in a fully configured child organization ready for use within the Rewst platform.

## Crate prerequisites

Rewst's [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/) must be set up before unpacking this Crate.

If you'll be using the Crate for any on-premises environments, you'll need to have your [RMM integrated ](../../configuration/integrations/top-5-integration-types-get-started-with-integrations-in-rewst.md#rmm-integrations)with Rewst before unpacking the Crate.

## Unpack the Add or Remove Group Membership Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst Platform.
2. Search for `Add or Remove Group Membership`.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-06-26 at 11.56.09 AM.png>)
3. Click on the Crate tile to begin the unpacking process.
4. Click **Unpack Crate**.
5. Click **Continue**.
6. Note that you have the option under the **Form Submission** accordion menu to activate the Crate for all future organizations in addition to the current one. Current org-only is the default. You may also set activation to certain [tags](https://docs.rewst.help/documentation/settings/tags-in-rewst), [trigger criteria](../../automations/intro-to-triggers/trigger-criteria.md), or for integration overrides.
7. Click **Unpack Crate**.

### Use the Add or Remove Group Membership Crate

{% hint style="warning" %}
This form has a variety of fields and drop-down selectors that will appear depending on what you select earlier in the form. If you change your mind or make a mistake while filling out the form and decide to change a previously selected option, hard refresh your page to reset the conditions of the form. Then, proceed and make your desired selections.
{% endhint %}

1. Navigate to **Automations > Forms**.
2. Search for `[Rewst Master v2] Groups - Add or Remove Membership`.
3.  Click **⋮ > Usages > View Direct URLs**.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-06-25 at 4.53.47 PM.png" alt=""><figcaption></figcaption></figure>
4. Copy the URL and paste it into a new tab or browser window.
5.  Choose the organization you'd like to run the form on from the **List Organizations** drop-down selector.

    \
    ![](<../../../.gitbook/assets/Screenshot 2025-06-26 at 11.51.47 AM.png>)
6. Choose if you would like to Manage User's Groups or Manage Group's Users. Depending on your selection, the form will display different relevant options for the next step.
7. If choosing **Manage User's Groups**:
   1. Choose your relevant user from the populated list in the **List Users** drop-down selector.
   2. Choose if you would like to **Add Groups to User** or **Remove Groups from User**.
      1.  If choosing add, use the **List Current Group Membership** drop-down selector to indicate which groups should be excluded from removal. Then, select your groups from the **List AAD Groups** and **List OnPrem Groups** drop-down selectors.&#x20;

          \
          ![](<../../../.gitbook/assets/Screenshot 2025-06-26 at 11.53.09 AM.png>)
      2. If choosing remove, use the **List Current Group Membership** drop-down selector to indicate which groups should be excluded from removal.\
         \
         ![](<../../../.gitbook/assets/Screenshot 2025-06-26 at 11.53.26 AM.png>)
   3. Click **Submit**.
8. If choosing **Manage Group's Users:**
   1. Choose your relevant user from the populated list in the **List Users** drop-down selector.
   2. Choose if you'd like to **Add Members to Group** or **Remove Members From Group**.
   3. Make your selections in the **List OnPrem Groups** drop-down selector.&#x20;
   4.  Choose if you would like to **Add Members to Group** or **Remove Members from Group.**

       \
       ![](<../../../.gitbook/assets/Screenshot 2025-06-26 at 4.14.35 PM.png>)
   5. Click **Submit**.



{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
