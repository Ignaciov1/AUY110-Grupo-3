resource "aws_security_group" "ssh_access" {
  name        = "ssh-access"
  description = "Permitir acceso SSH restringido"
  vpc_id      = aws_vpc.mi_vpc.id

  ingress {
    description = "SSH desde mi IP segura"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["201.189.206.99/32"]
  }

  egress {
    description = "Salida restringida HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "ssh-access" }
}
