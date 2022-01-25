variable "gitlab_token" {
  description = "gitlab token"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "project_description" {
  description = "Project description"
  type        = string
}

variable "project_topics" {
  description = "Project topics"
  type        = list(string)
  default     = []
}
