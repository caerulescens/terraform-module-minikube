<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_minikube"></a> [minikube](#requirement\_minikube) | >= 0.3.10 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_minikube_cluster"></a> [minikube\_cluster](#module\_minikube\_cluster) | ./modules/minikube_cluster | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_minikube_clusters"></a> [minikube\_clusters](#input\_minikube\_clusters) | Minikube clusters | <pre>map(object({<br>    addons                     = optional(set(string))<br>    apiserver_ips              = optional(set(string))<br>    apiserver_name             = optional(string)<br>    apiserver_names            = optional(set(string))<br>    apiserver_port             = optional(number)<br>    auto_pause_interval        = optional(number)<br>    auto_update_drivers        = optional(bool)<br>    base_image                 = optional(string)<br>    binary_mirror              = optional(string)<br>    cache_images               = optional(bool)<br>    cert_expiration            = optional(number)<br>    cni                        = optional(string)<br>    container_runtime          = optional(string)<br>    cpus                       = optional(number)<br>    cri_socket                 = optional(string)<br>    delete_on_failure          = optional(bool)<br>    disable_driver_mounts      = optional(bool)<br>    disable_metrics            = optional(bool)<br>    disable_optimizations      = optional(bool)<br>    disk_size                  = optional(string)<br>    dns_domain                 = optional(string)<br>    dns_proxy                  = optional(bool)<br>    docker_env                 = optional(set(string))<br>    docker_opt                 = optional(set(string))<br>    download_only              = optional(bool)<br>    driver                     = optional(string)<br>    dry_run                    = optional(bool)<br>    embed_certs                = optional(bool)<br>    extra_config               = optional(set(string))<br>    extra_disks                = optional(number)<br>    feature_gates              = optional(string)<br>    force                      = optional(bool)<br>    force_systemd              = optional(bool)<br>    gpus                       = optional(string)<br>    ha                         = optional(bool)<br>    host_dns_resolver          = optional(bool)<br>    host_only_cidr             = optional(string)<br>    host_only_nic_type         = optional(string)<br>    hyperkit_vpnkit_sock       = optional(string)<br>    hyperkit_vsock_ports       = optional(set(string))<br>    hyperv_external_adapter    = optional(string)<br>    hyperv_use_external_switch = optional(bool)<br>    hyperv_virtual_switch      = optional(string)<br>    image_mirror_country       = optional(string)<br>    image_repository           = optional(string)<br>    insecure_registry          = optional(set(string))<br>    install_addons             = optional(bool)<br>    interactive                = optional(bool)<br>    iso_url                    = optional(set(string))<br>    keep_context               = optional(bool)<br>    kubernetes_version         = optional(string)<br>    kvm_gpu                    = optional(bool)<br>    kvm_hidden                 = optional(bool)<br>    kvm_network                = optional(string)<br>    kvm_numa_count             = optional(number)<br>    kvm_qemu_uri               = optional(string)<br>    listen_address             = optional(string)<br>    memory                     = optional(string)<br>    mount                      = optional(bool)<br>    mount_9p_version           = optional(string)<br>    mount_gid                  = optional(string)<br>    mount_ip                   = optional(string)<br>    mount_msize                = optional(number)<br>    mount_options              = optional(set(string))<br>    mount_port                 = optional(number)<br>    mount_string               = optional(string)<br>    mount_type                 = optional(string)<br>    mount_uid                  = optional(string)<br>    namespace                  = optional(string)<br>    nat_nic_type               = optional(string)<br>    native_ssh                 = optional(bool)<br>    network                    = optional(string)<br>    nfs_share                  = optional(set(string))<br>    nfs_shares_root            = optional(string)<br>    no_kubernetes              = optional(bool)<br>    no_vtx_check               = optional(bool)<br>    nodes                      = optional(number)<br>    output                     = optional(string)<br>    ports                      = optional(set(string))<br>    preload                    = optional(bool)<br>    qemu_firmware_path         = optional(string)<br>    registry_mirror            = optional(set(string))<br>    service_cluster_ip_range   = optional(string)<br>    socket_vmnet_client_path   = optional(string)<br>    socket_vmnet_path          = optional(string)<br>    ssh_ip_address             = optional(string)<br>    ssh_key                    = optional(string)<br>    ssh_port                   = optional(number)<br>    ssh_user                   = optional(string)<br>    static_ip                  = optional(string)<br>    subnet                     = optional(string)<br>    trace                      = optional(string)<br>    uuid                       = optional(string)<br>    vm                         = optional(bool)<br>    wait                       = optional(set(string))<br>    wait_timeout               = optional(number)<br>    })<br>  )</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_minikube_clusters"></a> [minikube\_clusters](#output\_minikube\_clusters) | A set of minikube clusters |
<!-- END_TF_DOCS -->
