# Common Variables

variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}
variable "project_tag" {
    type = map
    default = {}
}
variable "subnet_ocid" {}



###########################################
# Instance Configuration Variables
###########################################

variable "is_pv_encryption_in_transit_enabled" {}
  
variable "availability_domain" {}
  
variable "instance_count" {
    default = 0
}
variable "instance_display_name" {
    default = ""
}
variable "create_instance" {
    type = bool
    default = false
}

variable "instance_image_ocid"{
    default = "ocid1.image.oc1.iad.aaaaaaaazswbv4b7v62dcrwxvnur3gh3actc3rcgdb2xgopgwxki6axij6jq"
}

variable "ssh_public_key" {
    default = ""
}

## Block Volume Configuration

variable "boot_volume_size_in_gbs" {
  default = 50
}

#variable "create_block_volume" {
 #   type = bool
  #  default = false
#}
#variable "block_volume_count" {
 #   default = 1
#}
#variable "volume_size" {
 #   default = 150
#}

#variable "attach_backup_policy" {
 #   type = bool
  #  default = false
#}

#variable "backup_policy" {
 #   default = ""
#}

variable "instance_shape" {
    default = ""
}
