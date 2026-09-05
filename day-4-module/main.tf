module "vpc" {
    source = "./module/vpc"
    vpc_cidr = "10.0.0.0/16"
    public_subnet_cidr = "10.0.0.0/22"
    private_subnet_cidr = "10.0.4.0/22"
    public_az =  "us-west-2a"
    private_az =  "us-west-2b"
    sg_name =  "my_sg"
    http_port =  80
    ssh_port = 22
}

module "ec2" {
    source = "./module/ec2"
    ami    = "ami-0bea529386a62a2ad"
    instance_type = "t3.micro"
    key_name =  "abhi"
    sg_id = module.vpc.sg_id
    private_subnet_id =  module.vpc.private_subnet_id
    public_subnet_id = module.vpc.public_subnet_id
}

