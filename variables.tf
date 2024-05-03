variable "jenkins_ingress" {
    description = "sgrules"
    type = list(any)
}
variable "jenkins_egress" {
    description = "sgrules"
    type = list(any)  
}

# variable "ub3-support_ingress" {
#     description = "sgrules"
#     type = list(any)
# }
# variable "ub3-support_egress" {
#     description = "sgrules"
#     type = list(any)  
# }

variable "ub3-support_ingress" {
    description = "Ingress rules for UB3-SUPPORT security group"
    type = list(object({
    description = string
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
    security_groups = list(string)
  }))
}

variable "ub3-support_egress" {
  description = "sg-ub3-rules"
  type = list(object({
    description = string
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
    security_groups = list(string)
    ipv6_cidr_blocks = list(string)
  })) 
}