provider "aws" {
    region = "ap-south-1"
  }
  resource "aws_instance" "naaaam" {
    ami = "ami-0f9708d1cd2cfee41"
    instance_type = "t3.micro"
    tags = {
      Name = "devops"
    }
    }
