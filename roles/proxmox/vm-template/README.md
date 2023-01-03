# tsolo.virtualisation/proxmox/vm-template

## Table of content

- [Default Variables](#default-variables)
  - [proxmox_vm_template_name_default](#proxmox_vm_template_name_default)
  - [proxmox_vm_template_storage](#proxmox_vm_template_storage)
  - [proxmox_vm_template_ubuntu_url_default](#proxmox_vm_template_ubuntu_url_default)
  - [proxmox_vm_templates](#proxmox_vm_templates)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Default Variables

### proxmox_vm_template_name_default

#### Default value

```YAML
proxmox_vm_template_name_default: ubuntu-{{ proxmox_vm_template_ubuntu_release }}-cloudinit-template
```

### proxmox_vm_template_storage

#### Default value

```YAML
proxmox_vm_template_storage: /var/lib/vz/template
```

### proxmox_vm_template_ubuntu_url_default

#### Default value

```YAML
proxmox_vm_template_ubuntu_url_default: https://cloud-images.ubuntu.com/{{ proxmox_vm_template_ubuntu_release
  }}/current/{{ proxmox_vm_template_ubuntu_release }}-server-cloudimg-amd64.img
```

### proxmox_vm_templates

#### Default value

```YAML
proxmox_vm_templates:
  - id: 99990
    ubuntu_release: jammy
  - id: 99991
    ubuntu_release: focal
```



## Dependencies

None.

## License

Apache-2.0

## Author

Tsolo.io
