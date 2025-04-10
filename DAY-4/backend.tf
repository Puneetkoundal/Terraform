terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "puneet/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}