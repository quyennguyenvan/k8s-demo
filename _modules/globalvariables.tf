variable "cluster-name" {}

variable "aws-region" {}

variable "eks-cw-logging" {}

variable "k8s-version" {}

variable "availability-zones" {}

variable "vpc-subnet-cidr" {}

variable "private-subnet-cidr" {}

variable "public-subnet-cidr" {}

variable "db-subnet-cidr" {}

variable "node-instance-type" {}

variable "desired-capacity" {}

variable "max-size" {}

variable "min-size" {}

variable "bastion-ami" {}

variable "worker-ami" {}

variable "default_tags" {}

variable "key-pem" {}

variable "ipsshAllowed" {

}
