# Data types

## **Introduction**

Understanding data types is fundamental for effective programming in Jinja templating. This article provides a comprehensive overview of the main data types in Jinja, exploring integers, floats, strings, lists, tuples, dictionaries, sets, booleans, and NoneType. By grasping the characteristics and use cases of these data types, developers can harness the full potential of Jinja templates.

### **Integers: Whole numbers**

Integers in Jinja are whole numbers without decimal points. Examples include 1, 2, and 3.

```django
{{- 1 -}}
```

### **Floats: Decimal numbers**

Floats encompass numbers with decimal points, such as 1.1, 2.2, and 3.14.

```django
{{- 1.1 -}}
```

### **Strings: Textual data**

Strings represent words or sentences enclosed in quotes, like "Hello World".

```django
{{- "hello world" -}}
```

### **Lists: Ordered collections**

Lists are ordered collections of data, allowing a mix of different types within the same list.

```django
{{- ["hello", "world", 1, 2, 3] -}}
```

### **Tuples: Immutable pairs**

Tuples consist of two or more linked values, enclosed in parentheses and separated by commas. Tuples cannot be changed after creation.

```django
{{- (1, 0) -}}
```

### **Dictionaries: Key-value pairs**

Dictionaries store data in key-value pairs, similar to JSON. They can be modified and appended to after creation.

```django
{{-
    {
        "name": "rewsty",
        "age": 12908290382,
        "favorite_colors": ["red", "blue", "black", "teal"],
    }
-}}
```

### **Sets: Unique values**

Sets are collections of unique values, eliminating duplicates. Converting a list into a set removes duplicate items.

```django
{{- {1, 2, 3} -}}
```

### **Booleans: True or false**

Booleans represent truth values and can be either true or false.

```django
{{- true -}}
```

### **NoneType: Null values**

NoneType represents null or None values, indicating the absence of a value. To check for NoneType, the keyword `none` is used.

```django
{{- none -}}
```

