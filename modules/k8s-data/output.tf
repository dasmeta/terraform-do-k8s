output "all-data" {
  value = data.digitalocean_kubernetes_cluster.cluster
}

output "cluster_ca_certificate" {
  value = base64decode(data.digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate)
}

output "endpoint" {
  value = data.digitalocean_kubernetes_cluster.cluster.endpoint
}

output "token" {
  value = data.digitalocean_kubernetes_cluster.cluster.kube_config[0].token
}
