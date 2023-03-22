provider "aws" {
    region = "us-west-1"
}

resource "aws-vpc" "actions {
    cidr_block = 10.0.0.0/16
    
    tags = {
        Name = "Class30"
    }
}