resource oci_identity_user this {
  compartment_id        = var.tenancy_ocid
  defined_tags          = var.definedTags
  description           = var.user_description
  email                 = var.email_id
  freeform_tags         = var.freeformTags
  name                  = var.user_name 
}

resource oci_identity_user_group_membership assign_users_to_group {
  compartment_id = var.tenancy_ocid
  group_id       = var.group_ocid
  user_id        = oci_identity_user.this.id
}

resource oci_identity_user_capabilities_management user_capabilities_management {
    user_id                      =  oci_identity_user.this.id
    can_use_api_keys             =  var.can_use_api_keys
    can_use_auth_tokens          =  var.can_use_auth_tokens
    can_use_console_password     =  var.can_use_console_password
    can_use_customer_secret_keys =  var.can_use_customer_secret_keys
    can_use_smtp_credentials     =  var.can_use_smtp_credentials
}