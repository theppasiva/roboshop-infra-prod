terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
    }
  }

  backend "s3" {
    bucket = "shivaram-practice-state-prod"
    key    = "VPN"
    region = "us-east-1"
    dynamodb_table = "shivaram-practice-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}