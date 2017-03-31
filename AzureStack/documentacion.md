---

## Imagenes AzureStack

```
https://azurestack.blog/2016/09/adding-and-using-centos-7-2-or-any-other-image-to-azure-stack-tp2/
https://azurestack.blog/2016/10/adding-and-using-os-gallery-items-to-azure-stack-tp2/
```

### Loguearse a AzureStack

(Desde la misma máquina o haciendo un PS-Sesion a la 100.64.216.248)

Para los módulos y las tools:

```
https://docs.microsoft.com/en-us/azure/azure-stack/azure-stack-powershell-install
https://docs.microsoft.com/en-us/azure/azure-stack/azure-stack-powershell-download

```

Importamos el módulo para conectarse:

```
Import-Module .\Connect\AzureStack.Connect.psm1
```

Cargamos el tenant de AD

```
 $AadTenant = Get-AADTenantGUID -AADTenantName "innovationmediacloud.onmicrosoft.com"

```

Y lo añadimos como entorno de AzureStack:

```
Add-AzureStackAzureRmEnvironment -AadTenant $AadTenant -Name AzureStack
```

Y loguearse:

```
Login-AzureRmAccount -EnvironmentName "AzureStack" -TenantId $AadTenant -Credential(Get-Credential)
```

### Bajarse la imagen y subirla a Azure


Se pueden descargar o crear desde cualquier sitio, por ejemplo: http://olstacks.cloudapp.net/latest/

Para poder crearla en el portal, tenemos que subir la imagen a una Storage account temporal:

```
$RG = New-AzureRmResourceGroup -Name tenantartifacts -Location local

$StorageAccount = $RG | New-AzureRmStorageAccount -Name tenantartifacts -Type Standard_LRS

$ImagesContainer = New-AzureStorageContainer -Name image -Permission Blob -Context $StorageAccount.Context

$CentOSUpload = $ImagesContainer | Set-AzureStorageBlobContent -File <NOMBRE DEL VHD>

$CentOSUpload.ICloudBlob.StorageUri.PrimaryUri.AbsoluteUri | Set-Clipboard
```

> Repetir $CentOSUpload = $ImagesContainer | Set-AzureStorageBlobContent -File <NOMBRE DEL VHD> si al entrar no vemos nada o subirlo a mano desde upload.

Con eso ya tenemos los datos que necesitamos para subir la imagen:

- Publisher:OpenLogic
- Offer: CentOS
- OS Type: Linux
- SKU: 7.2
- Version: 1.0.0
- OS Disk Blob URI:	https://tenantartifacts.blob.azurestack.local/image/OpenLogic-CentOS-72-20160407-en-us-30GB-stack.vhd