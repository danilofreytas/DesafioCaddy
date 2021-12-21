module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
  monitoring             = true
  name                   = "${var.name_server}"
  ami                    = "${var.ami_select}"
  instance_type          = "${var.instance_type}"
  vpc_security_group_ids = "${var.vpc_security_group_ids}"
  subnet_id              = "${var.subnet_id}"
  key_name               = "${var.key_name}"
  tags = {
    Terraform   = "true"
    Environment = "dev"
    Project     = "Zup"
  }
}
module "efs" {
  source = "terraform-aws-modules/efs-filesystem/aws"
  name                    = "${var.name_server}"
  allowed_security_groups = "${var.vpc_security_group_ids}"
  subnet_id               = "${var.subnet_id}"
  vpc_id                  = "${var.vpc_id}"
}