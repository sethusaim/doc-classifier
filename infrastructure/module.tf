terraform {
  backend "s3" {
    bucket = "doc-terraform-state"
    key    = "tf-state"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "doc_artifacts" {
  source = "./doc_artifacts"
}

module "doc_io_files" {
  source = "./doc_io_files"
}