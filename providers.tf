provider "google" {

 version = "~> 2.14"

 project     = var.project

 region      = var.region

 zone        = var.zone

 credentials = "creds.json"

}

provider "google-beta" {

 version = "~> 2.14"

 project     = var.project

 region      = var.region

 zone        = var.zone

 credentials = "creds.json"

}

provider "null" {

 version = "~> 2.1"

}
