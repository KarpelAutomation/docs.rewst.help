# Rewst support: Allow write access

{% hint style="warning" %}
By default, all organizations are now read-only for Rewst support. If you have organizations that you wish to continually have available for write access to support, you’ll need to follow the steps in this document to manually set write access for each of those organizations. These changes automatically went into effect for all of your child organizations existing prior to February 2025.

NOTE: setting write access for a parent organization will cascade down and set this level of support access for all of your child organizations.
{% endhint %}

## What is support access?

Rewst’s support access feature allows you to control levels of child organization access for Rewst employees, enhancing transparency and security for your organizations. You have the flexibility to enable or disable write access permanently or temporarily. Regardless of your chosen setting, you’ll still be able to take advantage of Rewst’s support assistance if you need help.

{% hint style="info" %}
The two levels of access for this feature are:

1. Read-only access: Rewst support will be able to see all details in the organization. We will not be able to edit anything within that organization. This is the default setting for organizations for all support. \
   NOTE: Rewst support with read-only access are able to use the Jinja live editor.
2. Write access: Rewst support will be able to edit and make changes to the contents of that organization.
{% endhint %}

## Support access role options

Rewst support employees are granted read-only access to your organizations unless you specifically set access for that organization to **enabled**. Rewst reserves the right to override access restrictions to ensure that platform stability and performance is maintained at acceptable levels.

{% hint style="warning" %}
Rewst support employees are granted read-only access to your organizations unless you specifically set access for that organization to enabled. Rewst reserves the right to override access restrictions to ensure that platform stability and performance is maintained at acceptable levels.
{% endhint %}

## Set Rewst access control

Note that only the Rewst [Admin role](../../documentation/settings/roles.md#admin-role) can enable or disable support access.

### Set write access control

1. **Navigate** to **Settings > Permissions** in the Rewst platform.
2. **Click** the **Rewst Support** accordion to expand the menu.
3. Toggle the setting on to **enable write access to the Rewst Support team.**
   1. If your access is disabled, the toggle will be off and grayed out.
   2.  This will reveal the new subtoggle **Set an expiration on write access**. Under the subtoggle, you have the option to grant temporary write access to Rewst support.\
       \


       <figure><img src="../../.gitbook/assets/Screenshot 2025-01-30 at 4.10.41 PM.png" alt=""><figcaption><p>Note the different options under the subtoggle</p></figcaption></figure>
4. Choose from the preset durations, or set a **Custom** duration via the **Date** **and Time** fields.
   1. Once your duration has been set or changed, a green confirmation dialog will appear at the top of your screen.\
      ![](<../../.gitbook/assets/Screenshot 2025-01-30 at 4.12.01 PM.png>)\

   2. Remaining time in the access duration is displayed in the bottom left corner of the left side menu. Rewst support can also see this countdown from their side of the Rewst platform. If the duration times out before your support issue is handled, you’ll need to grant write access to your Rewst support member again.\
      ![](<../../.gitbook/assets/Screenshot 2025-01-30 at 4.15.37 PM.png>)

