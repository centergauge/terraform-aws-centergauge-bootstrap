data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

resource "aws_cloudformation_stack" "centergauge_bootstrap" {
  name         = "CenterGauge"
  template_url = local.template_url

  parameters = {
    EnableSelfUpdate = var.enable_self_update
    ExternalId       = var.external_id
    Regions          = var.regions
    VigilEdition     = var.vigil_edition
  }
  capabilities = [
    "CAPABILITY_IAM",
    "CAPABILITY_NAMED_IAM"
  ]
}
