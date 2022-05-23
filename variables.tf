variable pepname {
    type = string
    default = ""
}
variable "peplocation" {
    type = string
    default = ""
}

variable "pepservicename" {
    type = string
    default = ""
}

variable "pepvnet" {
    type = string
    default = ""
}

variable "pepsubnet" {
    type = string
    default = ""
}

variable "pepvnetrg" {
    type = string
    default = ""
}

variable "pepacrname" {
    type = string
}

variable "pepacrrg" {
    type = string
}

variable "peprg" {
    type = string
}

variable "endpointnetwork" {
    type = map
}

variable "dnsentryname" {
  type = string
}
variable "dnsrg" {
  type = string
}
variable "dnsentrytarget" {
  type = string
}
