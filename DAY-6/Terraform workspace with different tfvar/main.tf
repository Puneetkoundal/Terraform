provider "aws" {
    region = "ap-south-1"
}

variable "ami_id" {
    description = "ami for the instance"
}

variable "instance_type" {
    description = "instance type for the instance" 
}

variable "instance_name" {
    description = "name for the instance"
}

module "ec2_creation" {
    source = "./modules/ec2_instance"
    ami_id = var.ami_id
    instance_type = var.instance_type
    instance_name = var.instance_name
}