terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0fa1de1d60de6a97e"
  instance_type = "t2.micro"

  tags = {
    Name = "MyServerInstance"
  }
}
