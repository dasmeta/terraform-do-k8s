module "metrics-server" {
  count = var.enable_metrics_server ? 1 : 0

  source  = "terraform-module/release/helm"
  version = "2.8.1"

  namespace  = "metrics-server"
  repository = "https://kubernetes-sigs.github.io/metrics-server/"

  app = {
    name             = "metrics-server"
    version          = "3.11.0"
    chart            = "metrics-server"
    force_update     = true
    wait             = false
    recreate_pods    = false
    deploy           = 1
    create_namespace = true
  }

  values = []

  set = [
    {
      name  = "replicas",
      value = 2
    },
    {
      name  = "apiService.create",
      value = true
    }
  ]
}
