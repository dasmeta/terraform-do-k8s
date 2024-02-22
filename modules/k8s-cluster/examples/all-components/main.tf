module "this" {
  source = "../../"

  cluster_name = "dev-stage"
  namespaces   = ["dev", "stage"]
  region       = "fra1"
  do_token     = "digitalocean_token"

  node_pools = [{
    name       = "dev-stage"
    size       = "g-4vcpu-16gb"
    auto_scale = true
    min_nodes  = 2
    max_nodes  = 3
  }]
  providers = { "digitalocean" : "digitalocean" }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "digitalocean_token"
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.34.1"
    }
  }
}
