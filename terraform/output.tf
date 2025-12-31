# Output GCS Bucket name
# Output Project ID（Terraform provider project variable）
output "project_id" {
  description = "The GCP Project ID"
  value       = var.project
}

# 输出 Project Location（你在变量里设置的 location）
output "project_location" {
  description = "The Project Location used for resources"
  value       = var.location
}

output "gcs_bucket_name" {
  description = "The name of the GCS bucket for college scoring data"
  value       = google_storage_bucket.college_score.name
}

# Output GCS Bucket URL
output "gcs_bucket_url" {
  description = "The URL of the GCS bucket"
  value       = google_storage_bucket.college_score.url
}

# Output BigQuery Dataset ID
output "bq_dataset_id" {
  description = "The ID of the BigQuery dataset for college scoring data"
  value       = google_bigquery_dataset.college_score_data.dataset_id
}

# Output GCS Bucket Region
output "gcs_bucket_region" {
  description = "Region of the GCS bucket"
  value       = google_storage_bucket.college_score.location
}

# Output BigQuery Dataset location
output "bq_dataset_location" {
  description = "The location/region of the BigQuery dataset"
  value       = google_bigquery_dataset.college_score_data.location
}

