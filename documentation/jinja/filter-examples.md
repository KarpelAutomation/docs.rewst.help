# Jinja filter examples

### General filters

`{{ CTX.firstname | capitalize }}`

Result: Capitalizes the first character of the input variable. If firstname is "john", it'll become "John"

`{{ CTX.firstname | lower }}`

Result: Lowers the entire variable. If firstname is "jEnnIfer", it'll become "jennifer"

`{{ CTX.firstname | upper }}`

Result: Capitalizes the entire variable. If firstname is "jeremy", it'll become "JEREMY"

{% hint style="info" %}
For more, see [list-of-jinja-filters.md](list-of-jinja-filters.md "mention")
{% endhint %}

