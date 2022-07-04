terraform {
  backend "s3" {
    bucket = "tf-artifact-quyennv"
    key    = "tf/demo-k8s/state.tfstate"
    region = "ap-southeast-1"
  }
}
