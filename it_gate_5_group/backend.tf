terraform {
  backend "s3" {
    bucket         = "gate-group5"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "gate-group5"
  }
}
