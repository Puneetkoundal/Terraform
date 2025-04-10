provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "mydemoinstance" {
    ami = var.ami_id
    instance_type = var.instance_type

    tags = {
      Name = var.instance_name
    }
}