# Deploy Agent Smith with Microsoft Intune

Rewst has two methods for deploying Agent Smith using Microsoft Intune:

1. Use Win32 Packaging
2. Deploy via Intune PowerShell Scripts

{% hint style="info" %}
Win32 is the preferred Microsoft way of deployment. This method provides more granular installation and health feedback, plus the ability to uninstall if the deployment is unsuccessful. However, this method is more complicated and time consuming.\
\
The use of Intune platform scripts is much simpler, but yields a much less robust result. You'll be shown a yes/no response for if the script runs, which may or may not install the app successfully. \
\
Choose the deployment method that fits your level of comfort and experience.
{% endhint %}

## Prerequisites for deployment

* Intune licensing
* Properly configured Agent Smith environment
* Agent Smith PowerShell configuration script, generated via Rewst form

{% hint style="info" %}
Click on each of the methods to expand and view its instructions.
{% endhint %}

<details>

<summary>Method 1: Deploy via Win32 packaging</summary>

### Generate Agent Smith script

Follow the instructions under the **Provision agents** section of the [Agent Smith Configuration Guide](https://docs.rewst.help/documentation/agent-smith/agent-smith-configuration-overview#set-up-agent-smith) to generate the dynamic PowerShell configuration script. Your generated script will look something like this:

```powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-ExecutionPolicy RemoteSigned
iwr ((irm {{ INSTALLER }}).assets|?{$_.name -eq \\\\"rewst_agent_config.win.exe\\\\"}|select -exp browser_download_url) -OutFile rewst_agent_config.win.exe
.\\\\\\\\rewst_agent_config.win.exe --config-url {{ ENGINE_URL }}/webhooks/custom/trigger/{{ trigger_id }}/{{ ORG.ATTRIBUTES.id }} --config-secret {{ CONFIG_SECRET }} --org-id {{ ORGID }}

```

<figure><img src="../../.gitbook/assets/image (59) (2).png" alt="" width="331"><figcaption></figcaption></figure>

### Package using IntuneWin package

1.  Create a PowerShell Install Script - install.ps1

    1. Create a clean folder structure for your application. Your folder should contain:
       1. Installer files: .ps1 in this case
       2. Optional PowerShell detection script

    Example folder structure:

```
AgentSmith
├── source
│   ├── install.ps1
├── scripts
│   └── DetectionScript.ps1
└── output

```

2. Create install.ps1 using the provided install script mentioned earlier.
3. Save the provided install script as `install.ps1`.

### **Create the IntuneWin package**

Use Microsoft Win32 Content Prep Tool (IntuneWinAppUtil.exe) to complete the following.

1. Download IntuneWinAppUtil from [GitHub](https://github.com/microsoft/Microsoft-Win32-Content-Prep-Tool/releases).
2. Open a command prompt, either CMD or PowerShell.
3.  Run the following command:

    * **c**: Source folder, which contains your installer files.
    * **s**: Powershell install script
    * **o**: Output directory for the .intunewin package.\


    ```
    IntuneWinAppUtil.exe -c "FOLDERLOCATION" -s "INSERTPOWERSHELLFILENAMEHERE" -o "OUTPUTFOLDER"
    ```

&#x20;       Example:

```
IntuneWinAppUtil.exe -c "C:\\AgentSmith\\source" -s "install.ps1" -o "C:\\AgentSmith\\output"
```

4.  Upon completion, your .intunewin package will be generated in the specified output folder.\


    <figure><img src="../../.gitbook/assets/image (60) (2).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../../.gitbook/assets/image (61) (2).png" alt=""><figcaption></figcaption></figure>

### **Use Microsoft Endpoint Manager to deploy**

1. Sign in to the [Microsoft Endpoint Manager Portal](https://endpoint.microsoft.com/).
2. Navigate to **Apps > Windows > + Add > Windows app (Win32)**.
3. Upload your .intunewin package (AgentSmithSetup.intunewin).
4. Fill out the Name, Description, and Publisher fields under the App information tab of the Add App menu.(The other fields are optional, you are welcome to fill them out if you’d like.)
5.  Under the **Program** tab, paste the following into the relevant fields:

    1.  **Install command -** replace install.ps1 with the name of the ps1 installer script you created earlier in the process:\


        ```
        powershell.exe -ExecutionPolicy Bypass -File install.ps1 
        ```
    2.  **Uninstall command:** \


        ```
        powershell.exe -ExecutionPolicy Bypass -Command "Get-Service -Name 'AgentSmithService' -ErrorAction SilentlyContinue | Stop-Service -Force -ErrorAction SilentlyContinue; sc.exe delete 'AgentSmithService'"
        ```

    <figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 01.41.47@2x.png" alt=""><figcaption></figcaption></figure>

    1. **Install behavior:** select **System**
6. Under the **Requirements** tab:
   1.  Specify the **Minimum operating system** - Windows 10, Windows 11, etc.\


       <figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 01.07.50@2x.png" alt=""><figcaption></figcaption></figure>
   2. Specify the **Operating system architecture** - 32-bit or 64-bit.\


<figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 01.07.24@2x.png" alt=""><figcaption></figcaption></figure>

7. Under the **Detection Rules** tab:
   1. Choose **Manually configure detection rules** from the drop-down selector.\
      ![](<../../.gitbook/assets/CleanShot 2025-04-14 at 15.11.53@2x.png>)
   2. Add a rule.\
      ![](<../../.gitbook/assets/CleanShot 2025-04-14 at 15.12.20@2x.png>)
   3. Set the **Rule type** to **File**.\
      ![](<../../.gitbook/assets/CleanShot 2025-04-14 at 15.12.47@2x.png>)
   4. Set the **Path** to C:\Program Files\RewstRemoteAgent\\
   5. Set **File or folder** to `rewst_remote_agent_REPLACEWITHORGID.win.exe` after replacing the placeholder ORGID.
   6. Set the **Detection method** to **File or folder exists**.&#x20;
   7. Alternatively you can use a detection script such as the one provided in the [Immybot install guide. ](deploying-agent-smith-with-immybot.md)\
      ![](<../../.gitbook/assets/CleanShot 2025-04-10 at 01.15.44.png>)
8. No alterations to the **Dependencies** or **Supersedence** tabs are needed. Under the **Assignments** tab:
   1. Assign the application to required groups, be they users or devices.\
      ![](<../../.gitbook/assets/CleanShot 2025-04-10 at 01.17.35@2x.png>)
   2.  Once your group is selected, the defaults here will work, but feel free to modify the settings to your comfort level.\


       <figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 01.18.20@2x.png" alt=""><figcaption></figcaption></figure>
9.  Under the **Review and Create** tab:

    1. Confirm your settings.
    2. Click **Create**.

    <figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 01.18.44@2x.png" alt=""><figcaption></figcaption></figure>



    <figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 01.20.10@2x.png" alt=""><figcaption></figcaption></figure>



### Additional considerations

* Deploy initially to a test group to verify the agent installs and detects correctly before wider distribution.
* Intune checkin times can be sporadic at times, app deployment times may take up to 48 hours.
* After clicking create, you’ll be brought to the App overview page where you can monitor deployment progress. Verify that the deployment completes.

</details>

<details>

<summary>Method 2: Deploy via Intune Platform scripts</summary>

### Generate Agent Smith script

Ensure that you have your PowerShell script from the **Provision agents** section of your [Agent Smith Configuration Guide](agent-smith-configuration-overview.md). Use a text editor such as VS Code to take this copied PowerShell script and save it as a .ps1 file.

<figure><img src="../../.gitbook/assets/image (62) (2).png" alt="" width="331"><figcaption></figcaption></figure>

### Configure Intune PowerShell Script

1. Navigate to **Devices > Scripts and remediations** in Intune.\
   ![](<../../.gitbook/assets/CleanShot 2025-04-10 at 00.17.55@2x.png>)
2. Click **Platform Scripts > Add > Windows 10** and later to upload your PowerShell script.\
   ![](<../../.gitbook/assets/CleanShot 2025-04-10 at 00.18.43@2x.png>)
3. Add the script in the screen that appears:
   1. Enter `Agent Smith` into the **Name** field under the **Basics** tab.
   2.  Under the **Script settings** tab:

       1. If you are not signing your scripts, set Enforce script signature check is set to no. [Enforcing script signature check will require any scripts to be signed.](https://learn.microsoft.com/en-us/intune/intune-service/apps/intune-management-extension)

       <figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 00.19.07@2x.png" alt=""><figcaption></figcaption></figure>

       <figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 00.20.30@2x.png" alt=""><figcaption></figcaption></figure>

### Deploy via Intune

1. Assign the script to your target device or user groups under the **Assignments** tab.\
   \
   ![](<../../.gitbook/assets/CleanShot 2025-04-10 at 00.21.20@2x.png>)
2. Monitor deployment progress and status via the Intune portal.\
   ![](<../../.gitbook/assets/CleanShot 2025-04-10 at 00.21.30@2x.png>)

<figure><img src="../../.gitbook/assets/CleanShot 2025-04-10 at 00.22.09@2x.png" alt="" width="375"><figcaption></figcaption></figure>

</details>

## Verification and troubleshooting

* Validate deployment success through Intune reports.
* Monitor device statuses in the Azure IoT Hub portal.
* Review logs at `C:\\ProgramData\\RewstRemoteAgent` for troubleshooting.
* Ensure communication with Azure IoT Hub is not blocked by firewalls or endpoint protection software.

For additional support, refer to the [Agent Smith Troubleshooting Guide](https://docs.rewst.help/documentation/agent-smith/agent-smith-configuration-overview#troubleshoot-agent-smith) or reach out via the Rewst Discord server in the #agent-smith channel.
