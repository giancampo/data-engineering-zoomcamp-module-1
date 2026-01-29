terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.16.0"
    }
  }
}

provider "google" {
  credentials = file("/workspaces/data-engineering-zoomcamp-module-1/terraform/credentials.json")
  project     = "winged-amp-485617-a3"
  region      = "europe-west8"
}

resource "google_storage_bucket" "terraform_bucket" {
  name          = "terraform-demo-bucket-winged-amp-485617-a3"
  location      = "EUROPE-WEST8"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "terraform_dataset" {
  dataset_id = "terraform_demo_dataset"
  location   = "EUROPE-WEST8"

}