variable "ami" {
  type = string
  default = "ami-0ae8f15ae66fe8cda"
  description = "AMI ID"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "Type of instance"
}

variable "instance_name" {
  type = string
  default = "Dev-instance"
  description = "Name of instance"
}