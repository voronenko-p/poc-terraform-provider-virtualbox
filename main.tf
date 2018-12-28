resource "virtualbox_vm" "node" {
    count = 1
    name = "${format("node-%02d", count.index+1)}"
#    url = "https://vagrantcloud.com/geerlingguy/boxes/ubuntu1804/versions/1.0.4/providers/virtualbox.box"
    url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/20180206.0.0/providers/virtualbox.box"
    image = "./package.box"
    cpus = 2
    memory = "1024 mib",
   // user_data = "${file("user_data")}"

    network_adapter {
      type = "nat"
      device = "IntelPro1000MTDesktop"
    }

}

output "IPAddr" {
    # Get the IPv4 address of the bridged adapter (the 2nd one) on 'node-02'
    value = "${virtualbox_vm.node.network_adapter.0.ipv4_address}"
}
