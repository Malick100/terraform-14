module "vpc" {
  source          = "../../modules/vpc"
  vpc_cider_block = "172.120.0.0/16"
  vpc_name        = "Prod-vpc"
}