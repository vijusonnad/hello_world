

	
   data oci_objectstorage_namespace export_namespace {
   compartment_id = var.compartment_ocid
   }
   
  resource "oci_objectstorage_bucket"  "Object_Bucket"  {  
    compartment_id      = var.compartment_ocid
    name                = var.bucket_name     
    namespace           = data.oci_objectstorage_namespace.export_namespace.namespace
    access_type         = var.bucket_access_type
    defined_tags        = var.definedTags
    freeform_tags       = var.freeformTags
    storage_tier        = var.bucket_storage_tier
    versioning          = var.bucket_versioning
    object_events_enabled = var.object_event_enabled
    auto_tiering          = var.auto_tiering
    }
