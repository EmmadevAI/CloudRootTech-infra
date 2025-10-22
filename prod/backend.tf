terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "prod/terraform.state"
    bucket         = "cloudtechroot-terraform-backend-bucket"
    region         = "us-east-2"
    dynamodb_table = "cloudtechroot-terraform-state-locking"
  }
}
