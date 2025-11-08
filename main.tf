provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformbuckettodaysunn" {
  bucket = "terraformbuckettodaysunn"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformbuckettodaysunn"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}