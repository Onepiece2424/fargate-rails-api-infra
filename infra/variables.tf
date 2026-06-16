variable "aws_region" {
  default = "ap-northeast-1"
}

variable "project_name" {
  default = "fargate-rails-api"
}

variable "ecr_image_uri" {
  description = "ECRのイメージURI（例: 123456789.dkr.ecr.ap-northeast-1.amazonaws.com/fargate-rails-api:latest）"
}
