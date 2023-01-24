data oci_identity_availability_domains ADs {
  compartment_id                                              = var.compartment_ocid
}


###########################################################
## Ext Network Load Balancer Dev ODI Resource Definition
###########################################################

resource "oci_network_load_balancer_network_load_balancer" "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_1" {
compartment_id                                                  = var.compartment_ocid
display_name                     = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_display_name
subnet_id                                                       = var.subnet_ocid
is_preserve_source_destination                                  = var.is_preserve_source_destination
is_private                                                      = var.is_private
}


resource "oci_network_load_balancer_backend_set" "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set" {
health_checker {
port             = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_health_checker_port
protocol         = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_health_checker_protocol
}
name                = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set_name
policy              = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set_policy
is_preserve_source                                             = var.is_preserve_source
network_load_balancer_id                                       = oci_network_load_balancer_network_load_balancer.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_1.id
}


resource "oci_network_load_balancer_listener" "FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener" {
default_backend_set_name                                      = oci_network_load_balancer_backend_set.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_backend_set.name
name          = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_display_name
port                  = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_port
protocol              = var.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_Listener_protocol
network_load_balancer_id                                      = oci_network_load_balancer_network_load_balancer.FinNonPrd_Ext_Dev_SaaS_ODI_NLB_1.id
}

#############################################################
## Ext Network Load Balancer Dev 
#############################################################

resource "oci_network_load_balancer_network_load_balancer" "FinNonPrd_Dev_Ext_LB" {
compartment_id                                              = var.compartment_ocid
display_name                           = var.FinNonPrd_Dev_Ext_LB_display_name
is_preserve_source_destination                              = var.is_preserve_source_destination
is_private                                                  = var.is_private
subnet_id = var.subnet_ocid
}

resource "oci_network_load_balancer_backend_set" "FinNonPrd_Dev_Ext_LB_GG" {
health_checker {
port                = var.FinNonPrd_Dev_Ext_LB_GG_health_checker_port
protocol            = var.FinNonPrd_Dev_Ext_LB_GG_health_checker_protocol
request_data                                               = ""
response_data                                              = ""
 }
name                   = var.FinNonPrd_Dev_Ext_LB_GG_backend_set_name
policy                  = var.FinNonPrd_Dev_Ext_LB_GG_backendset_policy
is_preserve_source                                         = var.is_preserve_source
network_load_balancer_id                                   = oci_network_load_balancer_network_load_balancer.FinNonPrd_Dev_Ext_LB.id
}

resource "oci_network_load_balancer_listener" "FinNonPrd_Dev_Ext_LB_ListGG" {
default_backend_set_name                                   = oci_network_load_balancer_backend_set.FinNonPrd_Dev_Ext_LB_GG.name
name              = var.FinNonPrd_Dev_Ext_LB_GG_Listener_display_name
port                      = var.FinNonPrd_Dev_Ext_LB_GG_Listener_port
protocol                  = var.FinNonPrd_Dev_Ext_LB_GG_Listener_protocol
network_load_balancer_id                                   = oci_network_load_balancer_network_load_balancer.FinNonPrd_Dev_Ext_LB.id
}

resource "oci_network_load_balancer_backend_set" "FinNonPrd_Dev_LB_BCKESET" {
health_checker {
port              = var.FinNonPrd_Dev_LB_BCKESET_health_checker_port
protocol          = var.FinNonPrd_Dev_LB_BCKESET_health_checker_protocol
request_data                                              = ""
response_data                                             = ""
}
name                 = var.FinNonPrd_Dev_LB_BCKESET_backend_set_name
policy                = var.FinNonPrd_Dev_LB_BCKESET_backendset_policy
is_preserve_source                                        = var.is_preserve_source
network_load_balancer_id                                  = oci_network_load_balancer_network_load_balancer.FinNonPrd_Dev_Ext_LB.id
}

resource "oci_network_load_balancer_listener" "FinNonPrd_Dev_Ext_LB_LIST_1" {
default_backend_set_name                                 = oci_network_load_balancer_backend_set.FinNonPrd_Dev_LB_BCKESET.name
name           = var.FinNonPrd_Dev_LB_BCKESET_Listener_display_name
port                   = var.FinNonPrd_Dev_LB_BCKESET_Listener_port
protocol               = var.FinNonPrd_Dev_LB_BCKESET_Listener_protocol
network_load_balancer_id                                 = oci_network_load_balancer_network_load_balancer.FinNonPrd_Dev_Ext_LB.id
}

resource "oci_network_load_balancer_backend_set" "FinNonPrd_Dev_MinDB_TCPS" {
health_checker {
port            = var.FinNonPrd_Dev_MinDB_TCPS_health_checker_port
protocol        = var.FinNonPrd_Dev_MinDB_TCPS_health_checker_protocol
request_data                                            = ""
response_data                                           = ""
}
name               = var.FinNonPrd_Dev_MinDB_TCPS_backend_set_name
policy              = var.FinNonPrd_Dev_MinDB_TCPS_backendset_policy
is_preserve_source                                      = var.is_preserve_source
network_load_balancer_id                                = oci_network_load_balancer_network_load_balancer.FinNonPrd_Dev_Ext_LB.id  
}

resource "oci_network_load_balancer_listener" "FinNonPrd_Dev_Ext_LB_MinDB_TCPS" {
default_backend_set_name                               = oci_network_load_balancer_backend_set.FinNonPrd_Dev_MinDB_TCPS.name
name         = var.FinNonPrd_Dev_MinDB_TCPS_Listener_display_name
port                 = var.FinNonPrd_Dev_MinDB_TCPS_Listener_port
protocol             = var. FinNonPrd_Dev_MinDB_TCPS_Listener_protocol
network_load_balancer_id                               = oci_network_load_balancer_network_load_balancer.FinNonPrd_Dev_Ext_LB.id
}

data "oci_network_load_balancer_network_load_balancers" "test_network_load_balancers" {
  compartment_id = var.compartment_ocid
}

provider "oci" {
region                                                = var.region
tenancy_ocid                                          = var.tenancy_ocid
}
