provider "azurerm" {
  features {}
}

resource "random_pet" "rg-name" {
    prefix = var.rg_prefix
}

variable "location" {
    default = "west3us"
  
}
resource "azurerm_resource_group" "rg" {
  location = "var.location"
}