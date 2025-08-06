variable "cluster_name" {
  type = string
}
variable "cluster_endpoint" {
  type = string
}
variable "cluster_ca_data" {
  type = string
}

variable "eks_node_group_general" {
  type = any
  description = "EKS node group for general workloads"
}