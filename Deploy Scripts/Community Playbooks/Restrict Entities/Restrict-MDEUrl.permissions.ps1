param(
    [Parameter(Mandatory = $true)]$PlaybookName
)

# get the object id of the playbook
$ID = (Get-AzResource -Name $PlaybookName -ResourceType Microsoft.Logic/workflows).Identity.PrincipalId

$MIGuid = $ID