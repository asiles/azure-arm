### Define variables
{
$location = 'Australia Southeast'
$resourceGroupName = 'mdc-as-arm-simple-iaas-template'
$resourceDeploymentName = 'mdc-as-arm-iaas-template-deployment'
$path2 = pwd

$templatePath = $path2.path
$templateFile = 'simpleIaas.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $Location `
    -Verbose -Force
}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}