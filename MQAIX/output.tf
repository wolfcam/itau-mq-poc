output "instances_id" {
   description = "ID da Instancia"
   value = ibm_pi_instance.aixmqinstance.id

}

output "ip" {
   description = "IP Interno"
   value = ibm_pi_instance.aixmqinstance.addresses[*].ip
}
