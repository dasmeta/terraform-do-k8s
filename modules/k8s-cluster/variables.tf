variable "do_token" {
  type        = string
  description = "DO token"
}

variable "namespaces" {
  type        = list(string)
  default     = []
  description = "Namespaces name"
}

variable "cluster_name" {
  type        = string
  description = "Cluster Name"
}

variable "region" {
  type        = string
  default     = "fra1"
  description = "Region name"
}

variable "cluster_version" {
  type        = string
  default     = "1.29."
  description = "Cluster version prefix"
}

variable "node_pools" {
  type = list(object({
    name       = string
    size       = string
    auto_scale = bool
    min_nodes  = number
    max_nodes  = number
  }))
  default = [
    {
      name       = "dev-stage"
      size       = "g-4vcpu-16gb"
      auto_scale = true
      min_nodes  = 1
      max_nodes  = 2
    }
  ]
  description = "Node pool configs"
}

variable "enable_cert_manager" {
  type        = bool
  default     = true
  description = "Enable cert-manager"
}

variable "enable_ingress_nginx" {
  type        = bool
  default     = true
  description = "Enable nginx ingress controller"
}

variable "enable_kube_prometheus_stack" {
  type        = bool
  default     = true
  description = "Enable kube prometheus stack"
}

variable "enable_metrics_server" {
  type        = bool
  default     = true
  description = "Enable metrics server"
}

variable "enable_nfs_server" {
  type        = bool
  default     = true
  description = "Enable NFS server"
}
