locals {
  # Standard tag definitions
  mandatory_tags = {
    Environment     = var.environment
    Service         = var.repository_name
    Project         = var.github_org
    ManagedBy       = "terraform"
    DeployTimestamp = timestamp()
    DeployTool      = "terraform-${var.environment}"
  }

  # Function to merge mandatory tags with additional resource-specific tags
  get_tags = { for key, value in local.mandatory_tags : key => value if value != "" }
}