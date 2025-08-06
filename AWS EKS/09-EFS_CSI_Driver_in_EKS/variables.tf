variable "eks_oidc_issuer_url" {
  type = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_security_group_id" {
  type = string
}

variable "private_subnet_zone1_id" {
  type = string
}

variable "private_subnet_zone2_id" {
  type = string
}