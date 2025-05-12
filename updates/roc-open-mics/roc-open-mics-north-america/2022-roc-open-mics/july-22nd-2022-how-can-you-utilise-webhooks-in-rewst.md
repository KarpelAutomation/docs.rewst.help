# July 22, 2022 - How can you utilise webhooks in Rewst?

In this call, we're going to have a quick refresh on the platform to understand some of the recent changes both in navigation and on the backend.

We're also going to look at how you can use webhooks as both triggers for workflows, and how to use them in the workflows themselves to send/retrieve data from various platforms.

Finally, we'll finish with a Live Q\&A about all the things you want to know!

{% embed url="https://www.youtube.com/embed/VhB0ljPaRmo" %}

## Contents of the recording

<details>

<summary><strong>Rewst Platform Refresher</strong></summary>

Basic features of the platform - Integrations - Workflows - Forms - Triggers - Templates - Scripts - Organization variables - Results - Crates

</details>

<details>

<summary><strong>How to get help from the ROC</strong></summary>

How to get help - Engage the ROC in Slack - Email support coming soon! - \[FUTURE] Live chat in the app - Would this be helpful to people? - Documentation - https://rewst.help - Feature Requests - https://rewst.canny.io/

</details>

<details>

<summary><strong>Updates for the week</strong></summary>

* CWA Generic Action
* EXO bug fix for headers
* Datto UDF Support
* Jinja2 Live Editor: new \[Tools] button on left navigation
  * More on this in the Learning section
* Monaco hints & whitespace showing

Coming soon

* CW Control Integration
* Results page performance improvements
* MS Graph Send Mail improvements
* More regex functionality

</details>

<details>

<summary><strong>Learning Topic</strong></summary>

*   HTTP Request

    * https://swapi.dev/api/planets
    * Grab results and paste into Live Editor. Example snippets:
    * \{{ \[ planet for planet in CTX.data.results ] \}}
    * \{{ \[ planet.name for planet in CTX.data.results ] \}}
    * \{{ \[ {"name":planet.name,"year\_length":planet.orbital\_period} for planet in CTX.data.results ] \}}
    *

    \{{ year\_data | sort(attribute="year\_length") \}}
* Dynamic Webhooks
  * Core -> Create Webhook
    * When this action runs, it creates an HTTP Listener (web site basically) at a random URL
      * URL is one-time use only
      * Once it is hit once, it disappears
    * Output items:
      * url URL of the webhook
      * webhook\_id\` Used for the _Await Webhook Request_ action
    * GET Webhook - Response Body ( curl the RESULT.result.url )
    * POST Webhook
      * Use _Await Webhook Request_ to receive the input
        * Webhook ID: \{{ TASKS.core\_create\_webhook.result.result.webhook\_id \}}
        * curl -X POST -H 'Content-Type: application/json' -d '{"foo": \[4,8,15,16,23,42]}' $URL
        * We use this in scripts to get output from endpoints when we run commands via RMM

</details>
