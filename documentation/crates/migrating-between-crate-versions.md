# Migrating between Crate versions

## Considerations when migrating

When officially migrating to a newer version of a Crate, various items should be taken into consideration as part of this process. Below is a common list of actionable items to consider when migrating.

* Disabling workflow triggers
* Updating any workflow wrappers or completion handlers to utilize the new version of the Crate
* Updating references to the form.
  * For example, this may include any workflows that add form links to tickets
* Updating any custom forms that currently utilize the current version to be compatible with and utilize the new version

## Crate migration steps

1. Unpack the new Crate in your environment.
2. Test the setup to verify that your organizational variables are correctly configured.
   * The same org variables may be used as in the previous version.

{% hint style="warning" %}
If migrating to the Microsoft: User Onboarding Crate V2, please reference [#recommended-organizational-variable-configuration](existing-crate-documentation/microsoft-user-onboarding-crate-v2/#recommended-organizational-variable-configuration "mention")
{% endhint %}

3. Once testing is complete, transition to the new workflow.
4. If using a new form:
   1. Disable form triggers in the previous workflow.
   2. Update internal documentation with the new form URL.
   3. If necessary, provide customers with the new form link.
5. If keeping the previous form linked:
   1. The previous form can be linked to this version, but will not receive future updates.
   2. Rewst will only maintain the new version moving forward.
