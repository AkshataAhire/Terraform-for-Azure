provider "azurerm"{

}

resource "azurerm_resource_group" "resgrp" {
  name = "terraform_group"
  location = "${var.location}"
  tags = "$(var.tags)"
}

resource "azurerm_app_service_plan" "appserplan" {
  name                = "terraform-app-svc-plan"
  resource_group_name = "${azurerm_resource_group.resggrp.name}"
  location            = "${azurerm_resource_group.resgrp.location}"
  kind                = "${var.appservice_plan_kind}"
  reserved            = true
  tags                = "${var.tags}"

  sku {
    tier = "${var.appservice_plan_tier}"
    size = "${var.appservice_plan_size}"
  }
}

resource "azurerm_app_service" "frontendappser" {
  name                = "terraform-app-windows-app-ser"
  resource_group_name = "${azurerm_resource_group.resgrp.name}"
  app_service_plan_id = "${azurerm_app_service_plan.appserplan.id}"
  location            = "${azurerm_resource_group.resgrp.location}"
  tags                = "${var.tags}"

  app_settings {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = false
  }

  site_config {
    always_on        = "${var.appservice_always_on}"
    default_documents = "frontend|${var.appservice_frontend}"
  }
}
