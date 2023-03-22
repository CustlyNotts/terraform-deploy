terraform {
  backend "s3" {
    bucket         = "terraform-backend-kehinde-aturuka"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-backend-kehinde-aturuka-lock"
  }
}
