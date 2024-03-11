terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.35.0"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~>1.14"
    }

  }
}
