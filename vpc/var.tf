variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
  description = "The CIDR block for the VPC"
}

variable "private_subnet_cidr_block" {
  type = string
  default = "10.0.2.0/24"
  description = "Private subnet CIDR blocks"
}

variable "public_subnet_cidr_block" {
  type = string
  default = "10.0.1.0/24"
  description = "Public subnet CIDR blocks"
}

variable "availability_zones" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
  description = "A list of availability zones"
}
