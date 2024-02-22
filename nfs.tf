module "nfs-server" {
  count = var.enable_nfs_server ? 1 : 0

  source  = "terraform-module/release/helm"
  version = "2.8.1"

  namespace  = "nfs-server"
  repository = "https://kubernetes-sigs.github.io/nfs-ganesha-server-and-external-provisioner/"

  app = {
    name             = "nfs-server"
    version          = "1.3.1"
    chart            = "nfs-server-provisioner"
    force_update     = true
    wait             = false
    recreate_pods    = false
    deploy           = 1
    create_namespace = true
  }

  values = []

  set = []
}
