variable "bq_dataset_name" {
  description = "My BigQuery dataset name"
  default     = "terraform_demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage bucket name"
  default     = "terraform-demo-bucket-winged-amp-485617-a3"
}

variable "gcp_storage_class" {
  description = "Bucket storage class"
  default     = "STANDARD"
}