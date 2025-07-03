terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "5.95.0"
        }
    }
    backend "s3" {
      bucket = "mydaws-remote-state12"
      key  = "expense-cicd-jenkins"
      region = "us-east-1"
      dynamodb_table = "mydaws-locking"
    }
}

provider "aws" {
    region = "us-east-1"
}