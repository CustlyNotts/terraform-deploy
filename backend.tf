terraform {
  backend "s3" {
    bucket         = "terraform-backend-kehinde-aturuka-1212"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-backend-kehinde-aturuka-1212"
  }
}
