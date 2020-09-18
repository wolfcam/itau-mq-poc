variable "ibmcloud_api_key" {}
variable "iaas_classic_username" {}
variable "iaas_classic_api_key" {}
variable "region" {}

provider "ibm" {
ibmcloud_api_key = var.ibmcloud_api_key
generation = 0
region = var.region
iaas_classic_username = var.iaas_classic_username
iaas_classic_api_key  = var.iaas_classic_api_key
}
