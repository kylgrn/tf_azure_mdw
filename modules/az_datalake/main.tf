
#Azure Data Lake Store
resource "azurerm_data_lake_store" "data_lake_store" {
  name                = "${var.data_lake_store_name}"
  resource_group_name = "${var.resourcegroup_name}"
  location            = "${var.location}"
  tier                = "${var.data_lake_store_tier}"
  encryption_state    = "Enabled"
  encryption_type     = "ServiceManaged"
  firewall_state      = "Enabled"
}

#Data Lake Account
resource "azurerm_data_lake_analytics_account" "data_lake_account" {
  name                = "${var.data_lake_account_name}"
  resource_group_name = "${var.resourcegroup_name}"
  location            = "${var.location}"
  default_store_account_name = azurerm_data_lake_store.data_lake_store.name
}

#Data Lake Firewall Rules
resource "azurerm_data_lake_analytics_firewall_rule" "data_lake_firewall_rule" {
  name                = "allowed-ip-range"
  account_name        = azurerm_data_lake_analytics_account.data_lake_account.name
  resource_group_name = "${var.resourcegroup_name}"
  start_ip_address    = "${var.data_lake_start_ip}"
  end_ip_address      = "${var.data_lake_end_ip}"
}
resource "azurerm_data_lake_store_firewall_rule" "data_lake_store_firewall_rule" {
  name                = "allowed-ip-range"
  account_name        = azurerm_data_lake_store.data_lake_store.name
  resource_group_name = "${var.resourcegroup_name}"
  start_ip_address    = "${var.data_lake_start_ip}"
  end_ip_address      = "${var.data_lake_end_ip}"
}