param (
    [string]$ResourceGroupName = "sns-ARM-rg1",
    [string]$TemplateFile = "webapp.bicep"
)

Write-Host "Starting deployment..."

New-AzResourceGroupDeployment -ResourceGroupName $ResourceGroupName -TemplateFile $TemplateFile -Verbose

Write-Host "Deployment completed"