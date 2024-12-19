terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "RHEL-DevOps-Practice"
  owners = ["973714476881"]
}