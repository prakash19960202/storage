provider "google" {

 version = "~> 2.14"

 project     = var.project

 region      = var.region

 zone        = var.zone

 credentials = "creds.json"

}
