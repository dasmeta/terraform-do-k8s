module "kube-prometheus-stack" {
  count = var.enable_kube_prometheus_stack ? 1 : 0

  source  = "terraform-module/release/helm"
  version = "2.8.1"

  namespace  = "kube-prometheus-stack"
  repository = "https://prometheus-community.github.io/helm-charts"

  app = {
    name             = "kube-prometheus-stack"
    version          = "55.7.0"
    chart            = "kube-prometheus-stack"
    force_update     = true
    wait             = false
    recreate_pods    = false
    deploy           = 1
    create_namespace = true
  }

  values = [
    file("${path.module}/values/kube-prometheus-stack-values.yaml")
  ]
}
