# App Builder: Permissions

{% hint style="info" %}
By default, users with Rewst Admin and Member roles have access to to the App Builder feature in Rewst.

Roles and permissions for App Builder follow the general role and permission guidance for Rewst. For more information on what those roles and permissions are, see our documentation [here](../../settings/roles.md).
{% endhint %}

Setting permissions ensures that only the right people have access to your apps and pages. It's as if you're putting up a virtual fence, allowing you to control who can view or edit your work. This document explains how permissions interact between organizations, apps, pages, and custom roles in Rewst.

## How permissions work for App Builder

{% hint style="info" %}
Permissions flow downward: Organization → App → Page

* Higher-level permissions always apply to everything beneath them.
* Lower-level permissions cannot remove access granted at a higher level.
{% endhint %}

| Level            | Grants Access To                 | Restrictive?                             | Notes                          |
| ---------------- | -------------------------------- | ---------------------------------------- | ------------------------------ |
| **Organization** | Enables the role within that org | No                                       | Role + org required for access |
| **App**          | All pages inside the app         | No                                       | Overrides page-level access    |
| **Page**         | Specific pages                   | Yes — _only if not granted at app level_ | Additive access only           |

### Roles and organizations work together

Custom roles must be created in an organization, typically the parent org where the app resides. A user may only access an app or page if they have both a role and that role assigned within an authorized organization. If a custom role is created in the parent organization, users in child organizations can receive that role as long as their child organization  is authorized for the app.

{% hint style="warning" %}
There are current UI inconsistencies related to how roles are displayed:

**Role name vs UUID mismatch**

Some parts of the UI show role UUIDs instead of display names. This happens due to mismatched organization contexts in different settings pages.

Where the mismatch occurs:

* `settings/permissions` shows roles for the currently selected organizaton
* `settings/users` and `settings/apps` show roles from the current user's organization

If a custom role belongs to a parent organization but the UI is looking at a child organization, the system can't find the role label and displays the UUID instead.
{% endhint %}

### App-level permissions: Global access to the app

Assigning a role at the app level grants that role access to every page inside the app. App-level permissions:

* Set the baseline access for the role
* Apply to all users who have that role in an authorized organization
* Automatically grant access to all pages within the app

App-level permissions don't:

* Restrict which pages a user can access
* Hide navigation elements in the End User Portal

A role must include the following to access pages inside an app:

* `rewst.form.view` — view or execute forms/pages
* `rewst.app_platform.view` — load the app container/shell

Without both permissions, users can't load any pages in the app.

### Page-level permissions: Additive per-page access

Page-level permissions grant access to specific pages. They don't restrict or override access that was already granted at the app level.

Page-level permissions:

* Allow a role to open selected pages
* Only work as intended if the role is **not** assigned at the app level

Page-level permissions don't:

* Override app-level access
* Remove access already granted at a higher level

#### Use custom roles to limit page access&#x20;

To restrict a role to specific pages:

* Assign the role only at the page level.
* Ensure the user's org is authorized for the app.
* Don't assign the role at the app level.
* Don't expect page-level permissions to restrict access if the app-level permission is granted.

### End User Portal-specific permission behavior

In the [End User Portal](../prebuilt-apps/end-user-portal.md):

* Page access is enforced **when a user opens a page**, not when navigation is displayed.
* Navigation links may still appear even if the user lacks access.
* Users may see links, but the system will restrict access to pages they are not authorized to access.

## Update App Builder app permissions

1. Navigate to **App Builder > Apps** in the left side menu of your Rewst platform.
2. Locate the app you want to edit permissions for in your app list.
3.  Click **⋮ > Permissions** next to the app. <br>

    <div align="left"><figure><img src="../../../.gitbook/assets/Screenshot 2025-08-21 at 5.20.42 PM.png" alt="" width="137"><figcaption></figcaption></figure></div>
4. Use the drop-down selectors to choose the roles and organizations that should have access to your live app.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-08-21 at 5.36.01 PM.png>)
5. Click **Update**.

{% hint style="warning" %}
To see forms and data for a child organization, the Rewst user must be created at the child level organization, not the parent organization. Otherwise, the parent level forms will show up.
{% endhint %}

## Update App Builder page permissions

1. Navigate to **App Builder > Apps** in the left side menu of your Rewst platform.
2. Locate the app you want to edit permissions for in your app list and click on it.
3. Find your desired page in the **Pages** list of the App Builder
4. Click **⋮** to the right of your app.
5. Click **Permissions**.
6. This will open the permission settings for that particular page.
7. Use the drop-down selectors to choose the roles and organizations that should have access to your page.
8. Click **Update**.

{% hint style="info" %}
If you have suggestions for new App Builder features, or general feedback about your experience using this part of Rewst, submit your thoughts to our [Canny](https://rewst.canny.io/app-builder).&#x20;
{% endhint %}
