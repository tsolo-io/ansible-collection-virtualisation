# tsolo.virtualisation/proxmox/vm

Create VM in Proxmox

## Table of content

- [Default Variables](#default-variables)
  - [deploy_vm](#deploy_vm)
  - [destroy_vm](#destroy_vm)
  - [proxmox_vm_storage](#proxmox_vm_storage)
  - [proxmox_vm_template](#proxmox_vm_template)
  - [vm_net_gateway](#vm_net_gateway)
  - [vm_net_ip](#vm_net_ip)
  - [vm_net_mask](#vm_net_mask)
  - [vm_ram_mb](#vm_ram_mb)
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

### proxmox_vm_storage

#### Default value

```YAML
proxmox_vm_storage: local-lvm
```

### proxmox_vm_template

#### Default value

```YAML
proxmox_vm_template: ubuntu-jammy-cloudinit-template
```

### vm_net_gateway

#### Default value

```YAML
vm_net_gateway: ''
```

### vm_net_ip

#### Default value

```YAML
vm_net_ip: '{{ ansible_host }}'
```

### vm_net_mask

#### Default value

```YAML
vm_net_mask: 24
```

### vm_ram_mb

Size of the VM memory in MB.

#### Default value

```YAML
vm_ram_mb: 2048
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
