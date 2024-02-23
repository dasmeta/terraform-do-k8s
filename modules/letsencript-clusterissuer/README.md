# dns-issuer

This module will set up a Let's Encrypt production cluster issuer for managing SSL certificates within your cluster.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | 2.34.1 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | ~>1.14 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.26.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.26.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_manifest.dns-issuer](https://registry.terraform.io/providers/hashicorp/kubernetes/2.26.0/docs/resources/manifest) | resource |
| [kubernetes_secret.dns-issuer](https://registry.terraform.io/providers/hashicorp/kubernetes/2.26.0/docs/resources/secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name | `string` | n/a | yes |
| <a name="input_do_access_token"></a> [do\_access\_token](#input\_do\_access\_token) | DO access token | `string` | n/a | yes |
| <a name="input_email"></a> [email](#input\_email) | Email address | `string` | n/a | yes |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Secret name | `string` | `"digitalocean-dns"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
