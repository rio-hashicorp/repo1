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
    }
  }
}

provider "aws" {
  region = "us-west-2"

}

resource "aws_instance" "server1" {
  ami           = "ami-0395649fbe870727e"
  instance_type = "t2.micro"
}
