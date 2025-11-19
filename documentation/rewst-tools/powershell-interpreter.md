# PowerShell interpreter

{% hint style="warning" %}
To use the PowerShell interpreter, you’ll first need to set up our[ Microsoft Cloud Bundle](../configuration/integrations/integration-guides/microsoft-cloud-integration-bundle/), which contains the Azure integration.
{% endhint %}

## Use PowerShell in Rewst

Rewst now supports PowerShell as a scripting option, giving you a familiar and flexible alternative to Jinja. PowerShell code can run in workflows, transitions, and data aliases by using secure Azure-hosted Function Apps deployed via Rewst. This means:

* You write PowerShell in the same places you’d use Jinja, like the Live Editor or within a workflow.
* You start a block with the `#ps` header to tell Rewst to run that code using the PowerShell interpreter.

{% hint style="info" %}
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

```powershell
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

## Setup: deploy PowerShell Interpreters

To start using PowerShell, you’ll need to deploy an Azure Function App interpreter through Rewst. We use a ZIP deployment process for the Function App code.

Make sure that you have successfully set up the Microsoft Cloud integration bundle before attempting these steps.

{% hint style="info" %}
To deploy the PowerShell Interpreter, you'll need these roles for your service account.
{% endhint %}

| Scope          | Resource type                     | Purpose                                          | Minimum role required  |
| -------------- | --------------------------------- | ------------------------------------------------ | ---------------------- |
| Subscription   | Subscription                      | View or select subscription in deployment        | Reader                 |
| Resource group | Resource group                    | Create and manage resources - Function App, etc. | Contributor            |
| Key vault      | Microsoft.KeyVault/vaults/secrets | Access to the key vault if one is being used     | Key Vault Secrets User |



1.  Navigate to **Tools > Interpreters** in the left side menu of your Rewst platform.\


    <figure><img src="../../.gitbook/assets/Screenshot 2025-04-08 at 3.16.26 PM.png" alt=""><figcaption></figcaption></figure>
2. Click **PowerShell** to expand the accordion menu. The two drop-down fields within the menu will populate with options pulled from your Azure instance, to line up with your subscriptions.
3. Click **⌄** in the **Subscription** drop-down selector and choose your relevant subscription.
4. Click **⌄** in the **Resource Group** drop-down selector and choose your relevant resource group.
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

If you don’t have Azure set up for your organization, you can **override** the Azure integration with a parent organization's configuration. Do this by adding the Azure [integration override](https://docs.rewst.help/documentation/automations/workflows/advanced-workflow-operations-menu#integration-overrides) to the trigger. This lets sub-orgs run PowerShell without duplicating infrastructure.

## How to use PowerShell in Rewst

### In the Live Editor

The **Live Editor** supports real-time PowerShell testing.

1. Navigate to **Tools > Live Editor**.
2. Click **Jinja2** to switch the Live Editor over to PowerShell.
3. Use `#ps` to start a PowerShell block:

```powershell
#ps 
"Hello from PowerShell"
```

{% hint style="warning" %}
Remember, don’t mix PowerShell and Jinja in the same block. You can use both in the same workflow, just not together in one snippet.
{% endhint %}

### In workflow components

PowerShell works in:

* **Tasks** – e.g., for generating dynamic output
* **Transitions** – e.g., to determine conditional logic
* **Data Aliases** – e.g., when transforming or mapping data

Use PowerShell  exactly as you would Jinja:

<pre class="language-powershell"><code class="lang-powershell"><strong>#ps
</strong>if ($CTX.User.Name -eq "Alice") {
  return "VIP"
} else {
  return "Standard"
}
</code></pre>

#### The `#psl` header

The interpreter also allows for a `#psl` header for line-by-line PowerShell. Currently its use is limited and not the focus of our first version of the PowerShell interpreter. Use `#ps` unless you're testing something specific.

#### Additional use considerations

* Azure Function execution timeout for PowerShell is similar to that of Jinja. Expect 30-60 seconds for actions, and 10 seconds for parameters.
* All output from PowerShell is processed as JSON. For best results, use `ConvertTo-JSON` when returning data.

## PowerShell Interpreter limitations and workarounds



<details>

<summary>Module persistence</summary>

You shouldn't install modules at runtime. Instead, you can install them in the Azure deployment during setup. This will prevent the need to reinstall in scripts every time. However, if Rewst updates PowerShell's implementation, you'll need to reapply your customizations. If this occurs, Rewst will prompt you in-app to make this update.&#x20;

If you modify your Azure deployment, Rewst's support team will not be able to provide support for your PowerShell Interpreter use, due to the modifications. For instructions, see [#modify-azure-package-instructions](powershell-interpreter.md#modify-azure-package-instructions "mention").

</details>

<details>

<summary>UI syntax highlighting errors</summary>

The Live Editor in Rewst sometimes throws errors in syntax writing for PowerShell. Each time you would normally enter a single `\` in your scripting, enter two  `\\`  instead.

</details>

<details>

<summary>Serialization failures</summary>

Returning non-JSON serializable objects (e.g., from `New-Item`) causes errors even if the command worked.  Any time we return an object from PowerShell, we need to convert the object to JSON. The error message for this is as follows:\
`{`\
&#x20; `"transition_errors": [`\
&#x20;   `"Powershell Expression failed to evaluate with error: \"Object of type '`[`System.IO`](http://system.io/)`.FileInfo' is not JSON Schema compatible\""`\
&#x20; `]`\
`}`\
\
If you see this error, you're trying to pass an object back from PowerShell, and will need to convert it to JSON first. Add `ConvertTo-Json` to resolve this.&#x20;

<figure><img src="../../.gitbook/assets/image (92).png" alt=""><figcaption></figcaption></figure>

</details>

<details>

<summary>Common PowerShell output blocks</summary>

Rewst's version of PowerShell does not allow the use of `Write-Host`. Instead, use `Write-Output`.

</details>

<details>

<summary>Access to organizational variables</summary>

We have limited data context available in PowerShell compared to Jinja: `$CTX`, `$RESULT` only\
In a [data alias](../automations/workflows/data-aliases.md#what-are-data-aliases), reference the org variable you want access to, to include it in the context before you run PowerShell. This does require knowing basic Jinja to achieve.&#x20;

</details>

<details>

<summary>Missing loop results</summary>

\
You can't `Write-Output` with Rewst's PowerShell interpreter. With Rewst's implementation of PowerShell, you'll only get the very last item. Any workflow leveraging PowerShell `foreach` loops that depend on multi-line output for downstream logic will be affected.

To work around this, record everything into a variable, and provide that variable at the end instead. Or, `Write-Output` that string at the end.

<figure><img src="../../.gitbook/assets/image (93).png" alt=""><figcaption></figcaption></figure>

</details>



## Modify the Azure package for Rewst's PowerShell Interpreter

{% hint style="danger" %}
If you modify your Azure deployment, Rewst's support team will not be able to provide support for your PowerShell Interpreter use, due to the modifications.
{% endhint %}

Confirm that you have deployed the PowerShell Interpreter before attempting the below steps. Successful deployments will see the **Your interpreter is deployed at:** message in the PowerShell Interpreter section of their Rewst platform.

<figure><img src="../../.gitbook/assets/image (57) (3).png" alt=""><figcaption></figcaption></figure>

<details>

<summary>Modify Azure package instructions</summary>

### Initial setup

1. Navigate to your Azure Resource Group.
2.  Locate and open the **Function App**.\
    \


    <figure><img src="../../.gitbook/assets/image (58) (3).png" alt=""><figcaption></figcaption></figure>
3.  Click to **Overview** > **RewstWebHook**.\


    <figure><img src="../../.gitbook/assets/image (62) (5).png" alt=""><figcaption></figcaption></figure>
4.  Copy all the code and save it to notepad. Note the url where the run.ps1 file is. It should be in `function_app/RewstWebhook/run.ps1`.\


    <figure><img src="../../.gitbook/assets/image (63) (3).png" alt=""><figcaption></figcaption></figure>
5. Note the URL for the script: `rewst-powershell-{GUID}/RewstWebhook/run.ps1`
6. Click **X** to close the RewstWebHook function and return to the Function App.

### Update environment variables

1. Navigate to **Settings > Environment Variables**.
2. Click **Advanced Edit**.
3. Change the value of `WEBSITE_RUN_FROM_PACKAGE` from `1` to `0`:\


```javascript

{
    "name": "WEBSITE_RUN_FROM_PACKAGE",
    "value": "0",
    "slotSetting": false
  },
```

### Modify Profile.ps1

1. Navigate to **App Files**.
2. Select `profile.ps1`.
3. Comment out the two specified lines as shown below:

```
Disable-AzContextAutosave -Scope Process | Out-Null
Connect-AzAccount -Identity
```

<figure><img src="../../.gitbook/assets/image (64) (2).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../../.gitbook/assets/image (65) (3).png" alt=""><figcaption></figcaption></figure>

### Recreate the RewstWebHook function

1. Create a new function named `RewstWebHook`.
   * **Authorization level:** Function
   * **Trigger type:** HTTP Trigger

```javascript
{
  "RewstWebHook": [
    {
      "authLevel": "function",
      "type": "httpTrigger",
      "direction": "in",
      "name": "Request",
		}
  ]
}
```

2. Open your new **RewstWebHook**.

3) Paste the previously saved code back into `run.ps1`.

### Install PowerShell modules - persistent method

The most reliable method is to manually upload modules directly into the Function App’s file system.

1. In the **Azure Portal**, open your **Function App resource** (look for `rewst-powershell` in your Resource Group).
2. Navigate to **Development Tools → Advanced Tools (Kudu)** → click **Go →**.
3. In Kudu, open **Debug Console → PowerShell**.
4. Run:

```powershell
cd site/wwwroot
mkdir Modules   # if it doesn’t already exist
cd Modules
```

5. Drag & drop module folders (including .psd1/.psm1 files) into the Modules folder using the file explorer pane in Kudu.
6. Your modules should now be in `site/wwwroot/Modules/`. Import them in scripts using:

```powershell
Import-Module ModuleName
```

### A note on persistence

Running the following inside a script will install modules temporarily for that execution only.&#x20;

```powershell
Install-Module ModuleName -Scope CurrentUser
```

These installs don't persist across Function App restarts, especially on the Consumption plan.

Until support for persistent installs (`50982`) is implemented, manual upload is the recommended method.

</details>



## Troubleshoot the PowerShell Interpreter

### Subscription registration error

If you encounter an error of `The subscription is not registered to use namespace Microsoft.Storage`, you may need to add providers in Azure to complete setup.&#x20;

In Azure:

1. Navigate to **Home > Subscriptions.**&#x20;
2. Register each of the following resource providers:
   1. Microsoft.Web
   2. Microsoft.Insight
   3. Microsoft.Storage
   4. Microsoft.Quota
   5. Microsoft.OperationalInsights

<figure><img src="../../.gitbook/assets/image (59) (5).png" alt="Screenshot of the Microsoft Azure portal showing the &#x22;Resource providers&#x22; section for an MCP Subscription. The user has searched for &#x22;web,&#x22; and the results display the &#x22;Microsoft.Web&#x22; provider. Its status is &#x22;Registering,&#x22; and the &#x22;Registration Policy&#x22; is marked as &#x22;RegistrationRequired.&#x22; On the left, a navigation menu is visible with sections like Overview, Activity log, Access control (IAM), Tags, Security, and Resource providers highlighted."><figcaption><p>The screen in Azure where you will register Resource Providers</p></figcaption></figure>

### Azure region quotas

Users hitting deployment failures in popular regions (like East US) because subscription quotas are \`0\`. Requires manually selecting other regions.\
\--Error is : `SubscriptionIsOverQuotaForSku` \
Go to your azure instance. Create new resource group in a different region. Then, select that resource group during the setup process.\
MS documentation for how to create resource group: [https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal)&#x20;

{% hint style="info" %}
Do you have questions or feedback? Reach out to Support or post in your dedicated Discord support channel. Suggest improvements or new features in our [Canny](https://rewst.canny.io/features) feedback collector.
{% endhint %}
