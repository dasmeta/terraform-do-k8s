resource "kubernetes_namespace" "namespace" {
  for_each = { for idx, name in var.namespaces : name => idx }

  metadata {
    labels = {
      name = each.key
    }

    name = each.key
  }
}
