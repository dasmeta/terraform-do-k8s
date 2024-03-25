module "cert-manager" {
  count = var.enable_cert_manager ? 1 : 0

  source  = "terraform-module/release/helm"
  version = "2.8.2"

  namespace  = "cert-manager"
  repository = "https://charts.jetstack.io"

  app = {
    name             = "cert-manager"
    version          = "1.13.3"
    chart            = "cert-manager"
    force_update     = true
    wait             = false
    recreate_pods    = false
    deploy           = 1
    create_namespace = true
  }

  values = []

  set = [
    {
      name  = "installCRDs"
      value = true
    },
    {
      name  = "prometheus.enabled"
      value = false
    }
  ]
}
