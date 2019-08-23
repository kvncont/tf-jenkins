provider "azurerm" {}

resource "azurerm_resource_group" "resource_group" {
    name     = "RG-${var.id}"
    location = "${var.region}"
}

# resource "azurerm_storage_account" "storage_account" {
#   name                     = "SA-${var.id}"
#   resource_group_name      = "${azurerm_resource_group.resource_group.name}"
#   location                 = "${var.region}"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   tags = {
#     environment = "${var.environment}"
#   }
# }
