terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.34.1"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~>1.14"
    }

  }
}
