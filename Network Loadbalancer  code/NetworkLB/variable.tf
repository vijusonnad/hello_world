variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}
variable "subnet_ocid" {}
variable "is_preserve_source" {
  default = true
}
variable "is_preserve_source_destination" {
  default = false
}
variable "create_private_loadbalancer" {
  default = false
}
variable "is_private" {}

#### FinNonPrd_Ext_Dev_SaaS_ODI_NLB ########

variable "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_display_name" {}
variable "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_health_checker_port" {}
variable "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_health_checker_protocol" {}
variable "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set_name" {}
variable "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set_policy" {}
variable "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_display_name" {}
variable "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_port" {}
variable "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_protocol" {}

#### FinNonPrd_Dev_Ext_LB ########

variable "FinNonPrd_Dev_Ext_LB_display_name"{}
variable "FinNonPrd_Dev_Ext_LB_GG_backend_set_name"{}
variable "FinNonPrd_Dev_Ext_LB_GG_backendset_policy"{}
variable "FinNonPrd_Dev_Ext_LB_GG_health_checker_port"{}
variable "FinNonPrd_Dev_Ext_LB_GG_health_checker_protocol"{}
variable "FinNonPrd_Dev_Ext_LB_GG_Listener_display_name"{}
variable "FinNonPrd_Dev_Ext_LB_GG_Listener_port"{}
variable "FinNonPrd_Dev_Ext_LB_GG_Listener_protocol"{}
variable "FinNonPrd_Dev_LB_BCKESET_backend_set_name"{}
variable "FinNonPrd_Dev_LB_BCKESET_backendset_policy"{}
variable "FinNonPrd_Dev_LB_BCKESET_health_checker_port"{}
variable "FinNonPrd_Dev_LB_BCKESET_health_checker_protocol"{}
variable "FinNonPrd_Dev_LB_BCKESET_Listener_display_name"{}
variable "FinNonPrd_Dev_LB_BCKESET_Listener_port"{}
variable "FinNonPrd_Dev_LB_BCKESET_Listener_protocol"{}
variable "FinNonPrd_Dev_MinDB_TCPS_backend_set_name"{}
variable "FinNonPrd_Dev_MinDB_TCPS_backendset_policy"{}
variable "FinNonPrd_Dev_MinDB_TCPS_health_checker_port"{}
variable "FinNonPrd_Dev_MinDB_TCPS_health_checker_protocol"{}
variable "FinNonPrd_Dev_MinDB_TCPS_Listener_display_name"{}
variable "FinNonPrd_Dev_MinDB_TCPS_Listener_port"{}
variable "FinNonPrd_Dev_MinDB_TCPS_Listener_protocol"{}

variable "project_tag" {
  type=map
  default = {}
}

