provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "This is nature of ami server"
}

variable "instance_type" {
  description = "This is dev instance type of server"
}

variable "key_name" {
  description = "This is key for server"
}

resource "aws_instance" "test" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
}