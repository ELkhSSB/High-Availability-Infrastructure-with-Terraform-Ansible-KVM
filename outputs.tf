output "vm_names" {
  value = keys(libvirt_domain.vm)
}
