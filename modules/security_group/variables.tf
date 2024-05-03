variable "region" {
  description = "AWS region where the security group will be created"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the security group will be associated"
  type        = string
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress rules"
  type        = list(any)
}

variable "egress_rules" {
  description = "List of egress rules"
  type        = list(any)
}

