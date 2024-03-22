provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "jeevihema123987"
  acl    = "private"

}


resource "aws_security_group" "example" {
  name        = "hemasinstance"
  description = "Example security group for EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "example" {
  ami           = "ami-080e1f13689e07408"  
  instance_type = "t2.micro"
  security_groups = ["hemaskeyy"] 

}
