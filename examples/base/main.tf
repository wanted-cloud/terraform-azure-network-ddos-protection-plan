resource "azurerm_resource_group" "this" {
    name     = "resource-group"
    location = "westeurope"
  
}

module "template" {
    depends_on = [ azurerm_resource_group.this ]

    source = "../.."

    name = "ddos-protection-plan"
    location = azurerm_resource_group.this.location
    resource_group_name = azurerm_resource_group.this.name
}