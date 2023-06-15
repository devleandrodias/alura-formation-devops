terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = var.instance_type
  key_name      = var.ssh_key_name

  tags = {
    Name = "TerraformAnsiblePython"
  }
}

resource "aws_key_pair" "key_ssh" {
  key_name = var.ssh_key_name
  public_key = file("${var.ssh_key_name}.pub")
}