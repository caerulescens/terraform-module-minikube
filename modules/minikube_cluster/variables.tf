variable "addons" {
  type        = set(string)
  description = ""
  default     = ["default-storageclass", "storage-provisioner"]
  nullable    = false

  # todo: validate addons
}

variable "apiserver_ips" {
  type        = set(string)
  description = ""
  default     = []
  nullable    = false
}

variable "apiserver_name" {
  type        = string
  description = ""
  default     = "minikubeCA"
  nullable    = false
}

variable "apiserver_names" {
  type        = set(string)
  description = ""
  default     = []
  nullable    = false
}

variable "apiserver_port" {
  type        = number
  description = ""
  default     = 8443
  nullable    = false
}

variable "auto_pause_interval" {
  type        = number
  description = ""
  default     = 1
  nullable    = false
}

variable "auto_update_drivers" {
  type        = bool
  description = ""
  default     = true
  nullable    = false
}

variable "base_image" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "binary_mirror" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "cache_images" {
  type        = bool
  description = ""
  default     = true
  nullable    = false
}

variable "cert_expiration" {
  type        = number
  description = ""
  default     = 1576800
  nullable    = false
}

variable "cluster_name" {
  type        = string
  description = ""
  default     = "minikube"
  nullable    = false
}

variable "cni" {
  type        = string
  description = ""
  default     = "auto"
  nullable    = false

  # todo: validate cni
}

variable "container_runtime" {
  type        = string
  description = ""
  default     = "docker"
  nullable    = false

  # todo: validate container_runtime
}

variable "cpus" {
  type        = number
  description = ""
  default     = 2
  nullable    = false
}

variable "cri_socket" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "delete_on_failure" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "disable_driver_mounts" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "disable_metrics" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "disable_optimizations" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "disk_size" {
  type        = string
  description = ""
  default     = "20000mb"
  nullable    = false

  # todo: validate disk_size
}

variable "dns_domain" {
  type        = string
  description = ""
  default     = "cluster.local"
  nullable    = false
}

variable "dns_proxy" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "docker_env" {
  type        = set(string)
  description = ""
  default     = null
  nullable    = true
}

variable "docker_opt" {
  type        = set(string)
  description = ""
  default     = null
  nullable    = true
}

variable "download_only" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "driver" {
  type        = string
  description = ""
  default     = "docker"
  nullable    = false

  # todo: validate driver
}

variable "dry_run" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "embed_certs" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "extra_config" {
  type        = set(string)
  description = ""
  default     = []
  nullable    = false

  # todo: validate extra_config
}

variable "extra_disks" {
  type        = number
  description = ""
  default     = 0
  nullable    = false

  # todo: validate driver for extra_disks
}

variable "feature_gates" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "force" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "force_systemd" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "gpus" {
  type        = string
  description = ""
  default     = null
  nullable    = true

  # todo: validate gpus
}

variable "ha" {
  type        = bool
  description = ""
  default     = null
  nullable    = true
}

variable "host_dns_resolver" {
  type        = bool
  description = ""
  default     = true
  nullable    = false
}

variable "host_only_cidr" {
  type        = string
  description = ""
  default     = "192.168.59.1/24"
  nullable    = false
}

variable "host_only_nic_type" {
  type        = string
  description = ""
  default     = "virtio"
  nullable    = false
}

variable "hyperkit_vpnkit_sock" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "hyperkit_vsock_ports" {
  type        = set(string)
  description = ""
  default     = []
  nullable    = false
}

variable "hyperv_external_adapter" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "hyperv_use_external_switch" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "hyperv_virtual_switch" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "image_mirror_country" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "image_repository" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "insecure_registry" {
  type        = set(string)
  description = ""
  default     = []
  nullable    = false
}

variable "install_addons" {
  type        = bool
  description = ""
  default     = true
  nullable    = false
}

variable "interactive" {
  type        = bool
  description = ""
  default     = true
  nullable    = false
}

variable "iso_url" {
  type        = set(string)
  description = ""
  default     = null
  nullable    = true
}

variable "keep_context" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "kubernetes_version" {
  type        = string
  description = ""
  default     = null
  nullable    = true

  # todo: validate kubernetes_version
}

variable "kvm_gpu" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "kvm_hidden" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "kvm_network" {
  type        = string
  description = ""
  default     = "default"
  nullable    = false
}

variable "kvm_numa_count" {
  type        = number
  description = ""
  default     = 1
  nullable    = false
}

variable "kvm_qemu_uri" {
  type        = string
  description = ""
  default     = "qemu:///system"
  nullable    = false
}

variable "listen_address" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "memory" {
  type        = string
  description = ""
  default     = "4096mb"
  nullable    = false

  # todo: validate memory
}

variable "mount" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "mount_9p_version" {
  type        = string
  description = ""
  default     = "9p2000.L"
  nullable    = false
}

variable "mount_gid" {
  type        = string
  description = ""
  default     = "docker"
  nullable    = false
}

variable "mount_ip" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "mount_msize" {
  type        = number
  description = ""
  default     = 262144
  nullable    = false
}

variable "mount_options" {
  type        = set(string)
  description = ""
  default     = null
  nullable    = true
}

variable "mount_port" {
  type        = number
  description = ""
  default     = 0
  nullable    = false
}

variable "mount_string" {
  type        = string
  description = ""
  default     = "/home:/minikube-host"
  nullable    = false
}

variable "mount_type" {
  type        = string
  description = ""
  default     = "9p"
  nullable    = false
}

variable "mount_uid" {
  type        = string
  description = ""
  default     = "docker"
  nullable    = false
}

variable "namespace" {
  type        = string
  description = ""
  default     = "default"
  nullable    = false
}

variable "nat_nic_type" {
  type        = string
  description = ""
  default     = "virtio"
  nullable    = false

  # todo: validate nat_nic_type
}

variable "native_ssh" {
  type        = bool
  description = ""
  default     = true
  nullable    = false
}

variable "network" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "nfs_share" {
  type        = set(string)
  description = ""
  default     = []
  nullable    = false
}

variable "nfs_shares_root" {
  type        = string
  description = ""
  default     = "/nfsshares"
  nullable    = false
}

variable "no_kubernetes" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "no_vtx_check" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "nodes" {
  type        = number
  description = ""
  default     = 1
  nullable    = false
}

variable "output" {
  type        = string
  description = ""
  default     = "text"
  nullable    = false

  # todo: validate output
}

variable "ports" {
  type        = set(string)
  description = ""
  default     = []
  nullable    = false
}

variable "preload" {
  type        = bool
  description = ""
  default     = true
  nullable    = false
}

variable "qemu_firmware_path" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "registry_mirror" {
  type        = set(string)
  description = ""
  default     = []
  nullable    = false
}

variable "service_cluster_ip_range" {
  type        = string
  description = ""
  default     = "10.96.0.0/12"
  nullable    = false
}

variable "socket_vmnet_client_path" {
  type        = string
  description = ""
  default     = "/usr/local/opt/socket_vmnet/bin/socket_vmnet_client"
  nullable    = false
}

variable "socket_vmnet_path" {
  type        = string
  description = ""
  default     = "/usr/local/var/run/socket_vmnet"
  nullable    = false
}

variable "ssh_ip_address" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "ssh_key" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "ssh_port" {
  type        = number
  description = ""
  default     = 22
  nullable    = false
}

variable "ssh_user" {
  type        = string
  description = ""
  default     = "root"
  nullable    = false
}

variable "static_ip" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "subnet" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "trace" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "uuid" {
  type        = string
  description = ""
  default     = null
  nullable    = true
}

variable "vm" {
  type        = bool
  description = ""
  default     = false
  nullable    = false
}

variable "wait" {
  type        = set(string)
  description = ""
  default     = null
  nullable    = true

  # todo: validate wait
}

variable "wait_timeout" {
  type        = number
  description = ""
  default     = 6
  nullable    = false
}
