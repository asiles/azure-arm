* Cent0s básica V1


** Uso:

```
New-AzureRmResourceGroupDeployment -Name <NOMBRE DEL DESPLIEGUE> -ResourceGroupName <NOMBRE DEL RESOURCE GROUP> -TemplateFile template.json -Verbose
```


** Parametros de output:

- testvmName: String - nombre de la máquina
- testvmAdminUserName: Stringe - user
- VnetName: String - nombre de la VNET
- SubNetName: String - Frontend/Backend/DB
- storageaccountnameprefix: String - Prefijo que sumará al id del resource group.