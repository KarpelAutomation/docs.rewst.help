# Working with options generator workflows in Rewst

{% embed url="https://youtu.be/zeSMXSm0BK0" %}

## **Three Ways to Populate Dropdown Options**

### 1. **Manually Adding Options**

* **Use Case:** Manually input options into the dropdown for straightforward cases.
* **Example**: In the `Add New Client to Rewst` form, manually add options such as Azure Active Directory, On-Prem AD, or Jump Cloud to the `Primary Identity Provider` dropdown.

### 2. **Dynamically Pulling from Your Integration**

* **Use Case:** Automatically retrieve all options directly from an integration.
* **Example**: For the `Ninja RMM Organization` dropdown, enable `Dynamic Options` and select Ninja RMM as the integration to populate the dropdown with all organizations from Ninja RMM.

### 3. **Using an Options Generator to Create a Filtered List**

* **Use Case:** Leverage an Options Generator to filter information from an integration and generate a list of tailored options.
* **Example**: In forms like `Immybot Install Ad Hoc Software`, use Options Generators for dropdowns like Ticket Number, Software Lists, and Choose Device Option to dynamically generate options based on specific workflow outputs.

## **Understanding Options Generators**

An Options Generator is a specialized workflow designed to filter data from integrations and provide relevant options for form fields.

### **Setting Up an Options Generator**

To configure an Options Generator:

1. **Configure Workflow Settings**: Set the `Workflow Type` to `Options Generator`.
2. **Output Configuration**: Create a field named `options` linked with the data variable that contains the filtered results you'd like to present in your list.

This configuration enables the form to pick this workflow as an Options Generator, as well as tells it which results to return into selectable form options.

{% hint style="info" %}
Make sure the variable you assign from your workflow to your `options` output has the necessary id and label field accessible. This ensures that the Options Generator can accurately retrieve and display the relevant options based on the filtered data.
{% endhint %}

### **Debugging with RoboRewsty**

For troubleshooting unsynced workflows or to better understand the operations of an Options Generator, utilize the tool RoboRewsty.

**Additional Resources**: For more detailed guidance on using RoboRewsty, [check out this Robo Rewsty Micro Course!](automate-documentation-with-robo-rewsty.md)

### **Conclusion**

Effectively using Options Generators enhances the flexibility and functionality of Rewst forms, enabling dynamic control over dropdown contents based on real-time data from integrations. By understanding and implementing these tools, users can significantly streamline their workflow processes.
