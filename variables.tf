#configuration variable for automation deployment with CICD tool
variable "access_key" {
  description = "The access_key that belongs to the IAM user"
  type        = string
}
variable "secret_key" {
  description = "The secret_key that belongs to the IAM user"
  type        = string
}

# Variables Configuration
variable "cluster-name" {
  default     = "demo-eks-kms-cluster"
  type        = string
  description = "The name of your EKS Cluster"
}

variable "aws-region" {
  default     = "ap-southeast-1"
  type        = string
  description = "The AWS Region to deploy EKS"
}

variable "availability-zones" {
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  type        = list(any)
  description = "The AWS AZ to deploy EKS"
}

variable "k8s-version" {
  default     = "1.20"
  type        = string
  description = "Required K8s version"
}

variable "kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the node kubelet process"
}

variable "public-kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the public node kubelet process"

}

variable "vpc-subnet-cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "The VPC Subnet CIDR"
}

variable "private-subnet-cidr" {
  default     = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
  type        = list(any)
  description = "Private Subnet CIDR"
}

variable "public-subnet-cidr" {
  default     = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]
  type        = list(any)
  description = "Public Subnet CIDR"
}

variable "db-subnet-cidr" {
  default     = ["10.0.192.0/21", "10.0.200.0/21", "10.0.208.0/21"]
  type        = list(any)
  description = "DB/Spare Subnet CIDR"
}

variable "eks-cw-logging" {
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  type        = list(any)
  description = "Enable EKS CWL for EKS components"
}

variable "node-instance-type" {
  default     = "t3.small"
  type        = string
  description = "Worker Node EC2 instance type"
}
variable "root-block-size" {
  default     = "50"
  type        = string
  description = "Size of the root EBS block device"

}

variable "desired-capacity" {
  default     = 3
  type        = string
  description = "Autoscaling Desired node capacity"
}

variable "max-size" {
  default     = 9
  type        = string
  description = "Autoscaling maximum node capacity"
}

variable "min-size" {
  default     = 3
  type        = string
  description = "Autoscaling Minimum node capacity"
}

variable "ec2-key-public-key" {
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
  type        = string
  description = "AWS EC2 public key data"
}

variable "bastion-ami" {
  type    = string
  default = "ami-0e2e44c03b85f58b3"
}

variable "worker-ami" {
  type    = string
  default = "ami-0e2e44c03b85f58b3"
}

variable "default_tags" {
  default = {
    "Created By" = "QuyenNV9",
    "Impact"     = "High",
    "Project"    = "demo-k8s",
    "Env"        = "Prod",
    "Platform"   = "Terraform"
  }
  description = "Additional resource tags"
  type        = map(string)
}

variable "ipsshAllowed" {
  default     = "1.53.24.229/32"
  description = "The ip allowed to ssh"
}
