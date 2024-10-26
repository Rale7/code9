provider "aws" {
  region  = "us-east-1"
  alias   = "us-east-1"
}

terraform {
  required_version = "~> 1.9.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.73.0"
    }
  }
  backend "s3" {
    bucket = "runtothehils-state-uncommon-emu"
    key    = "terraform/wordpress"
    region = "us-east-1"
  }
}