resource "aws_instance" "Demo" {
  ami           = "ami-06ca3ca175f37dd66"
  count         = 1
  instance_type = var.instance_t
  tags = {
    Name      = "Test-dev-server"
    Terraform = "true"
    Owner     = "dev"
    env       = "dev"

  }
}
