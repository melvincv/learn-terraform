provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_eip" "lb" {
  vpc = true
}

output "elastic-ip" {
  value = aws_eip.lb.public_ip
}

resource "aws_s3_bucket" "mys3" {
  bucket = "kplabs-attribute-demo-001"
}

output "my-s3-bucket" {
  value = aws_s3_bucket.mys3.bucket_domain_name
}
