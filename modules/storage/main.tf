resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.location
  force_destroy = true
}

resource "google_storage_bucket" "backup_storage" {
  name          = "backup-storage-${var.project_id}-${var.environment}"
  location      = "US"
  force_destroy = true # Good for demos so you can delete it easily later
}
resource "google_storage_bucket" "archive_storage" {
  name          = "archive-storage-${var.project_id}-${var.environment}"
  location      = "US"
  storage_class = "ARCHIVE" # This shows you know GCP storage classes!
  force_destroy = true
}


