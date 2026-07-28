
module "networking" {
  source = "./modules/networking"

  project_name = var.project_name
  environment  = var.environment

  vpc_cidr = var.vpc_cidr

  public_subnet_1a_cidr = var.public_subnet_1a_cidr
  public_subnet_1c_cidr = var.public_subnet_1c_cidr

  private_subnet_1a_cidr = var.private_subnet_1a_cidr
  private_subnet_1c_cidr = var.private_subnet_1c_cidr

  az1 = var.az1
  az2 = var.az2
}
