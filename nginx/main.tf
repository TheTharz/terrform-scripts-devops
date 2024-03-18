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

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx_container" {
  image = docker_image.nginx.name
  name  = "nginx_container"
  ports {
    internal = 80
    external = 8080
    #if can not access in the localhsot try editing the vagrant file forward port comment
    #has to configure
  }
  
}