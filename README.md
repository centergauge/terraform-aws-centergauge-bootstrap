# CenterGauge Bootstrap Terraform Module

## Introduction

This Terraform module provisions an AWS CloudFormation stack named `CenterGauge` for bootstrapping resources. It is designed to be reusable and easily integrated into larger Terraform configurations.

## Prerequisites

- Terraform v1.0 or newer
- AWS Provider version 4.48.0 or newer
- An AWS account and configured AWS CLI

## Usage

To use this module in your Terraform configuration, add the following:

```terraform
module "centergauge_bootstrap" {
  source = "path/to/centergauge_bootstrap"

  template_url    = "https://centergauge.s3.amazonaws.com/bootstrap.yaml"
  EnableSelfUpdate = "true"
  external_id     = ""
  regions         = "us-east-2, us-east-1"
}
