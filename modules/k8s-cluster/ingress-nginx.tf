module "ingress-nginx" {
  count = var.enable_ingress_nginx ? 1 : 0

  source  = "terraform-module/release/helm"
  version = "2.8.1"

  namespace  = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"

  app = {
    name             = "ingress-nginx"
    version          = "4.9.0"
    chart            = "ingress-nginx"
    force_update     = true
    wait             = false
    recreate_pods    = false
    deploy           = 1
    create_namespace = true
  }

  values = [
    file("${path.module}/values/ingress-nginx-values.yaml")
  ]

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
