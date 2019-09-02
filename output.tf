data "azurerm_subscription" "currentsub" {}

output "target_azure_subscription" {
  value = "${data.azurerm_subscription.currentsub.display_name}"
}

output "appservice_dns_name" {
  value = "${azurerm_app_service.appsvc.default_site_hostname}"
}
