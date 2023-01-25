variable "tenancy_ocid" {}
variable "region" {}
variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {}
    }
}

variable "useracct_email_id" {}
variable "useracct_user_description" {}
variable "useracct_group_ocid" {}
variable "useracct_user_name" {}

variable "useracct_can_use_api_keys" {}
variable "useracct_can_use_auth_tokens" {}
variable "useracct_can_use_console_password" {}
variable "useracct_can_use_customer_secret_keys" {}
variable "useracct_can_use_smtp_credentials" {}

// Data

data "oci_identity_groups" "this" {
    compartment_id = var.tenancy_ocid
    name = var.useracct_group_ocid
}
