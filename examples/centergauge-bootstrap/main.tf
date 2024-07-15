module "centergauge_bootstrap" {
  source = "terraform-aws-centergauge-bootstrap"

  template_url    = "https://centergauge.s3.amazonaws.com/bootstrap.yaml"
  EnableSelfUpdate = "true"
  external_id     = ""  # This will be provided by TrueMark
  regions         = "us-east-2, us-east-1"
}

output "stack_id" {
  description = "The unique identifier of the CloudFormation stack."
  value       = module.centergauge_bootstrap.stack_id
}

output "stack_arn" {
  description = "The ARN of the CloudFormation stack."
  value       = module.centergauge_bootstrap.stack_arn
}
