Param(
    [Parameter(Mandatory=$true)]
    [string]$script_content_path,
    [Parameter(Mandatory=$true)]
    [string]$results_postdata_path
)

$rewst_base_url = "https://engine.rewst.io/webhooks/custom/action"
$script_content_url = "$rewst_base_url/$script_content_path"
$post_url = "$rewst_base_url/$results_postdata_path"



# Download Script Content from Rewst

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc = New-Object System.Net.WebClient
$wc.Encoding = [System.Text.Encoding]::UTF8
$commands = ($wc.DownloadString($script_content_url))

# Execute Script Content

iex $commands