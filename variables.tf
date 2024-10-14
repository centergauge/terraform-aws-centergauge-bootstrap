locals {
  template_url = var.bootstrap_version == null ? "${var.bucket_url}/bootstrap.yaml" : "${var.bucket_url}/bootstrap-${var.bootstrap_version}.yaml"
}

variable "bootstrap_version" {
  type        = string
  description = "Version of the bootstrap file. Do not set for the latest version."
  default     = null
}

variable "bucket_url" {
  type        = string
  default     = "https://centergauge.s3.amazonaws.com"
  description = "URL to the S3 bucket holding the CloudFormation templates"
}

variable "enable_self_update" {
  type        = string
  default     = "true"
  description = "Grants permissions to allow CenterGauge to update the CenterGauge CloudFormation templates as new updates are available"
}

variable "external_id" {
  type        = string
  description = "Your external identifier for CenterGauge"
}

variable "regions" {
  type        = string
  description = "The regions you want to deploy into"
}

variable "vigil_edition" {
  type        = string
  description = "Vigil Edition to Deploy. Allowed Values are Lite or Pro"
  default     = "Lite"
}
