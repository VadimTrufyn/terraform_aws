module "s3_uploader_role" {
    source = "git::https://github.com/VadimTrufyn/terraform_aws.git//infra/modules/oidc_roles?ref=5b98f35"
    region = var.region
    github_role_name = "Role1"
    allow_all_branches = true
    github_org = var.github_org
    repository_name = var.repository_name
    policy_name = "${var.repository_name}-policy"
    policy_statement = var.policy_statement
    environment = var.environment
}