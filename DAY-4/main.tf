provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "demoInstance" {
    ami = "ami-0e35ddab05955cf57"
    instance_type = "t2.micro"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "backend-demo-bucket"
}

resource "aws_dynamodb_table" "terraform-lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "s"
    }
}