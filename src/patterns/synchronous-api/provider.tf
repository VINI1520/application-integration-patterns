terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.3.0"
    }
  }

  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-gama-appid00002"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"

    # For State Locking
    dynamodb_table = "terraform-dev-state-table"    
   
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}