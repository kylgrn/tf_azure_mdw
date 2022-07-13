
resource "azurerm_databricks_workspace" "data_bricks_workspace" {
  name                = "${var.data_bricks_name}"
  resource_group_name = "${var.resourcegroup_name}"
  location            = "${var.location}"
  sku                 = "${var.data_bricks_sku}"
}