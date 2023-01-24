

# Module Configuration


module "VM" {
  source                                = "./VM"
  compartment_ocid                      = var.compartment_ocid
  instance_count                        = var.instance_count
  instance_display_name                 = var.instance_display_name
  create_instance                       = var.create_instance
  instance_image_ocid                   = var.instance_image_ocid
  ssh_public_key                  = var.ssh_public_key
  #create_block_volume             = var.create_block_volume
  #block_volume_count              = var.block_volume_count
  #volume_size                     = var.volume_size
  #attach_backup_policy            = var.attach_backup_policy
  #backup_policy                   = var.attach_backup_policy == true ? var.backup_policy : " "
  project_tag                     = var.project_tag.definedTags
  subnet_ocid                           = var.subnet_ocid
  instance_shape                  = var.instance_shape
  boot_volume_size_in_gbs               = var.boot_volume_size_in_gbs
  tenancy_ocid                      = var.tenancy_ocid
  region                           = var.region
  availability_domain     = var.availability_domain 
}

