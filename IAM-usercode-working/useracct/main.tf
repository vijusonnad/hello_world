module "useracct" {
    source                              = "./users_module"
    tenancy_ocid                        = var.tenancy_ocid
    user_name                           = var.useracct_user_name
    user_description                    = var.useracct_user_description
    email_id                            = var.useracct_email_id
    group_ocid                          = data.oci_identity_groups.this.groups[0].id
    can_use_api_keys                    = var.useracct_can_use_api_keys
    can_use_auth_tokens                 = var.useracct_can_use_auth_tokens
    can_use_console_password            = var.useracct_can_use_console_password
    can_use_customer_secret_keys        = var.useracct_can_use_customer_secret_keys
    can_use_smtp_credentials            = var.useracct_can_use_smtp_credentials
}
