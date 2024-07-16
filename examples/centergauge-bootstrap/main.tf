terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "centergauge_bootstrap" {
  source = "../../"

#   bootstrap_version = "1.2.23"  # Specify the version of the bootstrap file you want to use. Use "latest" for the latest version.
  EnableSelfUpdate  = "true"
  external_id       = ""
  regions           = "us-east-2"
}

output "stack_id" {
  description = "The unique identifier of the CloudFormation stack."
  value       = module.centergauge_bootstrap
}

output "stack_arn" {
  description = "The ARN of the CloudFormation stack."
  value       = module.centergauge_bootstrap
}
