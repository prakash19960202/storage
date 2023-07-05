resource "google_storage_bucket" "static" {
 name          = "testsdfsjkdfnsk"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

# Upload a text file as an object
# to the storage bucket

resource "google_storage_bucket_object" "default" {
 name         = "AdventureWorks2017.bak"
 source       = "C:/test"
 content_type = "text/plain"
 bucket       = google_storage_bucket.static.id
}
