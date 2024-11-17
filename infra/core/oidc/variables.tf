variable "region" {
  type        = string
  description = "AWS region"
}

variable "thumbprint_list" {
  type        = list(string)
  description = "GitHub thumbprint list"
}

variable "tags" {
  type        = map(string)
  description = "AWS resources tags"
}
