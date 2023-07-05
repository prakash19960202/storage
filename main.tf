resource "null_resource" "default" {

 triggers = {

   file_hashes = jsonencode({

   for fn in fileset(var.folder_path, "**") :

   fn => filesha256("${var.folder_path}/${fn}")

   })

 }

 provisioner "local-exec" {

   command = "gsutil cp -r ${var.folder_path}/* gs://${var.gcs_bucket}/"

 }

}
