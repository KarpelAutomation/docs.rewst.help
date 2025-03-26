# Roles and permissions

Roles settings can be accessed in the Rewst platform by navigating to **Settings** **>** **Permissions** **>** **Roles**. Rewst has several different role choices available when [adding a user](./#add-and-remove-users-from-rewst):

1. Admin
2. Member
3. Forms
4. Read only

Let's take a look at how these are defined.

<figure><img src="../../.gitbook/assets/image (43).png" alt=""><figcaption><p>The Permissions menu screen</p></figcaption></figure>

### Admin

The _admin_ role is for the super user who will have access permissions to everything in their organization. They can do the following at the top level organization:

* Add and remove users
* Add user roles
* View, edit, and build workflows
* Check results
* Add, edit, and configure forms
* Manage integrations and organization variables
* Create a test user that can create, read, update, and delete
  * This is similar to user impersonation without requiring a real user
* Create custom roles based on the following default permissions:
  * rewst.view
  * rewst.edit
  * rewst.admin\_access
  * rewst.form.view
  * rewst.app\_platform.view
  * Additional create, read, update, delete granular permissions

An admin will be able to see all of the customer organizations and manage information there. At the customer level, an admin will be able to access the same information for the customer organization.

### Member

The _member_ role can do the following in the member's organization:

* Add and remove users
* View, edit, and build workflows
* Check results
* Add, edit, and configure forms
* Manage integrations and organization variables

### Forms

The primary use case for this permission level is to provide customers or internal employees with a way to fill out forms. A user with the forms role will only have access to form URLs that are provided to them by an admin or member. This means they will not have access to the platform itself and only have the ability to view and fill out different forms for the organization or customer they're added to. Anyone added at a customer level will only have access to forms for that customer, while a user added at the parent organization level would have access to forms from any child organization and the parent organization itself.

### Read only

The _read only_ role's primary use case is to grant lower-level technicians access to Rewst, enabling them to view workflow results. Additionally, it serves as a mechanism to limit access to certain features and configurations. Users with the read only role can access Rewst and review data and information but are restricted from creating or updating anything within the platform.

### Custom roles

The custom roles feature lets you add and define additional roles however you wish.&#x20;

Add a custom role by clicking **+** in the **Roles** menu.

<figure><img src="../../.gitbook/assets/Screenshot 2025-01-10 at 11.06.34 AM.png" alt="" width="366"><figcaption></figcaption></figure>

{% hint style="warning" %}
The custom roles feature is only available to Rewst users with admin or staff permissions.
{% endhint %}

