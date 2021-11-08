provider "aws" {
  region  = var.region
  profile = var.profile
}

module "eks-jx" {
  source               = "https://github.com/jenkins-x/terraform-aws-eks-jx/archive/refs/tags/v1.17.3.zip"
  // version              = "1.15.47"
  cluster_version      = var.cluster_version
  region               = var.region
  vault_user           = var.vault_user
  is_jx2               = false
  jx_git_url           = var.jx_git_url
  jx_bot_username      = var.jx_bot_username
  jx_bot_token         = var.jx_bot_token
  force_destroy        = var.force_destroy
  nginx_chart_version  = var.nginx_chart_version
  install_kuberhealthy = var.install_kuberhealthy
}
