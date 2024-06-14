terraform {
  required_version = ">= 1.7"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "samplebucket" {
  bucket = var.bucket-name
  tags = {
    Name        = var.bucket-name
    Environment = var.environment
  }
}

