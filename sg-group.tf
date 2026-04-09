resource "aws_instance" "mi_ec2" {
  ami                    = "ami-0fa8aad99729521be"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.subnet_publica_1.id
  vpc_security_group_ids = [aws_security_group.ssh_access.id]

  monitoring           = true
  ebs_optimized        = true
  iam_instance_profile = aws_iam_instance_profile.profile_ec2.name

  metadata_options {
    http_tokens = "required"
  }

  root_block_device {
    encrypted = true
  }

  tags = { Name = "MY-EC2-Instance" }
}