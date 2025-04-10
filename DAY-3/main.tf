provider "aws" {
    region = "ap-south-1"
}

module "ec2-instance" {
    source = "./modules/ec2-resource"
    ami_id = "enter_ami_id"
    instance_type_value = "enter_intance_type"
    instance_name = "name_of_the_instance"
}