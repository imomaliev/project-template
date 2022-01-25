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

variable "project_topics" {
  description = "Project topics"
  type        = list(string)
  default     = []
}

variable "github_token" {
  description = "Github token"
  type        = string
}
