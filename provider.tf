terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.64"
    }
  }
}

# Configure provider
provider "aws" {
  region  = "us-east-1"
  profile="default"
}