provider "aws" {
    region = "ap-south-1"
}

variable "ami_id" {
    description = "ami id for the instance"
}

variable "instance_type" {
    description = "type for the instance"
    type = map(string)

    default = {
      "dev" = "t2.micro"
      "stage" = "t2.medium"
      "prod" = "t2.xlarge"
    }
}

variable "instance_name" {
    description = "name for the instance"
    type = map(string)

    default = {
      "dev" = "mydevinstance"
      "stage" = "mystageinstance"
      "prod" = "myprodinstance"
    }
}

module "ec2instance" {
    source = "./modules/ec2instance"
    ami_id = var.ami_id
    instance_type = lookup(var.instance_type, terraform.workspace)
    instance_name = lookup(var.instance_name, terraform.workspace)
}