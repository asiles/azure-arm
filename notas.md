#Find all the available publishers
Get-AzureRmVMImagePublisher -Location $loc | Select PublisherName
#Pick a publisher
$pubName="MicrosoftWindowsServer"
Get-AzureRmVMImageOffer -Location $loc -Publisher $pubName | Select Offer
#Pick a specific offer
$offerName="WindowsServer"
#View the different SKUs
Get-AzureRmVMImageSku -Location $loc -Publisher $pubName -Offer $offerName | Select Skus
#View the versions of a SKU
Get-AzureRmVMImage -Location $loc -PublisherName 'MicrosoftWindowsServer' -Offer 'WindowsServer' -Skus '2012-R2-Datacenter' 


Cent0s:

Get-AzureRmVMImage -Location $loc -PublisherName 'OpenLogic' -Offer 'CentOS' -Skus '7.3'



Tipos de parametros:

string
secureString
int
bool
object
secureObject
array

    "storageAccountResourceGroup": {
      "type": "string",
      "defaultValue": "MDC-AS-LAB"
    },


      "copy": {
        "name": "VMsLoop",
        "count": "[parameters('numberOfVms')]"
      },