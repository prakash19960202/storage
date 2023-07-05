variable "project" {

  type        = string

  description = "The project indicates the default GCP project all of your resources will be created in."

}

variable "region" {

  type        = string

  description = "The region will be used to choose the default location for regional resources. Regional resources are spread across several zones."

}

variable "zone" {

  type        = string

  description = "The zone will be used to choose the default location for zonal resources. Zonal resources exist in a single zone. All zones are a part of a region."

}

variable "folder_path" {

 type        = string

 description = "Path to your folder"

}

variable "gcs_bucket" {

 type        = string

 description = "Your GCS bucket"

}
