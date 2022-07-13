variable "resourcegroup_name"{
    type = string
    default = ""
}
variable "location"{
    type = string
    default = ""
}
variable "analysis_services_name"{
    type = string
    default = ""
}
variable "analysis_services_sku"{
    type = string
    default = ""
}
variable "analysis_services_admin_users"{
    type = list
    default = [""]
}
variable "analysis_services_enable_power_bi"{
    type = string
    default = ""
}
variable "analysis_services_firewall_rule_name"{
    type = string
    default = ""
}
variable "analysis_services_firewall_start_ip"{
    type = string
    default = ""
}
variable "analysis_services_firewall_end_ip"{
    type = string
    default = ""
}
