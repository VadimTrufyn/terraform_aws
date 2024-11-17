## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.9.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3_uploader_role"></a> [s3\_uploader\_role](#module\_s3\_uploader\_role) | git::https://github.com/VadimTrufyn/terraform_aws.git//infra/modules/oidc_roles | 5b98f35 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `string` | n/a | yes |
| <a name="input_github_org"></a> [github\_org](#input\_github\_org) | Git hub org name or username | `string` | n/a | yes |
| <a name="input_policy_statement"></a> [policy\_statement](#input\_policy\_statement) | Policy statement | <pre>list(object({<br/>    action   = list(string)<br/>    effect   = string<br/>    resource = list(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | n/a | yes |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | Repository name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | n/a |
