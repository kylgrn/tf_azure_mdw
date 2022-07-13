# Azure Modern Data Warehouse Architecture Terraform Template
### Author
Kyle Green <br>
Prodigy Consulting <br>
kgreen@consult-prodigy.com
## Description
Azure's modern data warehouse lets you bring together all your data at any scale easily, and to get insights through analytical dashboards, operational reports, or advanced analytics for all your users. This is accomplished by using a collection of Azure services in unison to provide each layer of functionality. 

The purpose of this solution is to provide an automated and repeatable way to deploy the infrastructure outlined in Microsoft's modern data warehouse architecture. To do this, we're going to utilize HashiCorp's Terraform to templatize the infrastructure. 

More info on the Azure modern data warehouse architecture can be found here: https://docs.microsoft.com/en-us/azure/architecture/solution-ideas/articles/modern-data-warehouse

### Architecture
#### Resources Deployed
- Azure Data Factory
- Azure Data Lake Storage
- Azure Databricks
- Azure Synapse Analytics 
  - Workspace
  - SQL Pool
- Azure Analysis Service

![alt text](https://github.com/kylgrn/tf_azure_mdw/blob/master/Diagram.png)

## Usage
Follow Terraform on Azure processes for deployment and secure state storage. The steps are as follows:

1) Create a new Service Principal in Azure for Terraform
   See: https://docs.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell
2) Clone this repository to your local workstation
3) Define the variables in "terraform.tfvars"
4) Run 
    Terraform Validate
5) Once validate is successful, run:
    Terraform Plan
6) Review Output, if all is well, run: 
    Terraform Apply
7) Approve the apply by typing "yes"
8) Destroy using:
    Terraform Destroy

### Variables (terraform.tfvars)
    #Connection variables
    subscription_id = ""
    client_id       = ""
    client_secret   = ""
    tenant_id       = ""

    #Resource Group
    resourcegroup_name = ""
    location           = "EastUS2" // EAST US 2 at the time of authoring this template is one of the only regions that all the products included here are supported in

    #Data Factory
    datafactory_name = ""

    #Data Lake Store
    data_lake_store_name = ""
    data_lake_store_tier = ""

    #Data Lake Account
    data_lake_account_name = ""

    #Data Lake Account Firewall Rules
    data_lake_start_ip = ""
    data_lake_end_ip   = ""

    #Databricks
    data_bricks_name = ""
    data_bricks_sku  = "trial" // SKU options: Trial, Standard, Premium

    ##Synapse##
    synapse_storage_name            = ""      //Name of the storage account associated with the Synapse workspace
    synapse_storage_filesystem_name = "" //Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created

    #Synapse workspace name
    synapse_workspace_name = ""

    #Synapse SQL credentials
    synapse_sql_admin_login    = ""
    synapse_sql_admin_password = ""

    #Synapse SQL Pool
    synapse_sql_pool_name = ""
    synapse_sql_sku       = "DW100c" // SKU options: DW100c DW200c DW300c DW400c DW500c DW1000c DW1500c DW2000c DW2500c DW3000c DW5000c DW6000c DW7500c DW10000c DW15000c DW30000c
    synapse_sql_collation = "SQL_LATIN1_GENERAL_CP1_CI_AS"


    #Azure Analysis Services
    analysis_services_name               = ""
    analysis_services_sku                = "D1"                           // SKU options: D1, B1, B2, S0, S1, S2, S4, S8, S9, S8v2 and S9v2 (D1 is the Free Tier)
    analysis_services_admin_users        = [""] // List of admin users, seperated by comma
    analysis_services_enable_power_bi    = ""
    analysis_services_firewall_rule_name = ""
    analysis_services_firewall_start_ip  = ""
    analysis_services_firewall_end_ip    = ""