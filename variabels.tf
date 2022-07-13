
#Azure connection variables
variable "subscription_id" {
  type    = string
  default = ""
}
variable "client_id" {
  type    = string
  default = ""
}
variable "client_secret" {
  type    = string
  default = ""
}
variable "tenant_id" {
  type    = string
  default = ""
}

#Resource variables

variable "resourcegroup_name" {
  type    = string
  default = ""
}
variable "location" {
  type    = string
  default = ""
}
variable "datafactory_name" {
  type    = string
  default = ""
}
variable "data_lake_store_name" {
  type    = string
  default = ""
}
variable "data_lake_store_tier" {
  type    = string
  default = ""
}
variable "data_lake_account_name" {
  type    = string
  default = ""
}
variable "data_lake_start_ip" {
  type    = string
  default = ""
}
variable "data_lake_end_ip" {
  type    = string
  default = ""
}
variable "data_bricks_name" {
  type    = string
  default = ""
}
variable "data_bricks_sku" {
  type    = string
  default = ""
}
variable "synapse_storage_name" {
  type    = string
  default = ""
}
variable "synapse_storage_filesystem_name" {
  type    = string
  default = ""
}
variable "synapse_workspace_name" {
  type    = string
  default = ""
}
variable "synapse_sql_admin_login" {
  type    = string
  default = ""
}
variable "synapse_sql_admin_password" {
  type    = string
  default = ""
}
variable "synapse_sql_pool_name" {
  type    = string
  default = ""
}
variable "synapse_sql_sku" {
  type    = string
  default = ""
}
variable "synapse_sql_collation" {
  type    = string
  default = ""
}
variable "analysis_services_name" {
  type    = string
  default = ""
}
variable "analysis_services_sku" {
  type    = string
  default = ""
}
variable "analysis_services_admin_users" {
  type    = list
  default = [""]
}
variable "analysis_services_enable_power_bi" {
  type    = string
  default = ""
}
variable "analysis_services_firewall_rule_name" {
  type    = string
  default = ""
}
variable "analysis_services_firewall_start_ip" {
  type    = string
  default = ""
}
variable "analysis_services_firewall_end_ip" {
  type    = string
  default = ""
}
variable "keyvault_name" {
    type = string
    default = ""
}