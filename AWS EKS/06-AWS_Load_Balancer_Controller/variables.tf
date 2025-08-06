variable "cluster_name" {
  type = string
}

variable "cluster_autoscaler" {
  type = any
  description = "Configuration for the EKS Cluster Autoscaler"
}

variable "vpc_id" {
  type = string
  description = "VPC ID where the EKS cluster is deployed"
}