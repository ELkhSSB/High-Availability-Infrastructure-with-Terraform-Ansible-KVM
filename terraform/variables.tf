variable "vm_roles" {
  description = "Liste des VM avec leurs rôles"
  type        = map(object({
    memory = number
    vcpu   = number
  }))

  default = {
    lb = {
      memory = 2048
      vcpu   = 2
    }
    web1 = {
      memory = 1024
      vcpu   = 1
    }
    web2 = {
      memory = 1024
      vcpu   = 1
    }
  }
}

variable "ubuntu_template_path" {
  description = "Template Ubuntu"
  type        = string
  default     = "/var/lib/libvirt/images/kvm_template/linux/templates/ubuntu-template-clean.qcow2"
}
