data oci_identity_availability_domains ADs {
  compartment_id                                              = var.compartment_ocid
}

 provider "oci" {
	      region                                                = var.region
        tenancy_ocid                                          = var.tenancy_ocid
        }

################################

 # Module Configuration

################################

   module "NetworkLB" {
    source                                                    = "./NetworkLB"
    compartment_ocid                                          = var.compartment_ocid
    subnet_ocid                                               = var.subnet_ocid
    is_preserve_source                                        = var.is_preserve_source
    is_preserve_source_destination                            = var.is_preserve_source_destination
    create_private_loadbalancer                               = var.create_private_loadbalancer
    is_private                                                = var.is_private
    FinNonPrd_Ext_Dev_SaaS_ODI_NLB_display_name               = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_display_name
    FinNonPrd_Ext_Dev_SaaS_ODI_NLB_health_checker_port        = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_health_checker_port
    FinNonPrd_Ext_Dev_SaaS_ODI_NLB_health_checker_protocol    = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_health_checker_protocol
    FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set_name           = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set_name
    FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set_policy         = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set_policy
    FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_display_name      = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_display_name
    FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_port              = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_port
    FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_protocol          = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_protocol
    FinNonPrd_Dev_Ext_LB_display_name                         = var.FinNonPrd_Dev_Ext_LB_display_name
    FinNonPrd_Dev_Ext_LB_GG_backend_set_name                  = var.FinNonPrd_Dev_Ext_LB_GG_backend_set_name
    FinNonPrd_Dev_Ext_LB_GG_backendset_policy                 = var.FinNonPrd_Dev_Ext_LB_GG_backendset_policy
    FinNonPrd_Dev_Ext_LB_GG_health_checker_port               = var.FinNonPrd_Dev_Ext_LB_GG_health_checker_port
    FinNonPrd_Dev_Ext_LB_GG_health_checker_protocol           = var.FinNonPrd_Dev_Ext_LB_GG_health_checker_protocol
    FinNonPrd_Dev_Ext_LB_GG_Listener_display_name             = var.FinNonPrd_Dev_Ext_LB_GG_Listener_display_name
    FinNonPrd_Dev_Ext_LB_GG_Listener_port                     = var.FinNonPrd_Dev_Ext_LB_GG_Listener_port
    FinNonPrd_Dev_Ext_LB_GG_Listener_protocol                 = var.FinNonPrd_Dev_Ext_LB_GG_Listener_protocol
    FinNonPrd_Dev_LB_BCKESET_backend_set_name                 = var.FinNonPrd_Dev_LB_BCKESET_backend_set_name
    FinNonPrd_Dev_LB_BCKESET_backendset_policy                = var.FinNonPrd_Dev_LB_BCKESET_backendset_policy
    FinNonPrd_Dev_LB_BCKESET_health_checker_port              = var.FinNonPrd_Dev_LB_BCKESET_health_checker_port
    FinNonPrd_Dev_LB_BCKESET_health_checker_protocol          = var.FinNonPrd_Dev_LB_BCKESET_health_checker_protocol
    FinNonPrd_Dev_LB_BCKESET_Listener_display_name            = var.FinNonPrd_Dev_LB_BCKESET_Listener_display_name
    FinNonPrd_Dev_LB_BCKESET_Listener_port                    = var.FinNonPrd_Dev_LB_BCKESET_Listener_port
    FinNonPrd_Dev_LB_BCKESET_Listener_protocol                = var.FinNonPrd_Dev_LB_BCKESET_Listener_protocol
    FinNonPrd_Dev_MinDB_TCPS_backend_set_name                 = var.FinNonPrd_Dev_MinDB_TCPS_backend_set_name
    FinNonPrd_Dev_MinDB_TCPS_backendset_policy                = var.FinNonPrd_Dev_MinDB_TCPS_backendset_policy
    FinNonPrd_Dev_MinDB_TCPS_health_checker_port              = var.FinNonPrd_Dev_MinDB_TCPS_health_checker_port
    FinNonPrd_Dev_MinDB_TCPS_health_checker_protocol          = var.FinNonPrd_Dev_MinDB_TCPS_health_checker_protocol
    FinNonPrd_Dev_MinDB_TCPS_Listener_display_name            = var.FinNonPrd_Dev_MinDB_TCPS_Listener_display_name
    FinNonPrd_Dev_MinDB_TCPS_Listener_port                    = var.FinNonPrd_Dev_MinDB_TCPS_Listener_port
    FinNonPrd_Dev_MinDB_TCPS_Listener_protocol                = var.FinNonPrd_Dev_MinDB_TCPS_Listener_protocol
    project_tag                                               = var.project_tag
    }
