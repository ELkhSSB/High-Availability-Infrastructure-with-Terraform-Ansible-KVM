resource "libvirt_domain" "vm" {
  for_each = var.vm_roles

  name   = each.key
  memory = each.value.memory
  vcpu   = each.value.vcpu

  network_interface {
    network_id = libvirt_network.terraform_net.id
  }

  disk {
    volume_id = libvirt_volume.vm_disk[each.key].id
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  graphics {
    type        = "vnc"
    listen_type = "none"  # pas accessible depuis l’extérieur
  }

}
