# main.tf
module "vpc" {
  source      = "./modules/vpc"
  environment = var.environment
}

module "s3" {
  source      = "./modules/s3"
  environment = var.environment
}

module "ec2" {
  source        = "./modules/ec2"
  environment   = var.environment
  vpc_id        = module.vpc.vpc_id
  public_subnet = module.vpc.public_subnet_id
}