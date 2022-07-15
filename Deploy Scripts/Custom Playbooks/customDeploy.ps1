param(
    [Parameter(Mandatory = $true)]$ResourceGroup
)

$today = Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploySuffix = $today + "_$suffix"

# remote deploys
$deploymentName = "Get-GEOIPdata-tagIncident" + $deploySuffix
$remoteUrl = "https://raw.githubusercontent.com/JakeD-5Q/DeployPlaybooks/main/Enrich-email-plus/azuredeploy.json"
$localTemplate = 'test.parameters.json'
New-AzResourceGroupDeployment -Name $deploymentName `
    -ResourceGroupName $ResourceGroup `
    -TemplateUri $remoteUrl `
    -TemplateParameterFile $localTemplate

deploymentName = "Enrich-Comment-EmailDetails" + $deploySuffix
$remoteUrl = "https://raw.githubusercontent.com/JakeD-5Q/DeployPlaybooks/main/Enrich-email-plus/azuredeploy.json"
$localTemplate = 'test.parameters.json'
New-AzResourceGroupDeployment -Name $deploymentName `
    -ResourceGroupName $ResourceGroup `
    -TemplateUri $remoteUrl `
    -TemplateParameterFile $localTemplate
    

    "Enrich-Comment-VirustotalStats"

    "Enrich-Tag-GeoIP"

    "Notify-EmailAnalysts-NewIncident"

    "Initiate-MDEInvestigation"



