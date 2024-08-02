provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "main_bucket"{
  bucket = "S3-name-should-be-unique"
  acl = "private"

  tags = {
    ENV = "dev"
  }
}
