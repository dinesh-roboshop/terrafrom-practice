variable "tags_environment" {
  type    = string
  default = "dev"
}

variable "project" {
  type    = string
  default = "roboshop"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "zone_name" {
  type    = string
  default = "dineshdevops.shop"
}

 variable "common_tags" {
    default = {
      environment = "dev"
      project = "roboshop"
      terraform = "yes"

    }

 }