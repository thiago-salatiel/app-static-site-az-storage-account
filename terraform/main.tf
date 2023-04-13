# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-static-site"
  location = "eastus"
}
 
# Storage account
resource "azurerm_storage_account" "stracct" {
  name                     = "stracctstaticsite130423"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  static_website {
    index_document = "index.html"
  }
}
 
# index.html on blob storage
resource "azurerm_storage_blob" "strblob" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.stracct.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source_content         = "<h1>This is static content coming from the Terraform</h1>"
}