# Jinja reserved keywords

Jinja, like many programming and templating languages, has a set of _reserved keywords_ that can't be used as identifiers for variables, functions, or other custom elements within your templates. These keywords are integral to Jinja's syntax and functionality.

{% hint style="warning" %}
* Always prefix your own variables and function names to avoid collision with these reserved words.
* Use these words in the appropriate context to ensure readability and maintainability. ​
{% endhint %}

## List of reserved keywords

### Control structures

* `if`, `elif`, `else`: Conditional statements
* `for`: Looping through sequences
* `while`: Loop based on a condition
* `try`, `except`, `finally`: Exception handling
* `with`: Context management ​

### Variables and data types

* `True`, `False`: Boolean values
* `None`: Represents null value
* `del`: Deletes a variable ​

### Functions and definitions

* `def`: Function definition
* `return`: Returns a value from a function
* `yield`: Produces a generator
* `lambda`: Anonymous function
* `class`: Defines a class ​

### Operators and keywords

* `and`, `or`, `not`: Logical operators
* `in`, `is`: Comparison operators
* `raise`: Raise an exception
* `assert`: Assertion statement
* `break`, `continue`: Loop control
* `pass`: Null operation
* `global`, `nonlocal`: Scope specifiers ​

### Built-in methods

* `split`: Splits a string into a list
* `items`: Returns a list of dictionary's key-value tuple pairs
* `replace`: Replaces a string with another string
* `get`: Retrieves the value of a dictionary key
* `result`, `results`: Used in Rewst to store outputs. Note that these are not built-in methods, they're used in Rewst as variable named to store outputs and should not cause issues. ​

### Imports and modules

* `import`: Importing modules
* `from`: Specifies what attributes to import from a module ​

## Common error: JSON serialization issue

### Error:

​ `JSON cannot serialize 'builtin_function_or_method': <built-in method items of dict object at 0x7f618cb407c0>` ​

### Solution:

​ Ensure that you're not inadvertently referencing a built-in method like `items` as an object when you actually intend to use its output. Execute the method first before attempting to serialize it to JSON. ​

#### Example:

​ If the output of an API call stores all the items in a key named `items`, reference it like this: ​

```
{{CTX.customers.data["items"]}}
```

​ This ensures that you're referencing the actual data rather than the built-in `items` method, thus avoiding the serialization issue.



