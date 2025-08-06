variable "eks_oidc_issuer_url" {
  type = string
}

variable "aws_iam_openid_connect_provider_arn" {
  description = "The ARN of the OpenID Connect provider for EKS"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}