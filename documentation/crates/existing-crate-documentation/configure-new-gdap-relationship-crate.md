# Configure New GDAP Relationship Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find this Crate in our Crate Marketplace.

This Crate is specifically used for the setup of the [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/).&#x20;
{% endhint %}

## What does the Configure New GDAP Relationship Crate do?

This Crate is designed to create and assign the 12 roles specified in the document. If you require additional roles, you may need to customize the Crate yourself. The in-workflow documentation will guide you through this process.

To ensure that your GDAP is properly set to allow Rewst automation, you’ll need to unpack this Configure New GDAP Relationship Crate as part of the Microsoft Cloud Integration Bundle setup process. It's designed to create and assign the roles needed for the integration to properly function.

### What is GDAP?

In 2024, Microsoft moved away from regular user-based access, where users logged into Microsoft Entra with an individually permissioned account. Instead, they now operate via delegated admin permissions, where permissions are assigned from the top level down, for more secure access management. This is known as _Granulated Delegated Admin Permissions_, or _GDAP_.

### How the Crate works

{% hint style="warning" %}
Due to limitations with Microsoft's API, this Crate can't fully automate the GDAP setup and configuration process. Specifically, we can't approve the GDAP request in your customer tenant, as this requires manual intervention for security reasons.
{% endhint %}

The workflow:

1. The workflow confirms whether it was triggered by the form or webhook.
2. It ensures that it runs for the parent, top-level organization, not for one of the child organization customers.
3. It builds a list of roles to check for existing groups.
4. The workflow uses the group prefix and role list to see if groups already exist. If not, it creates and validates each security group until each of the required 12 groups are done.
5. During the form submission, we ask which user is used to authenticate the Rewst M365/Exchange integration. Once all the groups are created, we then add that user to each of them. Note that we recommend using a dedicated service account for this authorization.
6. We then look up the tenant information by the ID to get further details such as the default domain name and display name. We create the admin relationship using the relationship name asked for during the form submission and create an invite link to authorize the relationship. We then create an object which contains the relationship details, tenant details, and pass all this information back to the top-level workflow as a single object.
7. We send this information via email, including any potential erroneous tenants and the successful ones. For each relationship, we create two links:
   * **Approval Link**: This is the manual part. Each relationship needs to be approved by a global administrator in the customer tenant, or the customer themselves.
   * **Approved Link**: Once the relationship has been approved, you confirm it has been done. This kicks off the webhook trigger part of the workflow, which takes the relationship ID and then assigns the previously validated groups to the actual relationship. This can only be done once the relationship has been approved.

## Crate prerequisites

You must first click through the setup wizard for the Microsoft Cloud Integration Bundle and set up the Microsoft Graph integration.&#x20;

## Unpack the Configure New GDAP Relationship Crate

{% hint style="info" %}
During the workflow automation, each role must have an associated group. These groups will be named based on the group prefix you specify. For example, if the prefix is `Sunday`, the groups will be named `Sunday - Application Administrator`, `Sunday - User Administrator`, etc., following the format `[Group Prefix] - [Role Name]`.
{% endhint %}

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Configure New GDAP Relationship`.\
   \
   ![](<../../../.gitbook/assets/image (126).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.
5. Enter your desired prefix into the field.&#x20;
6.  Click **Continue**.\


    <figure><img src="../../../.gitbook/assets/Screenshot 2025-07-10 at 4.11.46 PM.png" alt=""><figcaption></figcaption></figure>
7. Ensure that both the **Form Submission** and **Webhook** trigger configuration accordion menus have their triggers toggled on to **Enabled**.
8. Click **Unpack Crate**.
9. Continue following the steps here to finish setting up the [Microsoft Cloud Integration Bundle](../../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/).

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
