
#Connection variables
subscription_id = ""
client_id = ""
client_secret = ""
tenant_id = ""

#Resource Group
resourcegroup_name = "prodigy_mdw_demo"
location           = "EastUS2" // EAST US 2 at the time of authoring this template is one of the only regions that all the products included here are supported in

#Data Factory
datafactory_name = "prodigydatafactory01"

#Data Lake Store
data_lake_store_name = "prodigydatalake01"
data_lake_store_tier = "Consumption"

#Data Lake Account
data_lake_account_name = "prodigydatalakeacct01"

#Data Lake Account Firewall Rules
data_lake_start_ip = "174.222.133.79"
data_lake_end_ip   = "174.222.133.79"

#Databricks
data_bricks_name = "prodigydatabricks01"
data_bricks_sku  = "trial" // SKU options: Trial, Standard, Premium

##Synapse##
synapse_storage_name            = "prodigysynapse01" //Name of the storage account associated with the Synapse workspace
synapse_storage_filesystem_name = "prodigysynapsefiles01" //Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created

#Synapse workspace name
synapse_workspace_name = "prodigysynapseworkspace01"

#Synapse SQL credentials
synapse_sql_admin_login    = "prodigyadmin"
synapse_sql_admin_password = "GoProdigySQL!"

#Synapse SQL Pool
synapse_sql_pool_name = "prodigysqlpool"
synapse_sql_sku       = "DW100c" // SKU options: DW100c DW200c DW300c DW400c DW500c DW1000c DW1500c DW2000c DW2500c DW3000c DW5000c DW6000c DW7500c DW10000c DW15000c DW30000c
synapse_sql_collation = "SQL_LATIN1_GENERAL_CP1_CI_AS"


#Azure Analysis Services
analysis_services_name               = "prodigyanalysis01"
analysis_services_sku                = "D1" // SKU options: D1, B1, B2, S0, S1, S2, S4, S8, S9, S8v2 and S9v2 (D1 is the Free Tier)
analysis_services_admin_users        = ["kgreen@consult-prodigy.com"] // List of admin users, seperated by comma
analysis_services_enable_power_bi    = "true"
analysis_services_firewall_rule_name = "rule01"
analysis_services_firewall_start_ip  = "174.222.133.79"
analysis_services_firewall_end_ip    = "174.222.133.79"

#Keyvault
keyvault_name                        = "mdwkeyvault01"