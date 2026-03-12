# Users

## What is a Rewst user?

A _user_ in Rewst is an individual. That individual will be allowed to interact with Rewst in some way, as dictated by their [role](roles.md). Users should not be confused with [organizations](../integrations/organization-variables.md).

## View users in Rewst

To access users in Rewst, navigate to **Settings > Users** in the left side menu of your Rewst platform.

<figure><img src="../../.gitbook/assets/Screenshot 2026-03-05 at 4.19.56 PM.png" alt="Screenshot of the Users page in Rewst Settings, showing a dark-themed interface with a left navigation menu, a top search bar, and a table listing users with email addresses, status, roles, creation details, test user indicators, and action icons."><figcaption><p>The organizations list page, viewed by a Member role</p></figcaption></figure>

Filter your list of users by any of the column header criteria. Click ![](<../../.gitbook/assets/Screenshot 2025-03-25 at 3.43.51 PM.png>) at the top right of the user management screen to open a submenu with options to **Add or remove columns** via checkbox selection.

Click the ![](<../../.gitbook/assets/Screenshot 2025-03-25 at 3.45.17 PM.png>)in the **Actions** column for any user to open up editing capabilities for that user. If you have permissions which allow you to make roll changes, adjust their role using the **Roles** drop-down selector.

<figure><img src="../../.gitbook/assets/Screenshot 2025-03-25 at 3.47.26 PM.png" alt=""><figcaption></figcaption></figure>

## Add and remove users from Rewst

{% hint style="warning" %}
Admin Rewst permissions are required to add or delete a user. If you don't have the correct permissions, certain buttons and editing functionality won't appear as an option for you in Rewst.
{% endhint %}

<figure><img src="../../.gitbook/assets/user invite image.png" alt=""><figcaption></figcaption></figure>

Adding users into Rewst allows them access to build workflows, view forms, or update configuration items, like integrations or organization variables. When adding a user, there are 4 different roles, each with their own clearly defined permission options:

1. [Admins](roles.md#admin)
2. [Members](roles.md#member)
3. [Forms](roles.md#forms)
4. [Read Only](roles.md#read-only)

Adding a user to Rewst won’t send out an invite to the user, but whitelists them and gives a specified level of access. Once added, they can access Rewst via the main link, or via form links that you provide, depending on their permissions.

Currently, each user can only be associated with one Rewst organization. When adding a user to your organization, they'll have access to all of your top-level and customer organizations. Adding a customer will only give them access to their company information.

## Add a user to a parent organization

To give a user at your organization access, first double check that the selected organization in the org selector is set to your organization.

From there, you can follow these steps:

1. Navigate to **Settings > Users**.
2. Click **Invite User** to add the user.
3. Enter the **Email** of the user.
4. Select their role from the list in the **Roles** drop down the menu.
5. Check the **Send Email** checkbox on or off, to suit your needs.
6. **Submit**.\
   \
   ![](<../../.gitbook/assets/Screenshot 2025-02-11 at 5.14.15 PM.png>)

## Add a customer

Make sure you have the correct organization selected for your customer before following the same steps as for adding a user to a parent organization.

Change the organization by clicking the selector arrow in the drop down organization menu at the top left of your screen. Type in the search bar to find the specific organization to narrow down your search.\
\
![](<../../.gitbook/assets/Screenshot 2025-02-11 at 5.16.33 PM.png>)

## Remove a user or customer

{% hint style="warning" %}
If needed, re-add a removed user by inviting them again. Removing a user won’t remove any workflows they’ve built or delete any activity in the platform, such as results of workflows or edits they made to forms.
{% endhint %}

1. Navigate to **Settings > Users**.
2. Click the **trashcan** to the far right of the user's record to remove the user.
3.  Confirm that you want to **Delete** in the confirmation dialog that appears.\
    <br>

    <figure><img src="../../.gitbook/assets/Screenshot 2026-03-06 at 9.58.17 AM.png" alt=""><figcaption></figcaption></figure>

## Add a large batch of users

If you have many users to add from your organization or one of your customers, set up the Add Users To Rewst Via Group Crate for your environment. Search for it in Crate Marketplace.

![](<../../.gitbook/assets/Screenshot 2025-09-19 at 3.02.11 PM.png>)<br>
