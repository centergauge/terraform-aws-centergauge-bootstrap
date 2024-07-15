module "centergauge_bootstrap" {
  source = "terraform-aws-centergauge-bootstrap"

  bootstrap_version = "1.2.23"  # Specify the version of the bootstrap file you want to use. Use "latest" for the latest version.
  EnableSelfUpdate  = "true"
  external_id       = ""  # This should be provided by the user
  regions           = "us-east-2, us-east-1"
}

output "stack_id" {
  description = "The unique identifier of the CloudFormation stack."
  value       = module.centergauge_bootstrap.stack_id
}

output "stack_arn" {
  description = "The ARN of the CloudFormation stack."
  value       = module.centergauge_bootstrap.stack_arn
}
