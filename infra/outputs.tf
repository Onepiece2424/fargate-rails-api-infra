output "alb_dns_name" {
  value       = aws_lb.main.dns_name
  description = "ALBのDNS名。ブラウザやcurlでアクセスする際に使う。"
}
