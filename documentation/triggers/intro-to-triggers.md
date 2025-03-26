# Triggers in Rewst

{% hint style="info" %}
_Triggers_ initiate [workflows](https://docs.rewst.help/documentation/workflows) in Rewst. Every workflow must have a trigger to define when and how it starts. Essentially, triggers put the automate in automation. Choosing the right trigger ensures that your workflows execute at the right time, with the right data, to drive efficiency and consistency in your operations.

A trigger is also used on any [form](https://docs.rewst.help/documentation/forms) input that requires a workflow. If a form uses the **Dynamic** button, then you must also create a trigger on the workflow associated with that form.
{% endhint %}

## Create a trigger

Add a trigger to a workflow by clicking the **Add Trigger** button in the workflow builder, which will open up a new dialog with a form. \
![](<../../.gitbook/assets/Screenshot 2025-02-21 at 11.13.39 AM.png>)

Note that you can have multiple triggers per workflow, for example a webhook and a trigger that runs when a ticket gets saved in the PSA.

<figure><img src="../../.gitbook/assets/add-trigger-form.png" alt=""><figcaption></figcaption></figure>

Update the relevant fields in the form as needed, to set up your trigger.\


<table data-full-width="false"><thead><tr><th width="267">Item</th><th>Description</th></tr></thead><tbody><tr><td><strong>Name</strong></td><td>Whatever you would like to name your trigger, with a descriptive word or phrase for what it does.</td></tr><tr><td><strong>Enabled</strong></td><td>Toggle this on or off.</td></tr><tr><td><strong>Organizations</strong></td><td>Select all the organization that exist within Rewst that may need to use this workflow. If you add a new client, they will have to be added in that workflow trigger.</td></tr><tr><td><strong>Integration Override</strong></td><td>Integration overrides allow you to specify which integration configurations should be used. When a workflow is triggered by and running within the context of a child organization, by default they only have access to their own integrations and configurations. To give the workflow access to integrations and credentials owned by the parent organization, that default behavior must be explicitly overridden. In the above example image, the trigger allows your clients to use your PSA, RRM and licensing integration.</td></tr><tr><td><strong>Trigger Type</strong></td><td>There are a number of types to choose from, such as a webhook, form submission, ticket saved, M365 alerts. See <a data-mention href="intro-to-triggers.md#core-triggers">#core-triggers</a> for more information on common trigger types.</td></tr><tr><td><strong>Form</strong></td><td>If your trigger type is a form submission, you would select the form that links to the workflow.</td></tr></tbody></table>

## Modify an existing trigger

To modify an existing trigger, click **Edit Trigger**. If there are multiple triggers for the workflow, select the appropriate trigger from the dropdown menu.\
![](<../../.gitbook/assets/Screenshot 2025-02-21 at 11.20.06 AM.png>)

### How to use a trigger on a form

Once the trigger has been created on a workflow, it can then be used on a form. This must be an options generator workflow, [whose requirements can be found here](../workflows/different-types-of-workflows.md).

<figure><img src="../../.gitbook/assets/form-trigger.png" alt=""><figcaption></figcaption></figure>

The above is a snippet from a form where a dropdown field has been selected and the output will be based on the workflow output. When running the form, if the client is added on the trigger and the trigger is set on the form, the workflow will run, and the options will fill into the form field.

## Common triggers

There are five key triggers to understand when getting started with Rewst. These triggers cover a range of automation scenarios, from scheduled executions to real-time event responses. In Rewst, we denote these from other triggers by calling them _core triggers_. Type `core` into the **Trigger Type** field to isolate most of these trigger types from the total list.

<figure><img src="../../.gitbook/assets/Screenshot 2025-02-21 at 11.44.46 AM (1).png" alt=""><figcaption></figcaption></figure>

### Core - Cron Job

The _cron job trigger_ initiates a workflow on a predefined schedule. This allows you to automate recurring tasks without manual intervention.

Schedules are configured using cron syntax. Consult [crontab guru](https://crontab.guru/) for help configuring this syntax.

For example, you can configure a workflow to run every Monday at 3:00 PM to generate weekly reports or clean up outdated records.

This trigger is most useful for:

* Scheduled maintenance workflows (e.g., clearing stale data, running audits)
* Recurring notifications (e.g., sending reminders, generating reports)
* Automated check-ins (e.g., verifying system statuses, updating dashboards)

### Core - Form Submission

A workflow can be triggered when a user submits a form. Forms collect structured information, ensuring the workflow has the necessary data to proceed.

For example, you can submit an employee onboarding form to trigger a workflow that creates user accounts, assigns permissions, and sends welcome emails.

This trigger is most useful for:

* Request-based workflows (e.g., access requests, service requests)
* Intake processes (e.g., user registrations, issue reporting)
* Approval workflows (e.g., leave requests, expense approvals)

{% hint style="info" %}
For help building a form, refer to [form-best-practices.md](../forms/form-best-practices.md "mention").
{% endhint %}

### Core - Webhook

A _webhook_ _trigger_ starts a workflow when external data is received in real time. Webhooks eliminate the need for manual checks, making them efficient for event-driven automation.

The webhook URL serves as a _listening endpoint_. When an external system (e.g., a CRM, ticketing system, or another Rewst workflow) sends data to the webhook URL, the workflow is triggered immediately. This enables seamless integration between Rewst and external applications without requiring a direct API connection.

For example, a webhook could trigger a workflow whenever a new customer signs up in a CRM, automatically assigning them an account manager and setting up follow-up tasks.

This trigger is most useful for:

* Event-driven automation (e.g., responding to new leads, updating records on status changes)
* Real-time notifications (e.g., escalating high-priority tickets, alerting teams to critical updates)
* External system integrations (e.g., syncing data between platforms, processing incoming requests)

{% hint style="info" %}
For more information on webhook triggers, refer to [using-webhook-triggers.md](use-cases-and-examples/using-webhook-triggers.md "mention").
{% endhint %}

### Core - Always Pass

The _always pass trigger_ allows a workflow to start without conditions. It is commonly used in workflows that do not depend on external events or schedules.

For example, you might use this trigger when testing workflows, executing a workflow from another workflow without needing a specific event, or populating dynamic options in a Rewst form.

This trigger is most useful for:

* Manual workflow execution (e.g., running a workflow on demand)
* Subworkflows or completion handlers (e.g., workflows triggered by other workflows)
* Testing automation (e.g., verifying workflow functionality)
* Option generators (e.g., dynamically populating form fields in Rewst)

{% hint style="info" %}
For more information on option generators, refer to [how-to-create-configure-and-trigger-an-option-generator-workflow.md](../../cluck-university/rewst-foundations/creating-an-option-generator-workflow/how-to-create-configure-and-trigger-an-option-generator-workflow.md "mention").
{% endhint %}

### PSA: Ticket record saved

{% hint style="info" %}
Note that this is the only common trigger type that does not start with Core, as the trigger name will be specific to your brand of PSA. Search for that in the trigger type list instead.
{% endhint %}

This trigger is similar to the webhook trigger but is specific to PSA systems. When a ticket record is saved in an integrated PSA, the workflow starts automatically. This includes both newly created tickets and updates to existing tickets.

For example, if a ticket is updated to **Escalated**, a workflow can trigger an alert to the appropriate team or assign a senior technician.

This trigger is most useful for:

* Automating ticket management (e.g., escalating high-priority tickets, auto-assigning technicians)
* SLA enforcement (e.g., sending reminders for unresolved tickets, auto-responding to specific cases)
* Status-based automation (e.g., triggering follow-up workflows when a ticket is created or reaches a certain stage)

{% hint style="info" %}
For more detailed information on PSA triggers, refer to [customizing-psa-ticket-triggers.md](use-cases-and-examples/customizing-psa-ticket-triggers.md "mention").
{% endhint %}

## Other triggers

While these five triggers cover the most common use cases, Rewst offers additional triggers tailored to different automation needs. Explore the available triggers in the trigger type list to find the best fit for your specific processes, and learn more about them in our additional trigger type documentation [here](https://app.gitbook.com/o/mdGoyUomPKsvu1TSazxc/s/s8z0MoTR6SpBJcxlRNNY/).

## Trigger criteria

When you're comfortable with the basics of triggers, learn more about [trigger criteria here](https://app.gitbook.com/o/mdGoyUomPKsvu1TSazxc/s/AQQ1EHVcEsGKBPVHmiav/~/changes/1274/documentation/intro-to-triggers/trigger-criteria).
