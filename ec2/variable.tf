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
 variable "common_tags" {
    default {
      environment = "dev"
      project = "roboshop"
      terraform = "yes"

    }

 }