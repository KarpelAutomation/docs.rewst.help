# Coming soon to Rewst

{% hint style="info" %}
New Rewst features are currently in Beta with a planned general release for later in 2026. This documentation is regularly evolving to meet the needs of the changing product. We'll publish complete documentation for how to use the entire product upon general release. If you're one of our Beta users and want to submit feedback, please reach out via your dedicated Discord channel.&#x20;

This page is intended to act as a quick-start guide that points out the differences between existing Rewst and our new features. It will not help you use the current release of Rewst. RoboRewsty will not pull its information into his search and knowledgebase.&#x20;
{% endhint %}

## The Rewst Agent

Whereas RoboRewsty referenced Rewst documentation to provide answers and follow directions, the Rewst Agent operates off of _playbooks_, structured procedures the agent must load before authoring workflows, forms, or apps. Each one enforces required reads, required contracts, ordered steps, and verification.&#x20;

Ask the Rewst Agent to build you anything that you could have built in Rewst before— only now, it will take the lead and do all the work for you. For anything the Rewst Agent builds, it will research, show a proposal with the exact nodes and field mappings, then ask once for approval. Nothing gets created, published, or run until you approve. If its proposal is off, just tell it what to change, and it will make adjustments and ask for approval again. Instead of having you manually build your automations to save time, new Rewst operates largely on you asking the Rewst Agent to build for you, for an even greater time savings.&#x20;

<figure><img src="../.gitbook/assets/Screenshot 2026-06-01 at 5.00.09 PM.png" alt=""><figcaption></figcaption></figure>

## App Builder

Like our previous App Builder, you can create sites in the new App Builder to suit your unique needs. But now, no coding knowledge is required to create and edit apps. Simply ask the Rewst Agent to make an app for you and let it create and refine the final product. For existing App Builder users, note that the new Builder has expanded components, offers full HTML editing capabilities without requiring you to add containers, and allows for greater thematic customization than its predecessor.&#x20;

<figure><img src="../.gitbook/assets/Screenshot 2026-06-01 at 4.44.43 PM.png" alt=""><figcaption><p>The apps list page</p></figcaption></figure>

<figure><img src="../.gitbook/assets/Screenshot 2026-06-01 at 4.45.48 PM.png" alt=""><figcaption><p>An app being worked on in the App Builder</p></figcaption></figure>



## Form Builder

Our new Form Builder has more than 40 components, a 4x increase in options from our original forms. In addition to two default themes of light mode and dark mode, MSPs can create unlimited custom themes. The Form Builder comes with multi-page support built in, including named pages and next/previous navigation at the form's runtime.&#x20;

Drag and drop components directly onto the Form Builder canvas for visually responsive form designing, no Jinja required. Or, ask the Rewst Agent to create a form for you, and watch as it picks the best components to achieve your desired goals.

<figure><img src="../.gitbook/assets/Screenshot 2026-06-01 at 4.40.13 PM.png" alt=""><figcaption><p>The forms list page</p></figcaption></figure>



<figure><img src="../.gitbook/assets/Screenshot 2026-06-01 at 4.40.48 PM.png" alt=""><figcaption><p>A form being worked on in the Form Builder</p></figcaption></figure>

Forms are now subject to _workflow binding_, where a form is 'bound' to a single workflow, from inside the form. Trigger setup for forms has also been relocated to within the Form Builder— no more back-and-forth navigating between two tabs to set up your form triggers.&#x20;

### Options Builder

Our new Options Builder replaces the original Options Generator and Options Filter features you're used to in Rewst and makes setting up forms to have options much easier. It supports hundreds of thousands of options&#x20;

There are two ways to populate options:

* **Static** - for example, option A, option B, option C
* **Workflow-backed** - choose a workflow that generates options and Rewst auto-maps label and ID using a heuristic, with manual override available
  * Workflow-backed components are disabled on public forms to prevent accidental exposure of internal data&#x20;

Filtering rules are built in to the Options Builder. Filter values populate from real data in the system, so MSPs select from actual identifiers instead of typing Jinja and risking typos.

### Access control

Forms have four options for access, which can be set in the Form Builder.&#x20;

* **All suborganizations**, default: MSP owner and all suborganizations can authenticate at the runtime URL
* **Owner only**: MSP only
* **Selected suborganizations:** explicit allow-list
* **Public forms:** no login required

You can also create form-level exceptions per customer, without cloning the form. Add components that only exist for one organization, or hide specific components for select organizations.

## Workflow Builder

The Rewst Agent can build your workflows and any associated forms or scripts for you, all stemming from your query. Alternatively, you can build and edit workflows manually in our new Workflow Builder, just like you always have in Rewst.

<figure><img src="../.gitbook/assets/Screenshot 2026-06-09 at 3.24.30 PM.png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/Left side menu.gif" alt=""><figcaption></figcaption></figure>

The left side menu of the Workflow Builder now contains _nodes_, the individual elements you can drag and drop onto the Workflow Builder Canvas. Nodes for particular integrations that you have already set up in Rewst will appear here, along with triggers, and any AI presence that Rewst has access to. &#x20;

## Integrations

Our new Integration Builder simplifies the existing Rewst integration process into one streamlined menu. Choose from verified Rewst integrations built by the Rewst team, or ask the Rewst Agent to add your own integrations for whatever apps you choose using that same process— no more Custom Integration setup like there has been in the existing Rewst platform.

<figure><img src="../.gitbook/assets/Screenshot 2026-06-16 at 11.23.25 AM.png" alt=""><figcaption></figcaption></figure>

Integrations are split into three components for easier reuse and sharing: authentication methods, credentials, and the integration itself.&#x20;

* Authentication methods are reusable across multiple integrations
* Credentials are reusable across integrations and are stored as a managed entity
* Custom authentication methods can be created

## Settings

The next generation of Rewst has a robust permissioning system and granular settings that allow you to use Rewst the way that best suits you and your MSP.

You'll still need to manually configure SSO setup and user invitations, but the Rewst Agent can guide you through what every setting means and how to adjust each to your particular situation.

### Agents

Build your own agents to work in the platform. Custom agents allow end users to interact with Rewst automations in whatever way they desire, from platforms outside of Rewst.&#x20;

### MCP server

The Rewst MCP server gives your AI coding tool direct, authenticated access to your Rewst tenant in the live platform. Create tokens for AI tools like Claude Code to access Rewst APIs. After creating a token, add the Rewst MCP server to your AI coding tool to:

* Build and edit automations from your editor
* Let the server can see what's actually connected in your tenant: integrations, workflows, forms, apps, real field names, etc.
* Debug runs without leaving your tool&#x20;

## Security

The Rewst Agent has been designed with modern security practices and approaches in mind. Updated security documentation and architectural details will be released shortly before general access for the platform. The new Rewst features are included in our currently running SOC 2 audit and GDPR compliance audit, with our updated, full reports available in Q4 of 2026.&#x20;

{% hint style="info" %}
Do you have questions or want to learn more about the new changes coming to Rewst? Reach out to sales@rewst.io for more information if you're not an existing Rewst customer, or csteam@rewst.io if you are a current Rewst customer.&#x20;
{% endhint %}
