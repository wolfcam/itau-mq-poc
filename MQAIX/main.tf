data "ibm_pi_key" "dskey" {
  pi_cloud_instance_id = var.powerinstanceid
  pi_key_name          = var.sshkeyname
}

data "ibm_pi_network" "power_networks" {
  pi_network_name      = var.networkname
  pi_cloud_instance_id = var.powerinstanceid
}

#data "ibm_pi_public_network" "power_networks_public" {
#  pi_cloud_instance_id = var.powerinstanceid
#}

data "ibm_pi_image" "powerimages" {
  pi_image_name        = var.imagename
  pi_cloud_instance_id = var.powerinstanceid
}

resource "ibm_pi_instance" "aixmqinstance" {
    pi_memory             = var.instancemem
    pi_processors         = var.instancecpu
    pi_instance_name      = var.instancename
    pi_proc_type          = "shared"
    pi_image_id           = data.ibm_pi_image.powerimages.id
    pi_network_ids        = [data.ibm_pi_network.power_networks.id]
    pi_key_pair_name      = data.ibm_pi_key.dskey.id
    pi_sys_type           = "e880"
    pi_cloud_instance_id  = var.powerinstanceid

}

resource "null_resource" "ansible" {

  provisioner "local-exec" {
    command = "C:\\cygwin64\\bin\\mintty.exe /usr/bin/ansible-playbook -i ${ibm_pi_instance.aixmqinstance.addresses[0].ip}, ansible-playbook/playbook.yml "
  }
}