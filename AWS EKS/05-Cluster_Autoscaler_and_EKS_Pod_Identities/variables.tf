variable "cluster_name" {
  type = string
}

variable "metrics_server" {
    type = any
    description = "Metrics server configuration for HPA"
}