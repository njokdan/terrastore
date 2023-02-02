provider "azuredevops" {
  version = "1.0.0"
  organization_url = var.organization_url
}

locals {
  build_variables = {
    "System.Debug" = "false"
  }
}

module "application1_pipeline" {
  source = "https://github.com/njokdan/terrapipeline/blob/main/build_and_deploy_pipeline.yml"

  pipeline_name = "Application1BuildAndDeploy"
  project_id    = var.project_id
  repo_name     = var.application1_repo
  branch        = var.branch
  build_variables = local.build_variables
}

module "application2_pipeline" {
  source = "https://github.com/njokdan/terrapipeline/blob/main/build_and_deploy_pipeline.yml"

  pipeline_name = "Application2BuildAndDeploy"
  project_id    = var.project_id
  repo_name     = var.application2_repo
  branch        = var.branch
  build_variables = local.build_variables
}

module "application3_pipeline" {
  source = "https://github.com/njokdan/terrapipeline/blob/main/build_and_deploy_pipeline.yml"

  pipeline_name = "Application3BuildAndDeploy"
  project_id    = var.project_id
  repo_name     = var.application3_repo
  branch        = var.branch
  build_variables = local.build_variables
}

module "application4_pipeline" {
  source = "https://github.com/njokdan/terrapipeline/blob/main/build_and_deploy_pipeline.yml"

  pipeline_name = "Application4BuildAndDeploy"
  project_id    = var.project_id
  repo_name     = var.application4_repo
  branch        = var.branch
  build_variables = local.build_variables
}
