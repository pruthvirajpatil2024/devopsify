provider "google" {
  credentials = file(var.gcp_credentials)
  project     = "stalwart-fx-456910-c0"
  region      = "us-central1"
}

resource "google_storage_bucket" "my-bucket" {
  name                     = "tt-githubdemo-bucket-001"
  project                  = "stalwart-fx-456910-c0"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}
#
resource "google_storage_bucket" "my-bucket2" {
  name                     = "tt-githubdemo-bucket-002"
  project                  = "stalwart-fx-456910-c0"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}
#
### dummy
