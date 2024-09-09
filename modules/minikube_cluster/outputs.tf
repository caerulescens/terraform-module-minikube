output "client_certificate" {
  value       = minikube_cluster.default.client_certificate
  description = "Client certificate used in cluster"
  sensitive   = true
}

output "client_key" {
  value       = minikube_cluster.default.client_key
  description = "Client key for cluster"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = minikube_cluster.default.cluster_ca_certificate
  description = "Certificate authority for cluster"
  sensitive   = true
}

output "host" {
  value       = minikube_cluster.default.host
  description = "The host name for the cluster"
}

output "id" {
  value       = minikube_cluster.default.id
  description = "The ID of this resource"
}
