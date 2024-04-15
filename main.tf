terraform {
  cloud {
    organization = "rio-hashicorp"
    workspaces {
      name = "terraform-6"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
version = "~> 4.16"
    }
  }
required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region

}

resource "aws_instance" "server1" {
  ami           = "ami-0395649fbe870727e"
  instance_type = "t2.micro"
}
