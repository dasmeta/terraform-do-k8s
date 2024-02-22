resource "kubernetes_namespace" "namespace" {
  for_each = { for idx, name in var.namespaces : name => idx }

  metadata {
    annotations = {
      "linkerd.io/inject"                      = "disabled"
      "config.linkerd.io/proxy-cpu-limit"      = "1"
      "config.linkerd.io/proxy-cpu-request"    = "0.2"
      "config.linkerd.io/proxy-memory-limit"   = "1Gi"
      "config.linkerd.io/proxy-memory-request" = "128Mi"
    }

    labels = {
      name = each.key
    }

    name = each.key
  }
}
