terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {
  # Configuration options
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:precise"
}

variable "environment" {
  description = "The environment to deploy to (e.g., dev, prod)"
  type        = string
}
