module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "fargate-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-1a", "us-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway    = true
  create_igw            = true

  manage_default_security_group = false

  tags = {
    Terraform = "true"
    Environment = "test"
  }
}
