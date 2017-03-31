# Cent0s básica V1


## Uso:

```
New-AzureRmResourceGroupDeployment -Name <NOMBRE DEL DESPLIEGUE> -ResourceGroupName <NOMBRE DEL RESOURCE GROUP> -TemplateFile template.json -Verbose
```


## Parametros de output:

- testvmName: String - nombre de la máquina
- testvmAdminUserName: Stringe - user
- VnetName: String - nombre de la VNET
- SubNetName: String - Frontend/Backend/DB
- storageaccountnameprefix: String - Prefijo que sumará al id del resource group. No puede pasar de 15 caracteres.

## Despliegue:

Crea una Storage Account, una VNET con 1 Subnet y una Máquina Virtual Cent0s.

Luego la actualiza e instala el Epel.


39 $AadTenant = Get-AADTenantGUID -AADTenantName "innovationmediacloud.onmicrosoft.com"
40 Add-AzureStackAzureRmEnvironment -AadTenant $AadTenant -Name AzureStack
41 Login-AzureRmAccount -EnvironmentName "AzureStack" -TenantId $AadTenant
42 Login-AzureRmAccount -EnvironmentName "AzureStack" -TenantId $AadTenant -Credential(Get-Credential)
43 Get-AzureRmResourceGroup
44 clear

> Igual