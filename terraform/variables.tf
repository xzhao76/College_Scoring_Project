variable "credentials" {
  description = "Google cloud credentials json file"
  default     = "college_scoring_terra_service_acct.json"
}


variable "region" {
  description = "Google Cloud Storage Region"
  default     = "us-west2"
}

variable "project" {
  description = "Project ID"
  default     = "xzde-20240114"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "Big Query dataset name"
  default     = "college_score_dataset"
}

variable "gcs_bucket_name" {
  description = "GCS Bucket name"
  default     = "college_score_data_bucket_101925"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}