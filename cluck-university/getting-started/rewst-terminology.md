# Rewst terminology

## **Introduction**

As you start your journey with Rewst, you'll come across a range of terms and concepts unique to our platform. This guide is designed as a quick reference you can refer back to during your Cluck University training. Click through the table of contents below, or scroll and search for specific terms.



### **Table of contents**

1. [#get-set-up-in-rewst](rewst-terminology.md#get-set-up-in-rewst "mention")
2. [#build-automation](rewst-terminology.md#build-automation "mention")
3. [#prebuilt-automation](rewst-terminology.md#prebuilt-automation "mention")

***

## Get set up in Rewst

***

### Integrations

An **integration** is a link between Rewst and other applications. It allows Rewst to interact with these applications to send and receive information and tasks. You'll need to supply various details such as an API key and URL for the application to set up the integration.

For more information, see: [integrations](../../documentation/integrations/ "mention")

***

### Organizations

An **organization** refers to a group or entity within the Rewst platform that can have its own variables, forms, workflows, and users. It can be managed by an admin who has access to various functionalities and can customize the platform according to the organization's needs.

To create an organization in Rewst, check out: [adding-a-new-client-to-rewst.md](../../documentation/user-management/adding-a-new-client-to-rewst.md "mention")

***

### Organization variables

**Organization variables** are used to apply values at the organization and sub-org layers. They are referenced in workflows using the syntax `{{ ORG.VARIABLES.<variable_name> }}`. Organization variables can be inherited by suborganizations unless a suborganization has the same variable defined, in which case it will override the value.

For more information, see: [organization-variables.md](../../documentation/user-management/organization-variables.md "mention")

***

## Build automation

***

### Trigger

**Triggers** are components in Rewst that are used to initiate workflows or perform actions based on specific events or conditions. They can be used to respond to form submissions, webhook events, ticket updates, or other types of triggers. Triggers are configured within workflows and can be customized with various settings, such as integration overrides and trigger types.

For more information, see: [intro-to-triggers.md](../../documentation/triggers/intro-to-triggers.md "mention")

***

### Workflows

**Workflows**, made up of actions and triggers, are the bread and butter of automated business processes. They offer a robust action library, customizable tasks, mocking and timeouts for testing, data security options, and ROI measurement. They're the key to unlocking automation in Rewst.

For more information, see: [workflows](../../documentation/workflows/ "mention")

***

### Actions

**Actions** are what live inside of a workflow. Each integration has a number of actions within it. You grab these actions from the left menu on a workflow, and drag them onto the workflow UI to build your desired workflow. When you run a workflow, Rewst is completing a series of actions.

For more information, see: [actions-in-rewst](../../documentation/workflows/actions-in-rewst/ "mention")

***

### Transitions

**Transitions** are found at the bottom of every action. These determine the path the workflow will take. For example: if **Success**, then you'll have an arrow coming from that transition to the next action. You also have transitions for **Failure**, **Always**, and **Custom Conditions**.

For more information, see: [data-aliases.md](../../documentation/workflows/data-aliases.md "mention")

***

### Forms

**Forms** are one of the main ways to get data into a Rewst workflow. You can use a selection of fields to retrieve information from a user. That information is then passed into the workflow on submission.

Both dynamic and conditional fields can be used in forms. For example, if you list groups live from your M365 tenant and set it to a certain group, you can show other fields as a result.

For more information, see: [forms](../../documentation/forms/ "mention")

***

### Scripts

**Scripts** are series of instructions written in a computer language that can be executed to automate tasks. The scripting languages available in Rewst (Powershell, Python, YAML, and Jinja) enable us to write scripts in a straightforward and accessible manner compared to traditional programming languages. Scripting tasks can range from batch processes on a local computer to generating dynamic web pages on a web server. Scripts can be written, edited, and executed more quickly and easily than software programs.

For more information, see: [how-to-use-powershell-in-rewst.md](../micro-courses/how-to-use-powershell-in-rewst.md "mention")

***

### Templates

**Templates** can be used as a way to store frequently repeated text. For example, if you always want to create a ticket with the same information, you could put that info in a template and reference the template within the action itself.

For more information, see: [templates-and-scripts.md](../../documentation/templates-and-scripts.md "mention")

***

### Jinja

**Jinja** is a templating language used in the Rewst platform. Based on Python, it allows for more powerful processing of data in workflows. Jinja expressions are encapsulated by double curly braces (`{{ and }}`) and can be used to output the value of variables or expressions. Rewst extends the functionality of Jinja with filters, and provides an ever-growing list of filters specific to the platform.

for more information, see: [intro-to-jinja.md](../../documentation/jinja/intro-to-jinja.md "mention")

***

### Context variables

Context variables are variables specific to the running workflow. They're referenced in a workflow with `CTX.variable_name`.

***

## Prebuilt automation

***

### Crates

**Crates** contain prebuilt workflows, forms, triggers, templates, and scripts that are packaged together for easy deployment. They allow you to quickly set up automation without having to create workflows from scratch. Crates are the best way to start seeing results as a new Rewst user. Once you've gotten comfortable with our prebuilt Crates and how to use them in Rewst, you can customize Crates to suit your needs.

For more information, see: [crates](../../prebuilt-automations/crates/ "mention")

***

### Crate Marketplace

The **Crate Marketplace** is the part of the Rewst app where you can find and install prebuilt workflow bundles called Crates. Crates can be found and installed through the Crate Marketplace, which is accessible from the Crates section of the left-hand menu in the app.

For more information, see: [production-crate-list.md](../../prebuilt-automations/crates/production-crate-list.md "mention")

***
