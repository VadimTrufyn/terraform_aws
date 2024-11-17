# IAM role
resource "aws_iam_role" "github_role" {
  name = var.github_role_name

  assume_role_policy = var.allow_all_branches ? (
    templatefile("${path.module}/templates/trust_policy_all_branches.json", {
      oidc_provider_arn = data.aws_iam_openid_connect_provider.github.arn,
      github_org        = var.github_org,
      repository_name   = var.repository_name
    })
    ) : (
    templatefile("${path.module}/templates/trust_policy_specific_branches.json", {
      oidc_provider_arn = data.aws_iam_openid_connect_provider.github.arn,
      github_org        = var.github_org,
      repository_name   = var.repository_name,
      branches = join(",", [
        for branch in var.branches :
        "repo:${var.github_org}/${var.repository_name}:ref:refs/heads/${branch}"
      ])
    })
  )
  #TODO tags
}

resource "aws_iam_policy" "github_policy" {
  name = var.policy_name
  #TODO ADD VAR HERE
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      for stmt in var.policy_statement : {
        Effect   = stmt.effect
        Action   = stmt.action
        Resource = stmt.resource
      }
    ]
  })
  #TODO tags
}

resource "aws_iam_role_policy_attachment" "attachment" {
  role       = aws_iam_role.github_role.name
  policy_arn = aws_iam_policy.github_policy.arn
  #TODO tags
}