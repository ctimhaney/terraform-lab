terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0d97ef13c06b05a19"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
