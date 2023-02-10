variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "env" {
  default = "dev"
}

variable "subnet_cidrs" {
  type = list(string)
  default = ["10.0.3.0/24"]
}
variable "private_subnet_cidrs" {
  default = [
    "10.0.11.0/24"
  ]
}