variable "name_server" {
    default = "docker_teste_zup_caddy"
}

variable "key_name" {
    default = "daniloreisservers"
}

variable "ami_select" {
    default = "ami-04505e74c0741db8d"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "vpc_security_group_ids" {
    default = ["sg-0cea591e837244700"]
}

variable "subnet_id" {
    default = "subnet-06511e6ff64e724e8"
}

variable "vpc_id" {
    default = "vpc-0e0fb9e45d5e86b24"
}




