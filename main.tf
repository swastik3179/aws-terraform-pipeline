provider "aws" {
  region = var.location
}

module "ec2" {
  source        = "./modules/ec2_instance"
  instance_type = var.instance_type
  tag           = var.tag
}
