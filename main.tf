locals {
  name = "${data.azurerm_subscription.subscription.display_name}-${var.location}"
}

data "azurerm_subscription" "subscription" {
}

resource "random_integer" "number" {
  max = 9999
  min = 10
}

resource "azurerm_resource_group" "workspace_group" {
  location = var.location
  name = "rg-${local.name}"
}

resource "azurerm_log_analytics_workspace" "log_analytics_workspace" {
  location = azurerm_resource_group.workspace_group.location
  name = "ws-${local.name}-${random_integer.number.result}"
  resource_group_name = azurerm_resource_group.workspace_group.name
  sku = var.sku
  retention_in_days = var.retention_in_days != "" ? var.retention_in_days : null
}


