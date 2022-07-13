
#Azure Data factory
resource "azurerm_data_factory" "datafactory" {
  name                = "${var.datafactory_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resourcegroup_name}"
}
