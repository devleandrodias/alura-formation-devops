module "aws_prod" {
  source = "../../infra"

  aws_region = "us-east-1"
  ssh_key_name = "IaC-Prod"
  instance_type = "t2.micro"
}