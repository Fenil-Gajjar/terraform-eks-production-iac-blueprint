output "cluster_autoscaler" {
    description = "The Cluster Autoscaler configuration"
    value       = helm_release.cluster_autoscaler
}