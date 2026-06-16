provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_ecr_repository" "foo" {
  name                 = "rails-api"
  image_tag_mutability = "MUTABLE" // タグの上書き許可
  force_delete         = true      // リポジトリ内にイメージが残っていても削除

  image_scanning_configuration {
    scan_on_push = true
  }
}
