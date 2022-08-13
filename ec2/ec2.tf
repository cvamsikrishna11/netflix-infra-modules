resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = "subnet-08aed7fb8022566e4"
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "netflix-web-server"
  }
}