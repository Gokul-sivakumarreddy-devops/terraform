terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"           # AWS Provider version, not terraform
    }
  }
}

         
provider "aws" {        # Configure the AWS Provider
  region = "us-east-1"
}