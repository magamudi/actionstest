provider "aws" {
    region = "us-west-1"
}

resource "aws_vpc" "actions" {
    cidr_block = "10.0.0.0/16"
    
tags = {
    Name = "Class30"
    }
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "terraform-state-magnus"
    key    = "prod/terraform.tfstate"
    region = "us-east-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

