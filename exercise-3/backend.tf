terraform {
  backend "s3" {
    bucket = "1terraform"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
