resource "azurerm_resource_group" "resource_group" {
    name            = "testing-rg01"
    location        = "North Europe"
}
resource "azurerm_storage_account" "storage_account" {
    name                    = "testingStorageAccount"
    resource_group_name     = azurerm_resource_gorup.resource_group.name
}