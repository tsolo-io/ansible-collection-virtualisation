# Roles


## tsolo.virtualisation/libvirt

Manage the creation, and removal, of VMs using libvirt and cloudinit.

### deploy_vm

If the VM needs to be deployed.

#### Default value:

```yaml
deploy_vm: false
```

### destroy_vm

If VM should be removed/destroyed. This is done before VM is deployed.

#### Default value:

```yaml
destroy_vm: false
```

### libvirt_pool_dir

Working directory to create VMs in.

#### Default value:

```yaml
libvirt_pool_dir: /var/lib/libvirt/images
```

### ssh_key

SSH public key to add to the VM.

#### Default value:

```yaml
ssh_key: /root/.ssh/id_rsa.pub
```

### vm_image_filename

The name of the image file. This is used when downloading and saving the
image file. In general this value should not be set. Default is derived from
vm_image_release_name.

#### Default value:

```yaml
vm_image_filename: '{{ vm_image_release_name }}-server-cloudimg-amd64.img'
```

### vm_image_release_name

The Ubuntu name of the image we will use.

#### Default value:

```yaml
vm_image_release_name: focal
```

### vm_image_url

The url where the image will be downloaded from. In general this value should
not be set. Default is derived from vm_image_filename.

#### Default value:

```yaml
vm_image_url: https://cloud-images.ubuntu.com/{{ vm_image_release_name }}/current/{{ vm_image_filename }}
```

### vm_network_bridge_device

Applicable to hypervisor only.
Network device to bridge to the VM.

#### Default value:

```yaml
vm_network_bridge_device: ovs0
```

### vm_ram_mb

Size of the VM memory in MB.

#### Default value:

```yaml
vm_ram_mb: 2048
```

### vm_root_pass

root password of the VM.

#### Default value:

```yaml
vm_root_pass: test123
```
This is a secret, the value of production and development is not shown.

### vm_root_size

The size of the VM root filesystem.

#### Default value:

```yaml
vm_root_size: 3G
```

### vm_vcpus

Number of virtual CPUs to allocate to the VM.

#### Default value:

```yaml
vm_vcpus: 2
```

## tsolo.virtualisation/proxmox/vm

Create VM in Proxmox

### deploy_vm

If the VM needs to be deployed.

#### Default value:

```yaml
deploy_vm: false
```

### destroy_vm

If VM should be removed/destroyed. This is done before VM is deployed.

#### Default value:

```yaml
destroy_vm: false
```

### proxmox_vm_storage


#### Default value:

```yaml
proxmox_vm_storage: local-lvm
```

### proxmox_vm_template


#### Default value:

```yaml
proxmox_vm_template: ubuntu-jammy-cloudinit-template
```

### vm_net_gateway


#### Default value:

```yaml
vm_net_gateway: ''
```

### vm_net_ip


#### Default value:

```yaml
vm_net_ip: '{{ ansible_host }}'
```

### vm_net_mask


#### Default value:

```yaml
vm_net_mask: 24
```

### vm_ram_mb

Size of the VM memory in MB.

#### Default value:

```yaml
vm_ram_mb: 2048
```

### vm_root_size

The size of the VM root filesystem.

#### Default value:

```yaml
vm_root_size: 3G
```

### vm_vcpus

Number of virtual CPUs to allocate to the VM.

#### Default value:

```yaml
vm_vcpus: 2
```

## tsolo.virtualisation/proxmox/vm-template



### proxmox_vm_template_name_default


#### Default value:

```yaml
proxmox_vm_template_name_default: ubuntu-{{ proxmox_vm_template_ubuntu_release }}-cloudinit-template
```

### proxmox_vm_template_storage


#### Default value:

```yaml
proxmox_vm_template_storage: /var/lib/vz/template
```

### proxmox_vm_template_ubuntu_url_default


#### Default value:

```yaml
proxmox_vm_template_ubuntu_url_default: https://cloud-images.ubuntu.com/{{ proxmox_vm_template_ubuntu_release }}/current/{{ proxmox_vm_template_ubuntu_release }}-server-cloudimg-amd64.img
```

### proxmox_vm_templates


#### Default value:

```yaml
proxmox_vm_templates:
- id: 99990
  ubuntu_release: jammy
- id: 99991
  ubuntu_release: focal
```