terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.37.1"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~>1.14"
    }

  }
}
