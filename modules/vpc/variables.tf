variable "name" {
  type        = string
  description = "Name of the VPC"
}

variable "auto_create_subnetworks" {
  type    = bool
  default = false
}
