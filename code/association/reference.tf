provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}



resource "aws_instance" "myec2" {
   ami = "ami-0022f774911c1d690"
   instance_type = "t2.micro"
   key_name = "CP_NVIRGINIA"
}

resource "aws_eip" "lb" {
  vpc      = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}


resource "aws_security_group" "allow_tls" {
  name        = "my-security-group"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]

  }
}
