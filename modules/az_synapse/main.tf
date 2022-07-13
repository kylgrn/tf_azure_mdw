resource "azurerm_storage_account" "synapse_storage" {
  name                     = "${var.synapse_storage_name}"
  resource_group_name      = "${var.resourcegroup_name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
}

resource "azurerm_storage_data_lake_gen2_filesystem" "synapse_storage_filesystem" {
  name               = "${var.synapse_storage_filesystem_name}"
  storage_account_id = azurerm_storage_account.synapse_storage.id
}

resource "azurerm_synapse_workspace" "synapse_workspace" {
  name                                 = "${var.synapse_workspace_name}"
  resource_group_name                  = "${var.resourcegroup_name}"
  location                             = "${var.location}"
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.synapse_storage_filesystem.id
  sql_administrator_login              = "${var.synapse_sql_admin_login}"
  sql_administrator_login_password     = "${var.synapse_sql_admin_password}"

}
resource "azurerm_synapse_sql_pool" "synapse_sql_pool" {
  name                 = "${var.synapse_sql_pool_name}"
  synapse_workspace_id = azurerm_synapse_workspace.synapse_workspace.id
  sku_name             = "${var.synapse_sql_sku}"
  collation            = "${var.synapse_sql_collation}"
}
