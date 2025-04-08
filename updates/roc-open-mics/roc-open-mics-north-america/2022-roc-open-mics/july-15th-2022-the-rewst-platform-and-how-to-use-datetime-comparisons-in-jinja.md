# July 15th 2022 - The Rewst platform and how to use DateTime comparisons in Jinja

In this call, we're going to have a quick refresh on the platform to understand some of the recent changes both in navigation and on the backend.

We're also going to look at how to use DateTime objects to either compare to other formatted DateTIme or understand the current date +/- x days/time

Finally, we'll be looking through some client workflows using SentinelOne!

It's a fully packed ROC Open Mic call today!

{% embed url="https://www.youtube.com/embed/gPjFGS-DxFg" %}

## Contents of the recording

<details>

<summary><strong>Rewst Platform Refresher</strong></summary>

Basic features of the platform - Integrations - Workflows - Forms - Triggers - Templates - Scripts - Organization variables - Results - Crates Jinja - Set and Use variables - jedi: Obiwan Kenobi - last\_name: \{{ CTX.jedi.split(' ')\[1] \}} - Filters - lower - replace - jedi\_s: \{{ CTX.jedi | replace (' ','\_') | lower \}} - Task Results

</details>

<details>

<summary><strong>How to get help from the ROC</strong></summary>

How to get help - Engage the ROC in Slack - Email support coming soon! - \[FUTURE] Live chat in the app - Would this be helpful to people? - Documentation - https://rewst.help - Feature Requests - https://rewst.canny.io/

</details>

<details>

<summary><strong>Updates for the week</strong></summary>

* Moar Horsepower - engine upgrades for RAM + CPU
* DateTime Comparisons
  * now\_formatted ->
  * two\_days\_ago ->
  * format\_datetime from a datetime object to a specified string format
    * It was a \{{ \["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]\["2022-07-04T11:38:00" | format\_datetime("%w") | int] \}}
  * load\_datetime: from a datetime object to a specified string format
    * \{{ "06-09-2022" | load\_datetime("%m-%d-%Y") \}}
  * time\_delta to add/subtract units from a datetime object
    * \{{ "06-09-2022" | load\_datetime("%m-%d-%Y") | time\_delta(days=-30) | format\_datetime("%B %d, %Y") \}}
  * Help with Date Formats: https://strftime.org/

</details>

<details>

<summary><strong>Show and Tell</strong></summary>

* Michael w/ CPI will show his SentinelOne WF
  * Takes phishing alerts
  * Finds URLs in the report
  * Checks URLs against SentinelOne Deep Visibility
  * Parses DV data for whether other endpoints have visited the URLs
  * Places into CWM Ticket Notes

</details>

<details>

<summary><strong>Open Q&#x26;A</strong></summary>

* Jared w/ SnapTech
  * Graph API problems
    * Adam finds some magic JSON to fix it \[maybe]

</details>
