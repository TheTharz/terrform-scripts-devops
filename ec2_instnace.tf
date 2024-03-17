provider "aws"{
  # region "us-west-2"
  region = var.region
}

resource "aws_instance" "app_server" {
  # ami = "ami-830c94e3"
  ami           = var.ami
  # instance_type = "t2.micro"
  instance_type = var.instance_type
  tags = {
    # Name = "ExampleServerInstance"
    Name = var.tags["Name"]
  }
  
}