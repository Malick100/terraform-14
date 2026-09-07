module "vpc" {
  source          = "../../modules/vpc"
  vpc_cider_block = "192.168.0.0/16"
  vpc_name        = "Dev-vpc"
}