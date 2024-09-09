variable "addons" {
  type        = set(string)
  description = "Enable addons"
  default     = ["default-storageclass", "storage-provisioner"]
  nullable    = false
}

variable "apiserver_ips" {
  type        = set(string)
  description = "A set of apiserver IP Addresses which are used in the generated certificate for kubernetes"
  default     = []
  nullable    = false
}

variable "apiserver_name" {
  type        = string
  description = "The authoritative apiserver hostname for apiserver certificates and connectivity"
  default     = "minikubeCA"
  nullable    = false
}

variable "apiserver_names" {
  type        = set(string)
  description = "A set of apiserver names which are used in the generated certificate for kubernetes"
  default     = []
  nullable    = false
}

variable "apiserver_port" {
  type        = number
  description = "The apiserver listening port"
  default     = 8443
  nullable    = false
}

variable "auto_pause_interval" {
  type        = number
  description = "Duration of inactivity before the minikube VM is paused"
  default     = 1
  nullable    = false
}

variable "auto_update_drivers" {
  type        = bool
  description = "If set, automatically updates drivers to the latest version"
  default     = true
  nullable    = false
}

variable "base_image" {
  type        = string
  description = "The base image to use for docker/podman drivers"
  default     = null
  nullable    = true
}

variable "binary_mirror" {
  type        = string
  description = "Location to fetch kubectl, kubelet, & kubeadm binaries from"
  default     = null
  nullable    = true
}

variable "cache_images" {
  type        = bool
  description = "If true, cache docker images for the current bootstrapper and load them into the machine"
  default     = true
  nullable    = false
}

variable "cert_expiration" {
  type        = number
  description = "Duration until minikube certificate expiration, defaults to three years"
  default     = 1576800
  nullable    = false
}

variable "cluster_name" {
  type        = string
  description = "The name of the minikube cluster"
  default     = "minikube"
  nullable    = false
}

variable "cni" {
  type        = string
  description = "CNI plug-in to use"
  default     = "auto"
  nullable    = false
}

variable "container_runtime" {
  type        = string
  description = "The container runtime to be used"
  default     = "docker"
  nullable    = false
}

variable "cpus" {
  type        = number
  description = "Amount of CPUs to allocate to Kubernetes"
  default     = 2
  nullable    = false
}

variable "cri_socket" {
  type        = string
  description = "The cri socket path to be used"
  default     = null
  nullable    = true
}

variable "delete_on_failure" {
  type        = bool
  description = "If set, delete the current cluster if start fails and try again"
  default     = false
  nullable    = false
}

variable "disable_driver_mounts" {
  type        = bool
  description = "Disables the filesystem mounts provided by the hypervisors"
  default     = false
  nullable    = false
}

variable "disable_metrics" {
  type        = bool
  description = "If set, disables metrics reporting (CPU and memory usage), this can improve CPU usage"
  default     = false
  nullable    = false
}

variable "disable_optimizations" {
  type        = bool
  description = "If set, disables optimizations that are set for local Kubernetes. Including decreasing CoreDNS replicas from 2 to 1"
  default     = false
  nullable    = false
}

variable "disk_size" {
  type        = string
  description = "Disk size allocated to the minikube VM"
  default     = "20000mb"
  nullable    = false
}

variable "dns_domain" {
  type        = string
  description = "The cluster dns domain name used in the Kubernetes cluster"
  default     = "cluster.local"
  nullable    = false
}

variable "dns_proxy" {
  type        = bool
  description = "Enable proxy for NAT DNS requests"
  default     = false
  nullable    = false
}

variable "docker_env" {
  type        = set(string)
  description = "Environment variables to pass to the Docker daemon"
  default     = null
  nullable    = true
}

variable "docker_opt" {
  type        = set(string)
  description = "Specify arbitrary flags to pass to the Docker daemon"
  default     = null
  nullable    = true
}

variable "download_only" {
  type        = bool
  description = "If true, only download and cache files for later use"
  default     = false
  nullable    = false
}

variable "driver" {
  type        = string
  description = "The driver to use for creating cluster nodes"
  default     = "docker"
  nullable    = false
}

variable "dry_run" {
  type        = bool
  description = "Validates configuration, but does not mutate system state"
  default     = false
  nullable    = false
}

variable "embed_certs" {
  type        = bool
  description = "if true, will embed the certs in kubeconfig"
  default     = false
  nullable    = false
}

variable "extra_config" {
  type        = set(string)
  description = "A set of key=value pairs that describe configuration that may be passed to different components"
  default     = []
  nullable    = false
}

variable "extra_disks" {
  type        = number
  description = "Number of extra disks created and attached to the minikube VM"
  default     = 0
  nullable    = false
}

variable "feature_gates" {
  type        = string
  description = "A set of key=value pairs that describe feature gates for alpha/experimental features"
  default     = null
  nullable    = true
}

variable "force" {
  type        = bool
  description = "Force minikube to perform possibly dangerous operations"
  default     = false
  nullable    = false
}

variable "force_systemd" {
  type        = bool
  description = "If set, force the container runtime to use systemd as cgroup manager"
  default     = false
  nullable    = false
}

variable "gpus" {
  type        = string
  description = "Allow pods to use your NVIDIA GPUs"
  default     = null
  nullable    = true
}

variable "ha" {
  type        = bool
  description = "Create Highly Available Multi-Control Plane Cluster with a minimum of three control-plane nodes that will also be marked for work"
  default     = null
  nullable    = true
}

variable "host_dns_resolver" {
  type        = bool
  description = "Enable host resolver for NAT DNS requests"
  default     = true
  nullable    = false
}

variable "host_only_cidr" {
  type        = string
  description = "The CIDR to be used for the minikube VM"
  default     = "192.168.59.1/24"
  nullable    = false
}

variable "host_only_nic_type" {
  type        = string
  description = "NIC Type used for host only network"
  default     = "virtio"
  nullable    = false
}

variable "hyperkit_vpnkit_sock" {
  type        = string
  description = "Location of the VPNKit socket used for networking"
  default     = null
  nullable    = true
}

variable "hyperkit_vsock_ports" {
  type        = set(string)
  description = "List of guest VSock ports that should be exposed as sockets on the host"
  default     = []
  nullable    = false
}

variable "hyperv_external_adapter" {
  type        = string
  description = "External Adapter on which external switch will be created if no external switch is found"
  default     = null
  nullable    = true
}

variable "hyperv_use_external_switch" {
  type        = bool
  description = "Whether to use external switch over Default Switch if virtual switch not explicitly specified"
  default     = false
  nullable    = false
}

variable "hyperv_virtual_switch" {
  type        = string
  description = "The hyperv virtual switch name"
  default     = null
  nullable    = true
}

variable "image_mirror_country" {
  type        = string
  description = "Country code of the image mirror to be used. Leave empty to use the global one"
  default     = null
  nullable    = true
}

variable "image_repository" {
  type        = string
  description = "Alternative image repository to pull docker images from"
  default     = null
  nullable    = true
}

variable "insecure_registry" {
  type        = set(string)
  description = "Insecure Docker registries to pass to the Docker daemon"
  default     = []
  nullable    = false
}

variable "install_addons" {
  type        = bool
  description = "If set, install addons"
  default     = true
  nullable    = false
}

variable "interactive" {
  type        = bool
  description = "Allow user prompts for more information"
  default     = true
  nullable    = false
}

variable "iso_url" {
  type        = set(string)
  description = "Locations to fetch the minikube ISO from"
  default     = null
  nullable    = true
}

variable "keep_context" {
  type        = bool
  description = "This will keep the existing kubectl context and will create a minikube context"
  default     = false
  nullable    = false
}

variable "kubernetes_version" {
  type        = string
  description = "The Kubernetes version that the minikube VM will use"
  default     = null
  nullable    = true
}

variable "kvm_gpu" {
  type        = bool
  description = "Enable experimental NVIDIA GPU support in minikube"
  default     = false
  nullable    = false
}

variable "kvm_hidden" {
  type        = bool
  description = "Hide the hypervisor signature from the guest in minikube"
  default     = false
  nullable    = false
}

variable "kvm_network" {
  type        = string
  description = "The KVM default network name"
  default     = "default"
  nullable    = false
}

variable "kvm_numa_count" {
  type        = number
  description = "Simulate numa node count in minikube, supported numa node count range is 1-8"
  default     = 1
  nullable    = false
}

variable "kvm_qemu_uri" {
  type        = string
  description = "The KVM QEMU connection URI"
  default     = "qemu:///system"
  nullable    = false
}

variable "listen_address" {
  type        = string
  description = "IP Address to use to expose ports"
  default     = null
  nullable    = true
}

variable "memory" {
  type        = string
  description = "Amount of RAM to allocate to Kubernetes"
  default     = "4096mb"
  nullable    = false
}

variable "mount" {
  type        = bool
  description = "This will start the mount daemon and automatically mount files into minikube"
  default     = false
  nullable    = false
}

variable "mount_9p_version" {
  type        = string
  description = "Specify the 9p version that the mount should use"
  default     = "9p2000.L"
  nullable    = false
}

variable "mount_gid" {
  type        = string
  description = "Default group id used for the mount"
  default     = "docker"
  nullable    = false
}

variable "mount_ip" {
  type        = string
  description = "Specify the ip that the mount should be setup on"
  default     = null
  nullable    = true
}

variable "mount_msize" {
  type        = number
  description = "The number of bytes to use for 9p packet payload"
  default     = 262144
  nullable    = false
}

variable "mount_options" {
  type        = set(string)
  description = "Additional mount options, such as cache=fscache"
  default     = null
  nullable    = true
}

variable "mount_port" {
  type        = number
  description = "Specify the port that the mount should be setup on, where 0 means any free port"
  default     = 0
  nullable    = false
}

variable "mount_string" {
  type        = string
  description = "The argument to pass the minikube mount command on start"
  default     = "/home:/minikube-host"
  nullable    = false
}

variable "mount_type" {
  type        = string
  description = "Specify the mount filesystem type"
  default     = "9p"
  nullable    = false
}

variable "mount_uid" {
  type        = string
  description = "Default user id used for the mount"
  default     = "docker"
  nullable    = false
}

variable "namespace" {
  type        = string
  description = "The named space to activate after start"
  default     = "default"
  nullable    = false
}

variable "nat_nic_type" {
  type        = string
  description = "NIC Type used for nat network"
  default     = "virtio"
  nullable    = false
}

variable "native_ssh" {
  type        = bool
  description = "Use native Golang SSH client"
  default     = true
  nullable    = false
}

variable "network" {
  type        = string
  description = "network to run minikube with"
  default     = null
  nullable    = true
}

variable "nfs_share" {
  type        = set(string)
  description = "Local folders to share with Guest via NFS mounts"
  default     = []
  nullable    = false
}

variable "nfs_shares_root" {
  type        = string
  description = "Where to root the NFS Shares, defaults to /nfsshares"
  default     = "/nfsshares"
  nullable    = false
}

variable "no_kubernetes" {
  type        = bool
  description = "If set, minikube VM/container will start without starting or configuring Kubernetes"
  default     = false
  nullable    = false
}

variable "no_vtx_check" {
  type        = bool
  description = "Disable checking for the availability of hardware virtualization before the vm is started"
  default     = false
  nullable    = false
}

variable "nodes" {
  type        = number
  description = "The total number of nodes to spin up"
  default     = 1
  nullable    = false
}

variable "output" {
  type        = string
  description = "Format to print stdout in"
  default     = "text"
  nullable    = false
}

variable "ports" {
  type        = set(string)
  description = "List of ports that should be exposed"
  default     = []
  nullable    = false
}

variable "preload" {
  type        = bool
  description = "If set, download tarball of preloaded images if available to improve start time"
  default     = true
  nullable    = false
}

variable "qemu_firmware_path" {
  type        = string
  description = "Path to the qemu firmware file"
  default     = null
  nullable    = true
}

variable "registry_mirror" {
  type        = set(string)
  description = "Registry mirrors to pass to the Docker daemon"
  default     = []
  nullable    = false
}

variable "service_cluster_ip_range" {
  type        = string
  description = "The CIDR to be used for service cluster IPs"
  default     = "10.96.0.0/12"
  nullable    = false
}

variable "socket_vmnet_client_path" {
  type        = string
  description = "Path to the socket vmnet client binary"
  default     = "/usr/local/opt/socket_vmnet/bin/socket_vmnet_client"
  nullable    = false
}

variable "socket_vmnet_path" {
  type        = string
  description = "Path to socket vmnet binary"
  default     = "/usr/local/var/run/socket_vmnet"
  nullable    = false
}

variable "ssh_ip_address" {
  type        = string
  description = "IP address"
  default     = null
  nullable    = true
}

variable "ssh_key" {
  type        = string
  description = "SSH key"
  default     = null
  nullable    = true
}

variable "ssh_port" {
  type        = number
  description = "SSH port"
  default     = 22
  nullable    = false
}

variable "ssh_user" {
  type        = string
  description = "SSH user"
  default     = "root"
  nullable    = false
}

variable "static_ip" {
  type        = string
  description = "Set a static IP for the minikube cluster"
  default     = null
  nullable    = true
}

variable "subnet" {
  type        = string
  description = "Subnet to be used on kic cluster"
  default     = null
  nullable    = true
}

variable "trace" {
  type        = string
  description = "Send trace events"
  default     = null
  nullable    = true
}

variable "uuid" {
  type        = string
  description = "Provide VM UUID to restore MAC address"
  default     = null
  nullable    = true
}

variable "vm" {
  type        = bool
  description = "Filter to use only VM Drivers"
  default     = false
  nullable    = false
}

variable "wait" {
  type        = set(string)
  description = "Comma separated list of Kubernetes components to verify and wait for after starting a cluster"
  default     = null
  nullable    = true
}

variable "wait_timeout" {
  type        = number
  description = "Max time to wait per Kubernetes or host to be healthy"
  default     = 6
  nullable    = false
}
