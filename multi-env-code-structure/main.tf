module "ec2" {
  source = "./module/ec2"
  env = var.env
}