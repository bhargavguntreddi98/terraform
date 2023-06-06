variable "Region" {
  default = "us-east-1" # it will assign the region "us-east-1" to the provider
}

variable "ZONE1" {
  default = "us-east-1a" # zones are usually considerer as sub branch of regions
}

variable "ZONE2" {
  default = "us-east-1b"
}

variable "AMIS" { # AMI ids changes from region to region
  type = map(any)
  default = {
    us-east-1 = "ami-053b0d53c279acc90" # default ami-id of the region us-east-1 
    us-east-2 = "ami-01107263728f3bef4" # default ami-id of the region us-east-2
  }
}
