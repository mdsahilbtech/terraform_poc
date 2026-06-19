# backend.tf
terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "your-terraform-state-bucket" # Replace with your pre-existing bucket
    key            = "poc-25/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "your-terraform-lock-table"  # Replace with your pre-existing DynamoDB table
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}