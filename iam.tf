data "aws_iam_role" "lab_role" {
  name = "LabRole"
}

resource "aws_iam_instance_profile" "profile_ec2" {
  name = "ec2_profile_v4"
  role = data.aws_iam_role.lab_role.name
}