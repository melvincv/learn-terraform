terraform {
  backend "remote" {
    organization = "cloudpixels"
    workspaces {
      name = "learn-terraform"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "cloudpixels"
  region  = "ap-southeast-1"
}

resource "aws_instance" "appserver" {
  ami             = "ami-00bd7cc070262f111"
  instance_type   = "t2.micro"
  key_name = "tutorial-key"

  tags = {
    Name = var.instance_name
  }
}
