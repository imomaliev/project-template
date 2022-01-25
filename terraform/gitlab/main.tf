provider "gitlab" {
  token = var.gitlab_token
}

# https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project
resource "gitlab_project" "project" {
  name                                             = var.project_name
  description                                      = var.project_description
  tags                                             = var.project_tags
  issues_enabled                                   = true
  merge_requests_enabled                           = true
  pipelines_enabled                                = true
  wiki_enabled                                     = false
  snippets_enabled                                 = false
  container_registry_enabled                       = true
  lfs_enabled                                      = false
  packages_enabled                                 = false
  only_allow_merge_if_all_discussions_are_resolved = true
  only_allow_merge_if_pipeline_succeeds            = true
  request_access_enabled                           = false
  pages_access_level                               = "disabled"
  remove_source_branch_after_merge                 = true
  # REFACTORME: https://github.com/gitlabhq/terraform-provider-gitlab/issues/351
  # TODO: add a way to setup
  #   - forking_access_level = "disabled"
  #   - analytics_access_level = "disabled"
  #   - operations_access_level = "disabled"
  #   - security_and_compliance_access_level = "disabled"
}
