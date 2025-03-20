# Kaseya VSA X integration setup

{% hint style="success" %}
**This Integration supports multiple instances**

[Check out the instructions to set up multiple instances here](../../../multi-instance-integration/multi-instance-integration-setup.md).
{% endhint %}

Here are the steps on how to setup the Kaseya VSA X API integration:

1. **Log in to the Kaseya VSA X Admin Console.** You will need to have administrator privileges to create API tokens.
2. **Navigate to the Server Admin section under Administration.** Click on the **Overview** tab in the dropdown then copy the name under the **Server Information** section on the upper right section.
3. Paste the copied value on step 2 to the `hostname` parameter field
4. **Navigate to the Configuration section under Administration.** Click on the **API Access** tab from the dropdown.
5. **Create a new token.** Click on the **Create Token** button.
6. **Name your token.** Enter a descriptive name for your token in the **Create token** dialog box. This will help you to identify the token later.
7. If you want to limit the ip address access for the API token you can specify the IP address of Rewst: {rewst\_outbound\_ip\_addr}
8. **Create the token.** Configure your token permissions to have access to your chosen organizations and API permissions in which you want to have access to in Rewst; then create the token.
9. **Copy the token id and token secret.** The token id and secret will be displayed. Copy the token id and secret. You will need these two to authenticate your API calls.

### Migrating from Kaseya VSA integration to Kaseya VSA X

1. Configure the new Kaseya VSA X integration from the instructions above
2. Update the `default_rmm` organization variable to be `kaseya_vsa_x`&#x20;

&#x20;       OR&#x20;

&#x20;       Re-run the config orgs form to choose Kaseya VSA X as their default RMM.

3. Create a script called `Run Powershell (Rewst)` with the inputs `post_url` and `script_url`:

<figure><img src="../../../../../.gitbook/assets/Screenshot 2024-09-09 at 2.44.05 PM.png" alt=""><figcaption></figcaption></figure>

and the contents:

```powershell
Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object System.Net.WebClient
$wc.Encoding = [System.Text.Encoding]::UTF8
$commands = ($wc.DownloadString("$script_url"))
iex $commands
```

Optionally, you can reduce API calls to Kaseya by setting an org var called `kaseya_vsa_10_scriptid` with the GUID value of the above script
