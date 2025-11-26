# Date-time comparisons

## Date-Time comparisons in Jinja

Date and time manipulations are a crucial aspect of template engines like Jinja, especially when working with dynamic content and automation. In this article, we will explore various date-time comparisons and operations using Jinja's built-in functions.

{% hint style="info" %}
When working with date formats, it's essential to be familiar with the format codes. For reference, you can visit the [strftime.org](https://strftime.org/) website, which provides a comprehensive list of format codes for various date and time components.
{% endhint %}

### Format current date and time

Often, you need to display the current date and time in a specific format. Jinja provides the `now` filter for this purpose. Here's how you can format the current date and time in UTC:

```django
now_formatted -> {% now 'utc', '%Y-%m-%dT%H:%M:%SZ' %}
```

This will output the current UTC date and time in the format 'YYYY-MM-DDTHH:MM:SSZ'.

### Calculate dates

Jinja allows you to perform date calculations easily. For example, to get the date and time from two days ago in the same format as above:

```django
two_days_ago -> {% now 'utc' - 'days=2', '%Y-%m-%dT%H:%M:%SZ' %}
```

This code subtracts two days from the current UTC date and time and formats the result accordingly.

### Format eates using `format_datetime`

The `format_datetime` filter allows you to format a datetime object to a specified string format. In this example, we determine the day of the week for a specific date:

{% code overflow="wrap" %}
```django
It was a {{ ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]["2022-07-04T11:38:00" | format_datetime("%w") | int] }}
```
{% endcode %}

Here, we convert '2022-07-04T11:38:00' to a datetime object and then extract the day of the week as an integer, which is used as an index to fetch the corresponding day name.

### Load eate from a string

Sometimes, you may have a date in string format and need to convert it into a datetime object. The `load_datetime` filter serves this purpose. Here's an example of loading a date from the format '06-09-2022':

```django
{{ "06-09-2022" | load_datetime("%m-%d-%Y") }}
```

This code converts the string '06-09-2022' to a datetime object.

### Date arithmetic with `time_delta`

Jinja provides the `time_delta` filter to add or subtract units from a datetime object. In this case, we subtract 30 days from a loaded datetime object and format the result:

{% code overflow="wrap" %}
```django
{{ "06-09-2022" | load_datetime("%m-%d-%Y") | time_delta(days=-30) | format_datetime("%B %d, %Y") }}
```
{% endcode %}

The code first converts '06-09-2022' to a datetime object, then subtracts 30 days, and finally formats the result in the 'Month Day, Year' format.

