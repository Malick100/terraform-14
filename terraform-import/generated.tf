# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "example" {
  ami                                  = "ami-081b0a6eac00b4f53"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-1a"
  instance_type                        = "t3.micro"
  key_name                             = "week10"
  security_groups                      = ["launch-wizard-1"]
  subnet_id                            = "subnet-0100046debf70cf1c"
  tags = {
    Name = "dev-app-server-test"
  }
  tags_all = {
    Name = "dev-app-server"
  }
}