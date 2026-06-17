output "alb_dns_name" {
  value       = aws_lb.main.dns_name
  description = "ALBのDNS名。ブラウザやcurlでアクセスする際に使う。"
}

output "github_actions_role_arn" {
  value       = aws_iam_role.github_actions.arn
  description = "GitHub ActionsのOIDC認証用IAMロールARN"
}
