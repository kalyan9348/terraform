terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" # AWS provider version not terraform
      version = "5.31.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
#NOTE: By this provider file terraform will use the aws cli and fetch the access information.
