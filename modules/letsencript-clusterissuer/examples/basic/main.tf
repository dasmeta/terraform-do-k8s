module "this" {
  source = "../../"

  cluster_name = "dev-stage"

  email           = "julia@dasmeta.com"
  do_access_token = "digitalocean_token"

  providers = { "digitalocean" : "digitalocean" }
}
