
data "aws_ami" "sg" {
  most_recent = true
  name_regex  = "RHEL-DevOps-Practice"
  owners = ["973714476881"]
}