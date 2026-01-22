# Dictionary unpacking

_Dictionary unpacking_ is a powerful technique in Jinja templating that enables the merging of dictionaries seamlessly. It involves combining the contents of two dictionaries into a new dictionary. The `**` syntax is used while looping through dictionaries, allowing all the items within the dictionaries to be extracted and added to a new dictionary effortlessly.

&#x20;Whether you need to merge dictionaries based on specific attributes or stack them together seamlessly, mastering dictionary unpacking techniques enhances the flexibility and readability of your templates. Incorporate these practices into your Jinja templates to streamline your data processing workflows and create dynamic and adaptable templates.

### **Merged on attribute**

In scenarios where you want to merge dictionaries based on a specific attribute, the following code demonstrates how to achieve this:

```django
{% set dict1 = [
    {
    "title": "admin",
    "workdays": "mon-fri",
    "name": "rewsty",
    }
] %}
{% set dict2 = [
    {
    "name": "rewsty",
    "pay_rate": "all_the_moneys",
    "start_date": "1-1-1970"
    }
] %}
{{-
    [
        { **dict_item1, **dict_item2}
        for dict_item1 in dict1
            for dict_item2 in dict2
                if dict_item1["name"] == dict_item2["name"]
    ]
-}}
```

In this example, the dictionaries `dict1` and `dict2` are merged based on the matching `"name"` attribute, resulting in a new merged dictionary.

### **Stacked dictionary**

If you simply want to stack dictionaries one on top of the other without merging them, you can use the `+` operator:

```django
{% set dict1 = [
    {
    "title": "admin",
    "workdays": "mon-fri",
    "name": "rewsty",
    }
] %}
{% set dict2 = [
    {
    "name": "rewsty",
    "pay_rate": "all_the_moneys",
    "start_date": "1-1-1970"
    }
] %}
{{ dict1 + dict2 }}
```

In this case, the dictionaries `dict1` and `dict2` are stacked on top of each other, preserving their individual structures.

### **Straight merged**

For a straightforward merging of dictionaries without any conditional logic, the following code demonstrates how to achieve a direct merge:

```django
{% set dict1 = [
    {
    "title": "admin",
    "workdays": "mon-fri",
    "name": "rewsty",
    }
] %}
{% set dict2 = [
    {
    "name": "rewsty",
    "pay_rate": "all_the_moneys",
    "start_date": "1-1-1970"
    }
] %}
{{-
    [
        {**dict_item1, **dict_item2}
        for dict_item1, dict_item2 in  dict1| zip(dict2)
    ]
-}}
```

Here, `zip()` is used to pair corresponding elements from `dict1` and `dict2`, and the `**` syntax ensures a seamless merge of dictionaries, resulting in a new merged dictionary.
