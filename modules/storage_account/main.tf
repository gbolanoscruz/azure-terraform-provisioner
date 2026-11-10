# modules/storage_account/main.tf

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.replication_type

  # Security best practices
  min_tls_version          = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = var.tags
}
