#global_variables.tf
variable "location" {
  type = "string"
  default = "westeurope"
}

variable "tags" {
  type        = "map"
}
