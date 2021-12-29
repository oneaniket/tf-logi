terraform {
  backend "s3" {
    bucket = "docusign-tableau-terraform-deployment"
    key    = "terraform-dev.tfstate"
    region = "us-west-2"
  }
}
