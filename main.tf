variable "files" {
  type = map(string)
  default = {
    # sourcefile = destfile
    "folder/file1" = "C:/test/AdventureWorks2017.bak"
  }
}
resource "google_storage_bucket_object" "my-config-objects" {
  for_each = var.files
  name     = each.value
  source   = "${path.module}/${each.key}"
  bucket   = "sqlservermedia"
}
