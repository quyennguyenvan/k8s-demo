#init current account cloud id
data "aws_caller_identity" "current" {}

output "account-id" {
  value = data.aws_caller_identity.current.account_id
}

output "k8s-endpoint" {
  value = module.eks.endpoint
}

output "k8s-kubeconfig-certificate-authority-data" {
  value = module.eks.kubeconfig-certificate-authority-data
}
