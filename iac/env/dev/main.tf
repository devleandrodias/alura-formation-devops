module "aws_dev" {
  source = "../../infra"

  aws_region = "us-east-1"
  ssh_key_name = "IaC-Dev"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = module.aws_dev.public_ip
}