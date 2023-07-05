resource "google_storage_bucket" "COLDLINE" {
 name = "sqlservermedia"
 storage_class= "COLDLINE"
 location = "us-central1"
}

resource "google_storage_bucket_object" "bak" {
 name = "AdventureWorks2017.bak"
 storage_class = "COLDLINE"
 bucket = "${google_storage_bucket.COLDLINE.name}"
}
