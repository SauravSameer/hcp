provider "aws" {
    region = "ap-south-1"
  }
  resource "aws_instance" "one" {
   count = 4
    ami = "ami-00af95fa354fdb788"
    key name= "terakey"
    vpc_security_group_ids= ["sg-0c7ad9e34378a3399"]
    instance_type = "t3.micro"
    tags = {
      Name = var.instance_names[count.index]
    }
    }
variable "instance_names" {
    default = ["jenkins", "tomcat-1", "tomcat-2", "monitoring server"]
}
