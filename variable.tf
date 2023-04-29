variable "environment" {
  type    = string
  default = "dev"
}

variable "region_shortname" {
  type    = string
  default = "euw4"
}

variable "name" {
  type    = string
  default = "wdp"
}

variable "prefix" {
  type    = string
  default = "dummy"
}

variable "terraform_remote_state_bucket" {
  type    = string
  default = "parisaiacweudummy"
}

variable "project" {
  description = "The project id"
}

variable "region" {
  default = "europe-west4"
}

variable "zone" {
  default = "europe-west4-c"
}