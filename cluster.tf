data "digitalocean_kubernetes_versions" "version" {
  version_prefix = var.cluster_version
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = var.cluster_name
  region  = var.region
  version = data.digitalocean_kubernetes_versions.version.latest_version

  dynamic "node_pool" {
    for_each = var.node_pools
    content {
      name       = node_pool.value.name
      size       = node_pool.value.size
      auto_scale = node_pool.value.auto_scale
      min_nodes  = node_pool.value.min_nodes
      max_nodes  = node_pool.value.max_nodes
    }
  }
}
