# deploy all playbooks to sentinel

$EnrichEmail = 'Enrich-email-plus\azuredeploy.json'
$EnrichEmailParams = 'Enrich-email-plus\azuredeploy.parameters.json'

$GetGeoIP = 'Get-GEOIPdata-tagIncident\azuredeploy.json'
$GetGeoIPParams = 'Get-GEOIPdata-tagIncident\azuredeploy.parameters.json'

$NewIncidentEmail = 'Send-email-with-formatted-incident-report\azuredeploy.json'
$NewIncidentEmailParams = 'Send-email-with-formatted-incident-report\azuredeploy.parameters.json'

$FullInvestgation = 'Start-CompleteMDEInvestigation\azuredeploy.json'
$FullInvestgationParams = 'Start-CompleteMDEInvestigation\azuredeploy.parameters.json'

$VTEnrichAllEntities = 'VirusTotalEnrichAllEntites\azuredeploy.json'
$VTEnrichAllEntitiesParams = 'VirusTotalEnrichAllEntites\azuredeploy.parameters.json'