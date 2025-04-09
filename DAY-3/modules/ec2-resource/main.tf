provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "demoinstance" {
    ami = var.ami_id
    instance_type = var.instance_type_value

    tags = {
        Name = var.instance_name
    }
}