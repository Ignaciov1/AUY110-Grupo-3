data "aws_iam_role" "lab_role" {
  name = "LabRole"
}

resource "aws_iam_instance_profile" "profile_ec2" {
  name = "ec2_profile_${random_string.sufijo.result}" # <-- Así se inyecta el valor aleatorio
  role = data.aws_iam_role.lab_role.name
}