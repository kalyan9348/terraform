terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }
}

provider "aws" {
  region = "us-east-1"
#HERE WE CAN GIVE DIRECTLY ACCESS KEY   SECRET KEY BUT NOT RECOMMENDED
  #AFTER CREATING AWS CLI TERRAFORM WILL FIRST CONNECT TO PROVIDER.TF DATA FROM THERE IT WILL CONNECT TO AWS CLI AND WILL FETCH THE INFORMATION
}
#NOTE: By this provider file terraform will use the aws cli and fetch the access information.
