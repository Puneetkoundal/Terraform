provider "aws" {
   region = "ap-south-1"
}

resource "aws_instance" "demoserver" {
  ami = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"

  tags = {
    Name = "Sampleserver1"
  }
}