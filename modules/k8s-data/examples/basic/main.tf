module "this" {
    source = "../../"
    cluster_name = "docs"

}

provider "digitalocean" {
  token = ""
}

output "all" {
    value = module.this.k8s-data
    sensitive = true
}
