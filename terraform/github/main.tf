provider "github" {
  token = var.github_token
}

# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
resource "github_repository" "project" {
  name                   = var.project_name
  description            = var.project_description
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = true
  delete_branch_on_merge = true
  license_template       = var.project_license
  topics                 = var.project_topics
  vulnerability_alerts   = true
  # TODO: add a way to setup https://docs.github.com/en/rest/reference/repos#enable-automated-security-fixes
}
