variable "region" {
  type = string
  description = "AWS region"
}

variable "github_org" {
  type = string
  description = "Git hub org name or username"
}

variable "repository_name" {
  type = string
  description = "Repository name"
}

variable "policy_statement" {
  type = list(object({
    action   = list(string)
    effect   = string
    resource = list(string)
  }))
  description = "Policy statement"
}

variable "environment" {
  type = string
  description = "Environment name"
}