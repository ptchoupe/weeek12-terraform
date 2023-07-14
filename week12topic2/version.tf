terraform {
  backend "s3" {
    bucket         = "judith-terraform-state"
    key            = "jenkins/jemkins.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}