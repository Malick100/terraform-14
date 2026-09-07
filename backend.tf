terraform {
  backend "s3" {
    bucket       = "terraform-mf-2026"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}
