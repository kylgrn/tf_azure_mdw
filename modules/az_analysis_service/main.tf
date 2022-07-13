resource "azurerm_analysis_services_server" "server" {
  name                    = "${var.analysis_services_name}"
  location                = "${var.location}"
  resource_group_name     = "${var.resourcegroup_name}"
  sku                     = "${var.analysis_services_sku}"
  admin_users             = "${var.analysis_services_admin_users}"
  enable_power_bi_service = "${var.analysis_services_enable_power_bi}"

  ipv4_firewall_rule {
    name        = "${var.analysis_services_firewall_rule_name}"
    range_start = "${var.analysis_services_firewall_start_ip}"
    range_end   = "${var.analysis_services_firewall_end_ip}"
  }
}