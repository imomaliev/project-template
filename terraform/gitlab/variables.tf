variable "project_name" {
  description = "Project name"
  type        = string
}

variable "project_description" {
  description = "Project description"
  type        = string
}

variable "project_license" {
  description = "Project license"
  type        = string
  default     = "MIT"
}

variable "project_tags" {
  description = "Project tags"
  type        = list(string)
  default     = []
}

variable "gitlab_token" {
  description = "gitlab token"
  type        = string
}
