terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"           # AWS Provider version, not terraform
    }
  }

   backend "s3" {
    bucket = "gokul-terraform-bucket-remotestate"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "gokul-terraform-locking"
  }
}

         
provider "aws" {        # Configure the AWS Provider
  region = "us-east-1"
}