# Cent0s b�sica V1


## Uso:

```
New-AzureRmResourceGroupDeployment -Name <NOMBRE DEL DESPLIEGUE> -ResourceGroupName <NOMBRE DEL RESOURCE GROUP> -TemplateFile template.json -Verbose
```


## Parametros de output:

- testvmName: String - nombre de la m�quina
- testvmAdminUserName: Stringe - user
- VnetName: String - nombre de la VNET
- SubNetName: String - Frontend/Backend/DB
- storageaccountnameprefix: String - Prefijo que sumar� al id del resource group. No puede pasar de 15 caracteres.

## Despliegue:

Crea una Storage Account, una VNET con 1 Subnet y una M�quina Virtual Cent0s.

Luego la actualiza e instala el Epel.