provider "aws" {
  version    = "~> 3.15.0"
  region     = "ap-southeast-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

provider "http" {}
