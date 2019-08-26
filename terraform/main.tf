# terraform {
#   backend "azurerm" {
#     resource_group_name  = "RG"
#     storage_account_name = "SA"
#     container_name       = "SC"
#     key                  = "dev.terraform.tfstate"
#   }
# }

provider "azurerm" {
    version = "~> 1.31"

    subscription_id = "${var.subscription_id}"
    client_id       = "${var.client_id}"
    client_secret   = "${var.client_secret}"
    tenant_id       = "${var.tenant_id}"
}

resource "azurerm_resource_group" "resource_group" {
    name     = "RG-${var.company}-${var.deparment}-${var.environment}-${var.product_service}-${var.region_description}"
    location = "${var.region}"
}
