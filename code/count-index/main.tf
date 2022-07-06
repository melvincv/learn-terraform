provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

variable "elb_names" {
  type = list
  default = ["dev-alb", "stage-alb", "prod-alb"]
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}