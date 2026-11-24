terraform {
  backend "s3" {
    bucket         = "company-terraform-state"
    key            = "env/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}