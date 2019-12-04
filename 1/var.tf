variable "failover_replica_ip_configuration" {
  description = "The ip configuration for the failover replica instances."
  type = object({
    authorized_networks = list(map(string))
    ipv4_enabled        = bool
    private_network     = string
    require_ssl         = bool
  })
  default = {
    authorized_networks = []
    ipv4_enabled        = true
    private_network     = null
    require_ssl         = null
  }
}

variable "scalr_aws_access_key" {
  type = string
  }

variable "scalr_aws_secret_key" {
  type = string
  }

variable "instance_count" {
  type = string
  default = "1"
  }

variable "region" {
  type = string
  default = "us-east-1"
   }

variable "instance_type" {
  type = string
  default = "t2.nano"
}

variable "network" {
  type = string
  default = "vpc-596aa03e"
 }

variable "subnet" {
  type = string
default = "subnet-7e3fd71a"
  }

variable "associate_public_ip" {
  type    = bool
  default = true
}

variable "tags" {
  type = map
  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
  }
}

variable "hide" {
type = string
}
