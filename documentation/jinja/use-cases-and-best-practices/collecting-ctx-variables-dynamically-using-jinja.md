# Collect CTX variables dynamically using Jinja

Capturing all the input variables dynamically from a workflow can be challenging, particularly when these variables are created dynamically, like through a form submission, a parent workflow or other triggering event. The method illustrated below can be used to capture all inputs in a structured manner, which could then be sent to other systems, logged, or used for debugging.

## Use Case

To capture all input variables dynamically in a workflow using a No-Op task's transition and store them in a dictionary, then output

**Code Snippet**

Add the following code as a data alias in the initial No-Op task's transition in the workflow.

```django
{%- set keys = CTX()|list -%}
{%- set excluded_keys = ["execution_id","organization","originating_execution_id","rewst","sentry_trace","trigger_instance"] -%}
{%- set workflow_inputs = {} -%}
{%- for key in keys -%}
    {%- if key not in excluded_keys -%}
        {%- do workflow_inputs.update({key: CTX[key]}) -%}
    {%- endif -%}
{%- endfor -%}
{{ workflow_inputs }}
```

**Explanation**

1.  **List All Context Keys**: The `CTX()` function is called, and its keys are converted to a list.

    ```django
    {%- set keys = CTX()|list -%}
    ```
2.  **Exclude Unwanted Keys**: You can exclude the keys that are specific to the executing workflow, and don't need to be included in the final dictionary as defined.

    ```django
    {%- set excluded_keys = ["execution_id","organization",...] -%}
    ```
3.  **Initialize Dictionary**: A dictionary named `workflow_inputs` is initialized to hold the filtered context variables. For clarity, this should be whatever you named your Data Alias where you're adding this Jinja.

    ```django
    {%- set workflow_inputs = {} -%}
    ```
4.  **Iterate and Populate Dictionary**: Loop through each context key, check if it's not in `excluded keys`, and update `workflow_inputs` with the key-value pair.

    ```django
    {%- do workflow_inputs.update({key: CTX[key]}) -%}
    ```
5.  **Output Dictionary**: The dictionary is outputted and stored as however you defined the Data Alias for use in any subsequent tasks.

    ```django
    {{ workflow_inputs }}
    ```

### Add Pretty Formatting for Email Sending

**Overview**

If you want to format the dynamic workflow inputs in a human-readable manner before sending them via email or another output method, you can use HTML tags along with Jinja2 templating. This can be useful to add readability to the key-value pairs.

**Code Snippet**

Extend the existing code that captures workflow input variables dynamically to include pretty formatting for email sending. In this example, we will add the following Jinja in the message of the `core_sendmail` task:

```django
{% for key, value in CTX.form_data|dictsort %}
- <b>{{ key }}</b>: {{ value }}</br>
{% endfor %}
```

Here, the key-value pairs in `CTX.form_data` are sorted and formatted using HTML tags:

* `<b>` makes the key bold.
* `</br>` adds a line break after each key-value pair.

**Explanation**

*   **Key-Value Pair Sorting**: Jinja's `dictsort` filter sorts the dictionary by its keys.

    ```django
    CTX.form_data|dictsort
    ```
*   **Iterating Through Sorted Dictionary**: Iterate over the sorted dictionary, pulling out the key and value.

    ```django
    {% for key, value in CTX.form_data|dictsort %}
    ```
*   **Pretty Formatting**: HTML tags for bold and line break are used for each key-value pair.

    ```django
    <b>{{ key }}</b>: {{ value }}<br>
    ```
* **Final Output**: The entire message is formed by appending these formatted key-value pairs together, which can then be sent as the email body.

**JSON Update**

The `core_sendmail` task's JSON would look like this:

```json
"input": {
  "to": "{{ CTX.user.username }}",
  "title": null,
  "sender": "noreply",
  "message": "{% for key, value in CTX.form_data|dictsort %}\r\n- <b>{{ key }}</b>: {{ value }}<br>\r\n{% endfor %}",
  "subject": "Form Data",
  "render_markdown": true
},
```

**Note**

* Ensure that the email client you're sending to supports rendering HTML.
* Modify the HTML tags according to the email client's supported features for proper formatting.

This extension builds upon your initial code for capturing workflow variables, adding a step to format these variables effectively for email.
