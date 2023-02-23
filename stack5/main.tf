data oci_objectstorage_namespace export_namespace {
  compartment_id = var.compartment_ocid
}
 provider "oci" {
        region             = var.region
        tenancy_ocid       = var.tenancy_ocid
        }
   module "Bucket" {
    source             = "./Bucket"
    compartment_ocid   = var.compartment_ocid
    region             = var.region
    tenancy_ocid       = var.tenancy_ocid
    bucket_name              = var.bucket_name
    bucket_access_type       = var.bucket_access_type
    bucket_storage_tier      = var.bucket_storage_tier
    bucket_versioning        = var.bucket_versioning
    object_event_enabled     = var.object_event_enabled
    auto_tiering             = var.auto_tiering
    definedTags           = var.project_tag.definedTags
    freeformTags          = var.project_tag.freeformTags
   }
