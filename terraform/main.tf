/*
  Terraform configuration for the College Score data pipeline.

  This file defines:
  - Required provider and version constraints
  - Google Cloud provider configuration
  - Core data storage resources (GCS + BigQuery)

  These resources serve as the foundation for the data lake
  and analytics layer used by downstream orchestration and transformation tools.
*/
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.7.0"
    }
  }
}

# Configure Google Cloud provider
# Credentials are loaded from a service account key file
# Project and region are injected via variables for environment flexibility

provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

# ---------------------------------------------------------
# Google Cloud Storage bucket
# Acts as the raw data lake for the pipeline
# Stores unprocessed or lightly processed source data
# ---------------------------------------------------------

resource "google_storage_bucket" "college_score" {
  name          = var.gcs_bucket_name
  location      = var.location
  force_destroy = true
}
# Create Big Query Database
resource "google_bigquery_dataset" "college_score_data" {
  dataset_id = var.bq_dataset_name
  location   = var.location
}
