variable "tenancy_ocid" {}

variable "user_description" {}

variable "email_id" {
  default = ""
}
variable "user_name" {}
variable "group_ocid" {}

variable "can_use_api_keys" {}
variable "can_use_auth_tokens" {}
variable "can_use_console_password" {}
variable "can_use_customer_secret_keys" {}
variable "can_use_smtp_credentials" {}

variable "freeformTags" {
    type = map
    default = {}
}

variable "definedTags" {
    type = map 
    default = {}
}
