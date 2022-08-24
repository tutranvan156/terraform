variable "project" {
    type = string
}
variable "vpc" {
  type        = any
  description = "vpc of database"
}

variable "sg" {
  type        = any
  description = "sg of database"
}
