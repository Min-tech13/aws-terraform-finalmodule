variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "env" {
  default = "dev"
}

variable "public_subnet_cidrs" {
  type = list(string)
  default = []
}
variable "private_subnet_cidrs" {
  default = [
    "10.0.11.0/24"
  ]
}