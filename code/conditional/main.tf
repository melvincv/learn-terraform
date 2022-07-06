provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

variable "isdev" {}

resource "aws_instance" "dev" {
   ami = "ami-0022f774911c1d690"
   instance_type = "t2.micro"
   count = var.isdev == true ? 1 : 0
}

resource "aws_instance" "prod" {
   ami = "ami-0022f774911c1d690"
   instance_type = "t2.large"
   count = var.isdev == false ? 1 : 0
}
