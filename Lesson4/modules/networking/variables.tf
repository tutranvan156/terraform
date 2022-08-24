variable "project" {
  type        = string
}

variable "vpc_cidr" {
  type        = string
  description = "IP address of vpc"
}

variable "private_subnets" {
  type        = list(string)
  description = "List private subnet in VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "List public subnet in VPC"
}

variable "database_subnets" {
    type = list(string)
}




