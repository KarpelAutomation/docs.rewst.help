---
description: Managing structured data efficiently.
---

# Understanding complex data structure

## Module overview

In this module, you'll learn how to manage structured data efficiently using complex data structures in Jinja. The video demonstrates how to combine multiple dictionaries into lists for structured storage, and how to access, modify, and iterate over that data. Mastering these techniques will enable you to build automation workflows that are both flexible and scalable.

## Video _(2:13 minutes)_

{% embed url="https://youtu.be/lSUXtU-n-LI" %}

<details>

<summary>Why it matters</summary>

* Common in automation – Complex data structures are frequently used to represent lists of users, devices, and tickets.
* Enhances data processing – They enable efficient retrieval, modification, and organization of structured information.

</details>

<details>

<summary>Lists of dictionaries</summary>

* Combines multiple dictionaries into a list for structured storage.
* Each dictionary represents an object with key-value pairs.
*   **Example:**

    ```

    users = [
        {"name": "Alice", "role": "admin"},
        {"name": "Bob", "role": "user"}
    ]
    ```

</details>

<details>

<summary>Accessing specific data</summary>

* Identify a dictionary’s position in the list using its index.
* Retrieve values using key references.
* **Example**: Gets the name of the first user.

```

users[0]["name"]
```

</details>

<details>

<summary>Modifying data in structures</summary>

* **Lists**: Add or remove dictionaries using `.append()` or `.remove()`.
* **Dictionaries**: Update key-value pairs directly.
* **Example**: Changes Bob’s role to "moderator."

```
users[1]["role"] = "moderator"
```

</details>

<details>

<summary>Looping through complex structures</summary>

* Iterate over lists to access dictionary values.
* Use nested loops for deeper data structures.
*   **Example**: Prints each user’s name and role.

    ```

    {% raw %}
    {% for user in users %}
        {{ user.name }} - {{ user.role }}
    {% endfor %}
    {% endraw %}
    ```

</details>

<details>

<summary>The impact</summary>

* Efficient workflows – Organizes and processes structured data seamlessly.
* Flexible automation – Adapts to different data formats for scalability.
* Improved readability – Simplifies complex data handling in automation scripts.

</details>

By mastering complex data structures in Jinja, you'll empower your automation workflows with the clarity and adaptability needed to handle real-world data challenges.
