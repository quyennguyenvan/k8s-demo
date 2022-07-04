terraform {
  required_version = ">= 0.12.0"
}

resource "aws_key_pair" "bastion_key" {
  key_name   = "bastion-key"
  public_key = var.ec2-key-public-key
}
module "eks" {
  source              = "./_modules"
  aws-region          = var.aws-region
  availability-zones  = var.availability-zones
  cluster-name        = var.cluster-name
  k8s-version         = var.k8s-version
  node-instance-type  = var.node-instance-type
  desired-capacity    = var.desired-capacity
  max-size            = var.max-size
  min-size            = var.min-size
  vpc-subnet-cidr     = var.vpc-subnet-cidr
  private-subnet-cidr = var.private-subnet-cidr
  public-subnet-cidr  = var.public-subnet-cidr
  db-subnet-cidr      = var.db-subnet-cidr
  eks-cw-logging      = var.eks-cw-logging
  worker-ami          = var.worker-ami
  bastion-ami         = var.bastion-ami
  default_tags        = var.default_tags
  key-pem             = aws_key_pair.bastion_key.key_name
  ipsshAllowed        = var.ipsshAllowed
}
