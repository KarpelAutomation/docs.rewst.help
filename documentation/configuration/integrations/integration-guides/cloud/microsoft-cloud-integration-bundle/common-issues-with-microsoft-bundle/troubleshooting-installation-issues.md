---
description: >-
  Should you encounter issues during setup, this section aims to address common
  problems and their solutions, ensuring a smooth integration experience.
---

# Troubleshooting Installation Issues

## Common Installation Errors

### **Auth App Registration Error**:

* **Symptom**: Failure to proceed past the authentication step, not even reaching the Microsoft Auth login screen.
* **Common Cause**: This may occur due to a [Microsoft Minute](embracing-the-microsoft-minute.md) delay where the system is still processing the app registration.
* **Solution**: Wait a minute or two before attempting to re-authenticate. This allows time for the backend processes to complete.

{% hint style="info" %}
**If you set up your Microsoft integrations Prior to April 2024,** you are most likely leveraging the legacy Rewst Prod App Registration for authenticating with your Microsoft Tenant. This setup uses a fixed set of permissions and is scheduled for future deprecation. We recommend [transitioning to the Rewst MS Cloud Connector](../migrating-legacy-microsoft-integrations.md) or utilizing an [Owned App Registration](../owned-app-registration.md) in your Microsoft tenant for enhanced permission control and a streamlined integration experience.
{% endhint %}

### **Legacy App Registration Conflicts**:

* **Symptom**: Successful authentication only after switching between the new Rewst Cloud Connector and the legacy Rewst Prod App Registration.
* **Potential Cause**: Existing Rewst Prod installations in the Microsoft tenant might interfere with the new setup.
* **Solution**:
  * Restart the integration wizard from the beginning.
  * Make sure all configuration steps are correctly completed. Pay extra attention to step 2 and confirm that a notification appears, indicating that the configurations have been updated.

{% hint style="warning" %}
**Verify Rewst Prod Installation**

The Rewst Prod App is necessary for authentication and might already be installed in your Microsoft Tenant. Existing installations could influence the new authorization processes.

**Note**: The Rewst Prod App is mainly used for authentication purposes. It should be maintained but with limited permissions, only necessary for Rewst login.

**Future Updates**: The Rewst Prod App remains essential for Rewst login authentication. Upcoming updates will restrict its permissions to those strictly needed for logging in, improving security.
{% endhint %}

