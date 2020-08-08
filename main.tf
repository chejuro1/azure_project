
provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the ve$
  version = "=2.4.0"

  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID

}
