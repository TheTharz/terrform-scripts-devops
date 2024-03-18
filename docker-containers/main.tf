# terraform {
#   required_providers {
#     docker = {
#       source  = "kreuzwerker/docker"
#       version = "3.0.2"
#     }
#   }
# }

# provider "docker" {
#   host = "unix:///var/run/docker.sock"
# }

# # Pulls the image
# resource "docker_image" "ubuntu" {
#   name = "ubuntu:latest"
# }

# # Create a container
# resource "container" "ubuntu_container" {
#   image = docker_image.ubuntu.image_id
#   name  = "ubuntu_container"
# }

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }

}
provider "docker" {
  
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:22.04"
  keep_locally = true
}

resource "docker_container" "ubuntu_container" {
  image = docker_image.ubuntu.image_id
  name  = "ubuntu_container"
  ports {
    internal = 80
    external = 8080
  }
}
