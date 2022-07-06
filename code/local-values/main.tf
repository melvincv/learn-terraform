provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

locals {
  common_tags = {
    Owner = "DevOps Team"
    service = "backend"
  }
}

resource "aws_instance" "app-dev" {
   ami = "ami-0022f774911c1d690"
   instance_type = "t2.micro"
   tags = local.common_tags
}

resource "aws_instance" "db-dev" {
   ami = "ami-0022f774911c1d690"
   instance_type = "t2.micro"
   tags = local.common_tags
}

resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "us-east-1a"
  size              = 8
  tags = local.common_tags
}