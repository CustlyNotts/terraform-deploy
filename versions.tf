terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.76.1"
    }
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
  alias  = "region-master"
  access_key = "AKIATELYXRMPAUHGIYM5"
   secret_key = "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"
}
