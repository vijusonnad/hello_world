provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
}

      variable "compartment_ocid" {}
      variable "tenancy_ocid" {}
      variable "region" {}
         
   
      
      ## Instance Configuration
      variable "availability_domain" {}

      variable "instance_count" {}
      variable "instance_display_name" {}
      variable "preserve_boot_volume" {
        default = "true"
      }
      variable "create_instance" {
        type = bool
        default = true
      }
      variable "instance_image_ocid"{
        default = "ocid1.image.oc1.iad.aaaaaaaazswbv4b7v62dcrwxvnur3gh3actc3rcgdb2xgopgwxki6axij6jq"
      }
      variable "instance_shape" {
        default = ""
      }
      variable "subnet_ocid" {}
      variable "ssh_public_key" {}
      variable "assign_public_ip" { default = false }
      
      ## Boot Volume Configuration
      
      variable "boot_volume_size_in_gbs" {
        default = 100
      }

      ## Block Volume Configuration

      #variable "create_block_volume" {
       # type = bool
        #default = true
      #}
      #variable "block_volume_count" {
       # default = 1
      #}
      #variable "volume_size" {
       # default = 150
      #}

    
      #variable "instance_timeout" {
       # default = "30m"
      #}
      
      #variable "attach_backup_policy" {
       # type = bool
        #default = false
      #}
      #variable "backup_policy" {
       # default = ""
      #}
      
      variable "is_pv_encryption_in_transit_enabled" {
        default = false
      }
      #variable "attachment_type" {
       # default = "paravirtualized"
      #}
      
      variable "project_tag" {
        type=map
        default = {}
      }      
      
      terraform {
        required_version = ">= 1.0.0"
      }
      
      data "oci_identity_availability_domains" "ADs" {
        compartment_id = var.compartment_ocid
      }

      resource "oci_core_instance" "instance" {
        count                   = var.create_instance == true ? var.instance_count : 0
        availability_domain     = var.availability_domain
        compartment_id          = var.compartment_ocid
        defined_tags            = var.project_tag
        display_name            = "${var.instance_display_name}_${count.index+1}"
        shape                   = var.instance_shape
        create_vnic_details {
          subnet_id             = var.subnet_ocid
          display_name          = "${var.instance_display_name}${count.index+1}"
          assign_public_ip      = var.assign_public_ip
          defined_tags          = var.project_tag
        }
        source_details {
          source_type             = "image"
          boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
          source_id               = var.instance_image_ocid
        }
        is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled
        metadata = {
          ssh_authorized_keys = var.ssh_public_key
        }
      }
      #resource "oci_core_volume" "block_volume" {
       # count                 = var.create_block_volume == true ? var.instance_count * var.block_volume_count : 0
        #availability_domain   = oci_core_instance.instance[count.index % var.instance_count].availability_domain
        #compartment_id        = var.compartment_ocid
        #display_name          = "${oci_core_instance.instance[count.index % var.instance_count].display_name}_volume_${floor(count.index / var.instance_count)+1}"
        #defined_tags          = var.project_tag
        #size_in_gbs           = var.volume_size
      #}

      #resource "oci_core_volume_attachment" "instance_block_attach" {
       # depends_on = [
        #  oci_core_volume.block_volume,
        #]
        #count           = var.create_block_volume == true ? var.instance_count * var.block_volume_count : 0
        #attachment_type = var.attachment_type
        #istance_id     = oci_core_instance.instance.*.id[count.index % var.instance_count]
        #volume_id       = oci_core_volume.block_volume.*.id[count.index]
      #}

      #resource "oci_core_volume_backup_policy_assignment" "boot_volume_backup_policies_assignment" {
       # count        = var.attach_backup_policy == true ? var.instance_count : 0
        #asset_id     = oci_core_instance.instance.*.boot_volume_id[count.index]
        #policy_id    = var.backup_policy
      #}

      #resource "oci_core_volume_backup_policy_assignment" "block_volume_backup_policies_assignment" {
       # count        = var.attach_backup_policy == true ? var.instance_count * var.block_volume_count : 0
        #asset_id     = oci_core_volume.block_volume.*.id[count.index]
        #policy_id    = var.backup_policy
      #}
  
      #output "display_name" {
       # description = "Display name of created instances. "
        #value       = [oci_core_instance.instance.*.display_name]
      #}
      
      #output "private_ip" {
       # description = "Private IPs of created instances. "
        #value       = [oci_core_instance.instance.*.private_ip]
      #}     
  