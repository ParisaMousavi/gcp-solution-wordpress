terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.61.0"
    }
  }
  backend "gcs" {
    bucket = "parisaiacweudummy"
    prefix = "gcp-solution-wordpress/weu4"
  }
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

# install gcloud cli : https://cloud.google.com/sdk/docs/install