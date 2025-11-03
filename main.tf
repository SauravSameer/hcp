provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  count = 4
  ami = "ami-02d26659fd82cf299"
  key_name = "terakey"
  vpc_security_group_ids = ["sg-0a1129df58ee0267e"]
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
  default = ["jenkins", "tomcat-1", "tomcat-2", "monitoring-server"]
}
