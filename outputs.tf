# todo: output masked sensitive values to show existence
output "minikube_clusters" {
  value = {
    for k, v in module.minikube_cluster : k => {
      host : v.host,
      id : v.id
    }
  }
  description = "A set of minikube clusters"
}
