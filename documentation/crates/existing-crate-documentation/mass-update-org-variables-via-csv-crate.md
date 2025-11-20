# Mass Update Org Variables via CSV Crate

{% hint style="info" %}
If you’re new to Crates, read through our introductory Crate documentation [here](https://docs.rewst.help/prebuilt-automations/crates). Find the Crate in our Crate Marketplace.
{% endhint %}

## What does the Mass Update Org Variables via CSV Crate do?

This Crate allows you to bulk add or update organization variables using a CSV file within the associated form contained within the Crate.

## Unpack the Mass Update Org Variables via CSV Crate

1. Navigate to **Crates > Crate Marketplace** in the left side menu of the Rewst platform.
2. Search for `Mass Update Org Variables via CSV`**.**\
   \
   ![](<../../../.gitbook/assets/image (173).png>)
3. Click on the Crate tile to begin unpacking.
4. Click **Unpack Crate**.&#x20;
5. Click **Continue**.
6. Add your **Time Saved**.&#x20;
7. Click **Unpack**.

### Use the Mass Update Org Variables via CSV Crate

1.  You'll need to prepare a CSV file with the following column headers:

    * `name`: The name of the organization
    * `org_id`: The unique identifier for the organization
    * `org_variable_1`: The name of the variable
    * `org_variable_2`: The data or value for the variable<br>

    #### Example Column Headers

    ```
    "name","org_id","org_variable_1","org_variable_2"
    ```



    #### Example Row Data

    ```
    "testorg","abcdefg-hijk-aaa12-855d-3d1ddd1917aa","testvar1","true"
    "testorg2","bbbbbg-hijk-aaa12-855d-3dccca1917aa","testvar2","55"
    ```
2. Navigate to **Automations > Forms** in the left side menu of your Rewst platform.
3.  Search for the form named CSV Mass Org Variable Upload.<br>

    <figure><img src="../../../.gitbook/assets/Screenshot 2025-04-28 at 1.18.53 PM.png" alt=""><figcaption></figcaption></figure>
4. Click **⋮**, then **Usages**. &#x20;
5. Click **View Direct URLs**.
6. Click on the URL in the dialog that appears.
7. Upload your CSV into the form.
8. Check on the **Have you checked this file for accuracy?** box.\
   \
   ![](<../../../.gitbook/assets/Screenshot 2025-04-28 at 1.23.05 PM.png>)
9. Click **Submit**.

{% hint style="info" %}
Got an idea for a new Crate? Rewst is constantly adding new Crates to our Crate Marketplace. Submit your idea or upvote existing ideas here in our [Canny feedback collector](https://rewst.canny.io/crates).
{% endhint %}
