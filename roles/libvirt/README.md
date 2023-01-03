# tsolo.virtualisation/libvirt

Manage the creation, and removal, of VMs using libvirt and cloudinit.

## Table of content

- [Default Variables](#default-variables)
  - [deploy_vm](#deploy_vm)
  - [destroy_vm](#destroy_vm)
  - [libvirt_pool_dir](#libvirt_pool_dir)
  - [ssh_key](#ssh_key)
  - [vm_image_filename](#vm_image_filename)
  - [vm_image_release_name](#vm_image_release_name)
  - [vm_image_url](#vm_image_url)
  - [vm_network_bridge_device](#vm_network_bridge_device)
  - [vm_ram_mb](#vm_ram_mb)
  - [vm_root_pass](#vm_root_pass)
  - [vm_root_size](#vm_root_size)
  - [vm_vcpus](#vm_vcpus)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Default Variables

### deploy_vm

If the VM needs to be deployed.

#### Default value

```YAML
deploy_vm: false
```

### destroy_vm

If VM should be removed/destroyed. This is done before VM is deployed.

#### Default value

```YAML
destroy_vm: false
```

### libvirt_pool_dir

Working directory to create VMs in.

#### Default value

```YAML
libvirt_pool_dir: /var/lib/libvirt/images
```

### ssh_key

SSH public key to add to the VM.

#### Default value

```YAML
ssh_key: /root/.ssh/id_rsa.pub
```

### vm_image_filename

The name of the image file. This is used when downloading and saving the image file. In general this value should not be set. Default is derived from vm_image_release_name.

#### Default value

```YAML
vm_image_filename: '{{ vm_image_release_name }}-server-cloudimg-amd64.img'
```

### vm_image_release_name

The Ubuntu name of the image we will use.

#### Default value

```YAML
vm_image_release_name: focal
```

### vm_image_url

The url where the image will be downloaded from. In general this value should not be set. Default is derived from vm_image_filename.

#### Default value

```YAML
vm_image_url: https://cloud-images.ubuntu.com/{{ vm_image_release_name }}/current/{{
  vm_image_filename }}
```

### vm_network_bridge_device

Applicable to hypervisor only. Network device to bridge to the VM.

#### Default value

```YAML
vm_network_bridge_device: ovs0
```

### vm_ram_mb

Size of the VM memory in MB.

#### Default value

```YAML
vm_ram_mb: 2048
```

### vm_root_pass

root password of the VM.

#### Default value

```YAML
vm_root_pass: test123
```

### vm_root_size

The size of the VM root filesystem.

#### Default value

```YAML
vm_root_size: 3G
```

### vm_vcpus

Number of virtual CPUs to allocate to the VM.

#### Default value

```YAML
vm_vcpus: 2
```



## Dependencies

None.

## License

Apache-2.0

## Author

Tsolo.io
