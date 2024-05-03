module "aws_security_group_jenkins" {
  source       = "./modules/security_group"
  region       = "us-west-2"
  vpc_id       = "vpc-0e30707940dc057a8"
  sg_name      = "UB3-Jenkins-SG"
  ingress_rules = var.jenkins_ingress
  egress_rules = var.jenkins_egress
}

module "aws_security_group_UB3-SUPPORT" {
  source       = "./modules/security_group"
  region       = "us-west-2"
  vpc_id       = "vpc-0e30707940dc057a8"
  sg_name      = "UB3-SUPPORT-31334d56"
  ingress_rules = var.ub3-support_ingress
  egress_rules = var.ub3-support_egress
}