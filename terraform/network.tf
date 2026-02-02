resource "libvirt_network" "terraform_net" {
  name      = "terraform-net"
  mode      = "nat"
  addresses = ["192.168.150.0/24"]
}
