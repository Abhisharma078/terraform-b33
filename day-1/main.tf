resource "aws_instance" "ec2" {
    ami = "ami-0bea529386a62a2ad"
    instance_type = "t3.micro"
    key_name = "abhi"
    vpc_security_group_ids = ["sg-04e4cffd9a88111c8"]
    tags = {
        Name = "my_ec2"
    }
}

