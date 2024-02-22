# k8s-cluster

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | 2.34.1 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | ~>1.14 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.34.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cert-manager"></a> [cert-manager](#module\_cert-manager) | terraform-module/release/helm | 2.8.1 |
| <a name="module_ingress-nginx"></a> [ingress-nginx](#module\_ingress-nginx) | terraform-module/release/helm | 2.8.1 |
| <a name="module_kube-prometheus-stack"></a> [kube-prometheus-stack](#module\_kube-prometheus-stack) | terraform-module/release/helm | 2.8.1 |
| <a name="module_metrics-server"></a> [metrics-server](#module\_metrics-server) | terraform-module/release/helm | 2.8.1 |
| <a name="module_nfs-server"></a> [nfs-server](#module\_nfs-server) | terraform-module/release/helm | 2.8.1 |

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/2.34.1/docs/resources/kubernetes_cluster) | resource |
| [kubernetes_namespace.namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [digitalocean_kubernetes_versions.version](https://registry.terraform.io/providers/digitalocean/digitalocean/2.34.1/docs/data-sources/kubernetes_versions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster Name | `string` | n/a | yes |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Cluster version prefix | `string` | `"1.29."` | no |
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | DO token | `string` | n/a | yes |
| <a name="input_enable_cert_manager"></a> [enable\_cert\_manager](#input\_enable\_cert\_manager) | Enable cert-manager | `bool` | `true` | no |
| <a name="input_enable_ingress_nginx"></a> [enable\_ingress\_nginx](#input\_enable\_ingress\_nginx) | Enable nginx ingress controller | `bool` | `true` | no |
| <a name="input_enable_kube_prometheus_stack"></a> [enable\_kube\_prometheus\_stack](#input\_enable\_kube\_prometheus\_stack) | Enable kube prometheus stack | `bool` | `true` | no |
| <a name="input_enable_metrics_server"></a> [enable\_metrics\_server](#input\_enable\_metrics\_server) | Enable metrics server | `bool` | `true` | no |
| <a name="input_enable_nfs_server"></a> [enable\_nfs\_server](#input\_enable\_nfs\_server) | Enable NFS server | `bool` | `true` | no |
| <a name="input_namespaces"></a> [namespaces](#input\_namespaces) | Namespaces name | `list(string)` | `[]` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | Node pool configs | <pre>list(object({<br>    name       = string<br>    size       = string<br>    auto_scale = bool<br>    min_nodes  = number<br>    max_nodes  = number<br>  }))</pre> | <pre>[<br>  {<br>    "auto_scale": true,<br>    "max_nodes": 2,<br>    "min_nodes": 1,<br>    "name": "dev-stage",<br>    "size": "g-4vcpu-16gb"<br>  }<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | Region name | `string` | `"fra1"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
