output "client_certificate" {
  value       = minikube_cluster.default.client_certificate
  description = "Cluster client certificate"
  sensitive   = true
}

output "client_key" {
  value       = minikube_cluster.default.client_key
  description = "Cluster client key"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = minikube_cluster.default.cluster_ca_certificate
  description = "Cluster certificate authority certificate"
  sensitive   = true
}

output "host" {
  value       = minikube_cluster.default.host
  description = "Cluster host"
}

output "id" {
  value       = minikube_cluster.default.id
  description = "Cluster resource ID"
}
