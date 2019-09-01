provider "azurerm"{

}

resource "azurerm_resource_group" "resgrp" {
name = "terraform_group"
location = "${var.location}"
}
