
// Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.   

variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" { 
    type  = map  
    default = {     
     definedTags = {}      
     freeformTags = {} 
     }
 }

 variable "bucket_name" {
 type = string  
 description = "Choose Object Storage Bucket name"
 default = "dd_bucket"
 }
 variable "bucket_storage_tier" {
  type = string
  description = "Choose Object Storage-Tier"
	default = "Standard"
	}
 variable "bucket_access_type" {
  type = string
  description = "NoPublicAccess- is enabled by default, in which only private access is allowed, that is, allows an authenticated caller to access the bucket and its contents. When ObjectRead- is enabled on the bucket, public access is allowed for the GetObject, HeadObject, and ListObjects operations. When ObjectReadWithoutList- is enabled on the bucket, public access is allowed for the GetObject and HeadObject operations."
	default = "NoPublicAccess"

	}
  variable "bucket_versioning" {
  type = string
  description = "Choose enabling Storage Bucket Version"  
	default = "Enabled"
          
	}
  variable "auto_tiering" {
  type = string
  description = "Choose Storage Bucket Auto-Tiering Type"  
  default = "InfrequentAccess"
           
   }
variable "object_event_enabled" {
  type = bool
  description = "Specify whether to enable object event, if unchecked no object event created"
  default = "false"
   }
