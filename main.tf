/*
 * # wanted-cloud/terraform-network-ddos-protection-plan
 * 
 * Terraform building block module helping with management of DDOS protection plan used on Azure network resources.
 */

resource "azurerm_network_ddos_protection_plan" "this" {
  name                = var.name
  location            = var.location != "" ? var.location : data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name

  tags = merge(local.metadata.tags, var.tags)

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azurerm_network_ddos_protection_plan"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azurerm_network_ddos_protection_plan"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azurerm_network_ddos_protection_plan"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azurerm_network_ddos_protection_plan"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}