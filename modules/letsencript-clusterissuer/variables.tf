variable "cluster_name" {
  type        = string
  description = "Cluster name"
}

variable "email" {
  type        = string
  description = "Email address"
}

variable "secret_name" {
  type        = string
  description = "Secret name"
  default     = "digitalocean-dns"
}

variable "do_access_token" {
  type        = string
  description = "DO access token"
}
