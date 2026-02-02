resource "libvirt_volume" "vm_disk" {
  for_each = var.vm_roles

  name   = "${each.key}.qcow2"
  pool   = "images"
  source = var.ubuntu_template_path
  format = "qcow2"
}
