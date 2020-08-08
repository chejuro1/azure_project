
provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the ve$
  version = "=2.5.0"

  subscription_id = "{var.subscription_id}"
  client_id       = "{var.client_id}"
  client_secret   = "{var.client_secret}"
  tenant_id       = "{var.tenant_id}" 

}

resource "azurerm_resource_group" "myterraformgroup" {
    name     = "myResourceGroup"
    location = "eastus"

    tags = {
        environment = "Terraform Demo"
    }
}
