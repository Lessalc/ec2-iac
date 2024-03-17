resource "aws_instance" "teste-terraform-ec2" {
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  key_name = "chave-gerenciamento-servicos" 
  subnet_id = var.subnet_luciano_id
  associate_public_ip_address = true

  tags = {
    Name = "teste-terraform-ec2"

  }
}

variable "subnet_luciano_id" {
  default = "subnet-058db234e61320d6e"
}
