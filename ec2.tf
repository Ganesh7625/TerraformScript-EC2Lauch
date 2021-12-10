terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.69.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_instance" "Demo" {
  ami = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Instance"
  }
}