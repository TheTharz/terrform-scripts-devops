variable "ami" {
  type = string
  default = "ami-08d70e59c07c61a3a"
  description = "The AMI to use for the server"
}
variable "region" {
  type = string
  default = "us-west-2"
  description = "The region to launch the server"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "The instance type to use for the server"
}

variable "tags" {
  type = map(string)
  default = {
    Name = "ExampleServerInstance"
  }
}