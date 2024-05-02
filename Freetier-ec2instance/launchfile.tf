# this terraform file for launching EC2 instance same as main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a EC2 server
resource "aws_instance" "app_server" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  key_name      = "key"
  security_groups = ["launch-wizard-1"]

  tags = {
    Name = "Terraform_Demo"
  }
}
