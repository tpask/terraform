#Example tf resouce to use for state
terraform {
  required_version = ">= 0.12, < 0.13"
  backend "s3" {
    bucket         = "xxxx-tf-states"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
