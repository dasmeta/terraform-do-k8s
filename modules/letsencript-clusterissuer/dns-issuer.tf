resource "kubernetes_secret" "dns-issuer" {
  metadata {
    name      = var.secret_name
    namespace = "cert-manager"
  }

  data = {
    access-token = var.do_access_token
  }

  type = "Opaque"
}


resource "kubernetes_manifest" "dns-issuer" {
  manifest = yamldecode(templatefile("${path.module}/values/dns-issuer.yaml",
    {
      email  = var.email
      secret = var.secret_name
  }))

  depends_on = [
    kubernetes_secret.dns-issuer
  ]
}
