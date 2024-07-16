locals {
  template_url = var.bootstrap_version == null ? "${var.bucket_url}/bootstrap.yml" : "${var.bucket_url}/bootstrap-${var.bootstrap_version}.yaml"
}

variable "bootstrap_version" {
  type        = string
  description = "Version of the bootstrap file. Do not set for the latest version."
  default     = null
}

variable "template_url" {
  type        = string
  default     = "https://centergauge.s3.amazonaws.com/bootstrap.yaml"
  description = "CloudFormation template url for bootstrapping CenterGauge"
}

variable "enable_self_update" {
  type    = string
  default = "true"
}
variable "external_id" {
  type    = string
  default = ""
}
variable "regions" {
  type    = string
  default = "us-east-2, us-east-1"
}
