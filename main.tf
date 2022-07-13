
terraform {
  backend "remote" {
    organization = "prodigytfcworkshop"

    workspaces {
      name = "tf_azure_mdw"
    }
  }
}

provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"

  version = "=2.35.0"
  features {}
}

#Azure Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "${var.resourcegroup_name}"
  location = "${var.location}"
}

#Azure Data Factory
module "az_datafactory" {
  source             = "./modules/az_datafactory"
  location           = var.location
  resourcegroup_name = var.resourcegroup_name
  datafactory_name   = var.datafactory_name
}

#Azure Data Lake 
module "az_datalake" {
  source                 = "./modules/az_datalake"
  location               = var.location
  resourcegroup_name     = var.resourcegroup_name
  data_lake_store_name   = var.data_lake_store_name
  data_lake_store_tier   = var.data_lake_store_tier
  data_lake_account_name = var.data_lake_account_name
  data_lake_start_ip     = var.data_lake_start_ip
  data_lake_end_ip       = var.data_lake_end_ip
}

#Databricks
module "az_databricks" {
  source             = "./modules/az_databricks"
  location           = var.location
  resourcegroup_name = var.resourcegroup_name
  data_bricks_name   = var.data_bricks_name
  data_bricks_sku    = var.data_bricks_sku
}

#Synapse
module "az_synapse" {
  source                          = "./modules/az_synapse"
  location                        = var.location
  resourcegroup_name              = var.resourcegroup_name
  synapse_storage_name            = var.synapse_storage_name
  synapse_storage_filesystem_name = var.synapse_storage_filesystem_name
  synapse_workspace_name          = var.synapse_workspace_name
  synapse_sql_pool_name           = var.synapse_sql_pool_name
  synapse_sql_admin_login         = var.synapse_sql_admin_login
  synapse_sql_admin_password      = var.synapse_sql_admin_password
  synapse_sql_sku                 = var.synapse_sql_sku
  synapse_sql_collation           = var.synapse_sql_collation
}

#Analysis Services
module "az_analysis_service" {
  source                               = "./modules/az_analysis_service"
  location                             = var.location
  resourcegroup_name                   = var.resourcegroup_name
  analysis_services_name               = var.analysis_services_name
  analysis_services_sku                = var.analysis_services_sku
  analysis_services_admin_users        = var.analysis_services_admin_users
  analysis_services_enable_power_bi    = var.analysis_services_enable_power_bi
  analysis_services_firewall_rule_name = var.analysis_services_firewall_rule_name
  analysis_services_firewall_start_ip  = var.analysis_services_firewall_start_ip
  analysis_services_firewall_end_ip    = var.analysis_services_firewall_end_ip
}