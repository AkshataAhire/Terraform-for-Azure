variable "appservice_plan_tier" {
  type        = "string"
  default     = "Standard"
}

variable "appservice_plan_size" {
  type        = "string"
  default     = "S2"
}

variable "appservice_plan_kind" {
  type        = "string"
  default     = "Windows"
}

variable "appservice_always_on" {
  type        = "string"
  default     = true
}

variable "appservice_frontend_image" {
  type        = "string"
  #default     = "successpage"
}
