variable "template_url" {
  type        = string
  default     = "https://centergauge.s3.amazonaws.com/bootstrap.yaml"
  description = "CloudFormation template url for bootstrapping CenterGauge"
}
variable "EnableSelfUpdate" {
  type = string
  default = "true"
}
variable "external_id" {
  type = string
  default = "SGbehgp5-lk4T5wYpjtaE3Q1V9Pu_pAbpuek480guE0"
}
variable "regions" {
  type = string
  default = "us-east-2, us-east-1"
}
