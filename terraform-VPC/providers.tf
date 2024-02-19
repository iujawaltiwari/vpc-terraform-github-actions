terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.37.0"
    }
  }
  backend "s3" {
    bucket = "mybucketbackent"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
 }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}
