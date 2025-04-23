# PowerShell interpreter

{% hint style="warning" %}
To use the PowerShell interpreter, you’ll first need to set up our[ Microsoft Cloud Bundle](../integrations/individual-integration-documentation/cloud/microsoft-cloud-integration-bundle/), which contains the Azure integration.

PowerShell support is currently in beta, with general availability expected soon. We're gathering customer feedback to improve performance and expand context support. Scroll to the end of this page to view our current known issue list.
{% endhint %}

## Use PowerShell in Rewst

Rewst now supports PowerShell as a scripting option, giving you a familiar and flexible alternative to Jinja. PowerShell code can run in workflows, transitions, and data aliases by using secure Azure-hosted Function Apps deployed via Rewst. This means:

* You write PowerShell in the same places you’d use Jinja, like the Live Editor or within a workflow.
* You start a block with the `#ps` header to tell Rewst to run that code using the PowerShell interpreter.

{% hint style="info" %}
Note that all Crates in Rewst use Jinja only. To modify a Crate, you must use Jinja.

Rewst’s App Builder does not currently support the use of PowerShell.

PowerShell and Jinja can’t be mixed in the same code block.
{% endhint %}

### What is PowerShell?

_PowerShell_ is a command-line shell and scripting language used for automating tasks across Windows and other systems. Think of it as a way to write scripts that manage files, configure systems, and interact with services. It’s especially useful for MSPs who manage Microsoft-heavy organizations. If you’re new to Powershell, see [Microsoft’s documentation here](https://learn.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.5).

### How is PowerShell incorporated into Rewst?

When you use a `#ps` block:

* Your code is sent to a dedicated Azure Function App tied to your Rewst org.
* The app runs the script in an isolated PowerShell environment.
* The result is returned to Rewst and used just like Jinja output would be.

{% hint style="warning" %}
Only CTX and RESULT objects are available as context inside PowerShell blocks.
{% endhint %}

In Rewst’s version of PowerShell, the return behavior is streamlined: whatever the last evaluated expression is, be it a string, variable or object, that’s what gets returned as the raw response. Unlike traditional PowerShell, where Write-Output may return multiple values throughout the script’s execution, the interpreter doesn’t collect all of those outputs. It only captures the final evaluated value. If you want to return multiple items, wrap them in an array or object and ensure that’s the last line in your script. For example:

```
$first = @{ Name = "Alpha"; ID = 1 }
$second = @{ Name = "Beta"; ID = 2 }
$results = @($first, $second)
$results  # <- This will be the returned value in Rewst
```

## Why use PowerShell in Rewst?

If you already know your way around PowerShell, there’s a good chance that you’ve used it to script against systems like Active Directory, Exchange, Intune, or local machine configurations. Rewst now lets you tap into those skills directly, without needing to learn Jinja first.

<details>

<summary>Example: Onboard a new user across Microsoft tools</summary>

You’re an MSP admin, and a new hire just joined a client’s company. You need to:

* Create an account in Microsoft Entra ID
* Assign them to the correct security groups
* Add a license in Microsoft 365
* Apply a specific configuration profile in Intune
* Notify the manager via Teams

With PowerShell in Rewst, you could:

* Use `#ps` in a workflow task to create the user and assign licenses using `New-MgUser` and `Set-MgUserLicense`
* Add a transition that checks if the PowerShell command returned successfully before continuing
* Trigger a Teams message, or use Jinja if needed, to confirm that setup is complete

Since you're using Rewst workflows, you could plug this right into an intake form or ticket trigger to automate everything end-to-end.

</details>

<details>

<summary>Example: Automate recurring maintenance tasks</summary>

Let’s say every Friday, you:

* Run disk cleanup scripts on on-prem servers
* Export reports from Microsoft Exchange mailboxes
* Update device compliance status in Intune
* Rotate passwords in a privileged access system like CyberArk or Keeper

Using scheduled workflows and `#ps` blocks, you could:

* Authenticate securely to each environment using credentials stored in Rewst
* Run your PowerShell logic as you would on a jump box, but now in the cloud
* Push results to Slack, a ticket, or even update the status in a custom dashboard

</details>

<details>

<summary>Example: Bridge Microsoft and non-Microsoft systems</summary>

You might already be using PowerShell to work with:

* VMware or Hyper-V
* SQL Server management
* Custom REST APIs for backup software like Veeam or Datto

With the PowerShell interpreter in Rewst, you can:

* Use `#ps` to query and transform data
* Pass that result to a Jinja block for parsing or formatting
* Chain it into third-party tools to complete tasks such as updating asset data in IT Glue, pushing events to SentinelOne, or enriching a ticket in ConnectWise PSA

Even if Rewst doesn’t have a built-in connector for something, PowerShell gives you the ability to script your way through it, just like you would in a local environment.

</details>

## Cost considerations

Microsoft’s free tier allows for 1 million function executions, plus 400,000 GB-seconds of compute each month. Beyond those free limits, additional executions are billed according to Azure’s pay-as-you-go rates. Typically, these are fractions of a cent per million executions, plus memory usage.

* For many Rewst customers who only run occasional PowerShell workflows, the monthly cost is minimal or effectively $0 since this number of executions will fall within the free tier.
* Higher-traffic organizations can pay Microsoft anywhere from a few dollars to tens of dollars a month for function usage, depending on volume and script complexity.

## Resource naming conventions

When creating an Azure Function App, the app name must be globally unique across all Azure tenants. This name is used not only for the Function App itself, but also for the associated App Service, storage account, and the app’s root URL.

To ensure uniqueness and avoid naming collisions, we use "rewstinterpreters" as the base name and append a UUID.

## Setup: deploy PowerShell interpreters

To start using PowerShell, you’ll need to deploy an Azure Function App interpreter through Rewst. We use a ZIP deployment process for the Function App code.

Make sure that you have successfully set up the Microsoft Cloud integration bundle before attempting these steps.

1.  Navigate to **Tools > Interpreters** in the left side menu of your Rewst platform.\


    <figure><img src="../../.gitbook/assets/Screenshot 2025-04-08 at 3.16.26 PM.png" alt=""><figcaption></figcaption></figure>
2. Click **PowerShell (Beta)** to expand the accordion menu. The two drop-down fields within the menu will populate with options pulled from your Azure instance, to line up with your subscriptions.
3. Click down carrot in the **Subscription** drop-down selector and choose your relevant subscription.
4. Click down carrot in the **Resource Group** drop-down selector and choose your relevant resource group.
5. Click **Deploy**.
   1. This process may take a few moments. An in-progress message will display while you wait. You can leave the page if desired, without interrupting the deployment.
   2. Once finished, a deployed message will appear at the bottom of the accordion menu, along with a **Remove interpreter** button. If deployment fails, a red error message will appear in a dialog on your screen.

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-08 at 4.34.52 PM.png" alt=""><figcaption><p>The during-deployment message</p></figcaption></figure>

<figure><img src="../../.gitbook/assets/Screenshot 2025-04-08 at 3.58.41 PM.png" alt=""><figcaption><p>Successful deployment messaging</p></figcaption></figure>

### What gets created

Rewst creates the following in your Azure environment during deployment of the interpreter:

* A PowerShell 7.4-based Function App
* A shared consumption App Service Plan
* Application insights for logging
* A Storage Account for keys and triggers

### Use a parent organization’s Azure

If you don’t have Azure set up for your organization, you can **override** the Azure integration with a parent organization's configuration. This lets sub-orgs run PowerShell without duplicating infrastructure.

## How to use PowerShell in Rewst

### In the Live Editor

The **Live Editor** supports real-time PowerShell testing.

1. Navigate to **Tools > Live Editor**.
2. Click **Jinja2** to switch the Live Editor over to PowerShell.
3. Use `#ps` to start a PowerShell block:

```powershell
   powershell
   CopyEdit
   #ps
   "Hello from PowerShell"
```

{% hint style="warning" %}
Remember, don’t mix PowerShell and Jinja in the same block. You can use both in the same workflow, just not together in one snippet.
{% endhint %}

### In workflow components

powershell \
CopyEdit \
\#ps \
"Hello from PowerShell"

PowerShell works in:

* **Tasks** – e.g., for generating dynamic output
* **Transitions** – e.g., to determine conditional logic
* **Data Aliases** – e.g., when transforming or mapping data

Use `#ps` exactly as you would `#jinja`:

```powershell
powershell
CopyEdit
#ps
if ($CTX.User.Name -eq "Alice") {
  return "VIP"
} else {
  return "Standard"
}
```

#### The `#psl` header

The interpreter also allows for a `#psl` header for line-by-line PowerShell. Currently its use is limited and not the focus of our first version of the PowerShell interpreter. Use `#ps` unless you're testing something specific.

#### Additional use considerations

* Azure Function execution timeout for PowerShell is similar to that of Jinja. Expect 30-60 seconds for actions, and 10 seconds for parameters.
* All output from PowerShell is processed as JSON. For best results, use `ConvertTo-JSON` when returning data.

## PowerShell interpreter known issues list

* JSON Parsing Error:\
  Blocks accessing \`$CTX.user\` due to an empty property name error during serialization.
* Subworkflow Hangs:\
  PowerShell code hangs silently in subworkflows when the parent uses Integration Override, breaking complex structures.
* Azure Region Quotas:\
  Users hitting deployment failures in popular regions (like East US) because subscription quotas are \`0\`. Requires manually selecting other regions.
* Process Timeouts: \
  PowerShell scripts time out near completion, causing failed workflow renders. Needs longer timeout limits.
* Auth/Refresh Errors:\
  Users get \`401\` errors (or Python \`\_'str' object has no attribute 'get'\_\` errors) when authorizing or refreshing resource groups, blocking setup.
* Module Persistence:\
  Modules installed during a run don't persist, forcing users to reinstall them in scripts every time.
* UI Syntax Highlighting:\
  Requires double backslashes (\`\\\\\`) in the UI editor while actual PS code needs single (\`\\\`), causing confusion.
* Serialization Failures:\
  Returning non-JSON serializable objects (e.g., from \`New-Item\`) causes errors even if the command worked. Requires explicit \`ConvertTo-Json\`.
* Common PS Pitfalls:\
  Users misusing \`Write-Host\` (doesn't return output), not using \`finally\` blocks for output, or using incorrect \`ConvertTo-Json\` pipe syntax.
* Live Editor Friction:\
  Users can enter the Live Editor for PowerShell before the required Azure setup is complete, leading to confusion.

## Send us your feedback on PowerShell in Rewst

Have questions or feedback? Reach out to Support or post in your dedicated Discord support channel. Suggest improvements or new features in our [Canny](https://rewst.canny.io/features) feedback collector.
