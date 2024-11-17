variable "region" {
  type        = string
  description = "AWS region"
}

variable "github_role_name" {
  type        = string
  description = "Role name for git worflows"
}

variable "allow_all_branches" {
  type        = bool
  description = "allow all braches assume role"
}

variable "branches" {
  type        = list(string)
  description = "list of branches to allow, ignore if allow all branches = true"
  default     = []
}

variable "github_org" {
  type        = string
  description = "github org"
}

variable "repository_name" {
  type        = string
  description = "repository name"
}

variable "policy_name" {
  type        = string
  description = "Policy name"
}

variable "policy_statement" {
  type = list(object({
    action   = list(string)
    effect   = string
    resource = list(string)
  }))
  description = "Policy statement"
}
