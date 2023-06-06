resource "azurerm_resource_group" "resource_group" {
    name            = var.rg_name
    location        = var.location
}
resource "azurerm_storage_account" "storage_account" {
    name                    = var.sa_name
    resource_group_name     = azurerm_resource_gorup.resource_group.name
    
    network_rules {
        default_action             = "Deny"
        ip_rules                   = ["100.0.0.1"]
    }
}