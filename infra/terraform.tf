terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.50"
    }
  }

  backend "s3" {
    bucket = "fargate-rails-api-infra-remote-backend-bucket"
    key    = "dev/terraform.tfstate"
    region = "ap-northeast-1"
  }

  required_version = ">= 1.15.5"
}
