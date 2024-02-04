variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "this is the cidr of vpc"
}

variable "name" {
  type    = string
  default = ""
}

variable "public_subnet1_cidr" {
  type = string
}

variable "public_subnet2_cidr" {
  type = string
}

variable "private_subnet1_cidr" {
  type = string
}

variable "private_subnet2_cidr" {
  type = string
}