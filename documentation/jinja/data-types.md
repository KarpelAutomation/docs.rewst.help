# Data types

A _data type_ is a classification that specifies the type of value a variable can hold, which determines the operations that can be performed on it and how the data is stored. Understanding data types is fundamental for effective programming in Jinja templating.&#x20;

### **Integers: Whole numbers**

_Integers_ in Jinja are whole numbers without decimal points. Examples include 1, 2, and 3.

```django
{{- 1 -}}
```

### **Floats: Decimal numbers**

_Floats_ encompass numbers with decimal points, such as 1.1, 2.2, and 3.14.

```django
{{- 1.1 -}}
```

### **Strings: Textual data**

_Strings_ represent words or sentences enclosed in quotes, like "Hello World".

```django
{{- "hello world" -}}
```

### **Lists: Ordered collections**

_Lists_ are ordered collections of data, allowing a mix of different types within the same list.

```django
{{- ["hello", "world", 1, 2, 3] -}}
```

Learn how to work with Jinja lists [here](use-cases-and-best-practices/jinja-lists.md), and how to combine Jinja lists [here](use-cases-and-best-practices/general-info.md).&#x20;

### **Tuples: Immutable pairs**

_Tuples_ consist of two or more linked values, enclosed in parentheses and separated by commas. Tuples cannot be changed after creation.

```django
{{- (1, 0) -}}

or

{% set myPair = ("dog", "cat") %}
```

### **Dictionaries: Key-value pairs**

_Dictionaries_ store data in key-value pairs, similar to JSON. To retrieve a value from your dictionary,  you use the key that you stored the value with. They can be modified and appended to after creation.

```django
{{-
    {
        "name": "rewsty",
        "age": 12908290382,
        "favorite_colors": ["red", "blue", "black", "teal"],
    }
-}}
```

Learn about _dictionary unpacking_ [here](common-jinja-examples/dictionary-unpacking.md).&#x20;

### **Sets: Unique values**

_Sets_ are collections of unique values, eliminating duplicates. Converting a list into a set removes duplicate items.

```django
{{- {1, 2, 3} -}}
```

### **Booleans: True or false**

_Booleans_ represent truth values and can be either true or false.

```django
{{- true -}}
```

### **NoneType: Null values**

_NoneType_ represents null or None values, indicating the absence of a value. To check for NoneType, the keyword `none` is used.

```django
{{- none -}}
```
