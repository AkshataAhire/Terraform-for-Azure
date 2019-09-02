#global_variables.tf
variable "location" {
  type = "string"
  default = "westeurope"
}

variable "tags" {
  type = "map"
  default = {}
}

variable "subnet_name" {}
variable "vm_count" {}
variable "static_url" {}
variable "quote_service_url" {}
variable "newsfeed_service_url" {}
