variable "imagename" {
  description = "Name of the image template to be used"
  default = "aix71-mq92-v9"
}

variable "powerinstanceid" {
  description = "Power Service Instance associated with the account"
  default = "bf84dee4-2aae-4253-baf3-2edf93d80de8"
}

variable "instancename" {
  default = "aixmqs"
  description = "Name of the instance"
}

variable "sshkeyname" {
  default = "ssh-jean"
  description = "Name of the ssh key to be used"
}

variable "networkname" {
  default = "itau-poc-mq"
  description = "Name of the network"
}

variable "instancecpu" {
  default = "4"
  description = "Ammount of CPU to Instance"
}

variable "instancemem" {
  default = "8"
  description = "Ammount of Memory to Instance"
}
