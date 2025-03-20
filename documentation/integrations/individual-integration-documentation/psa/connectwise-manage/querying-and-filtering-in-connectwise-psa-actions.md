# Querying and Filtering in ConnectWise PSA Actions

## Introduction

The ability to filter and query specific data is essential when working with ConnectWise PSA Actions in Rewst. This guide provides an overview of how to utilize query string parameters and conditions, offering practical examples and insights tailored to various actions.

## Understanding Query String Parameters and Conditions

Query string parameters and conditions allow you to filter results in ConnectWise PSA Actions. By using specific symbols and expressions, you can pinpoint the data you need.

### **How to Use Symbols:**

* `=`: Matches exactly
* `!=`: Does not match
* `<, <=, >, >=`: Relational operators
* `contains, like, in, not`: Specific condition operators

### Practical Examples

Learn how to apply query string parameters and conditions in real-world scenarios.

#### **Example 1: List Companies**

* **Action**: `List Companies`
* **Query Condition**: `name="Test Rewst"`
* **Explanation**: Easily locate companies by name.

#### **Example 2: List Service Tickets**

* **Action**: `List Service Tickets`
* **Query Condition**: `board/name="Integration"`
* **Explanation**: Organize tickets by board names for efficient processing.

#### **Example 3: List Contacts with Specific Communication Items**

* **Action**: `List Contacts`
* **Child Condition**: `communicationItems/value like "john@Outlook.com" AND communicationItems/communicationType="Email"`
* **Explanation**: Target contacts based on communication preferences.

### Querying Nested Attributes

Accessing data within nested objects requires a specific approach.

* **Syntax**: Use a forward slash `/`
* **Example**: `communicationItems/value`
* **Use Case**: When you need to extract specific attributes from nested entities, such as communication items within contacts.

### Conditions in ConnectWise PSA Actions

Different conditions serve different purposes. Mastering these conditions enables you to build complex and tailored queries.

* **Strings**: Match text patterns (`Summary = "string"`)
* **Integers**: Locate numerical values (`Board/Id = 123`)
* **Boolean**: Filter by true/false conditions (`ClosedFlag = True`)
* **Datetimes**: Sort by date and time (`LastUpdated = [2016-08-20T18:04:26Z]`)
* **Operators**: Define relational/logical conditions (`Summary Not Contains "Low Priority"`)
* **Logic Operators**: Combine multiple conditions (`AND, OR`)
* **Reference Conditions**: Access fields within referenced objects (`manufacturer/name`)

## Conclusion

Querying and filtering in ConnectWise PSA Actions allow for intuitive data manipulation. By understanding the underlying principles and making use of practical examples, you can unlock the full potential of ConnectWise PSA Actions within your workflows.
