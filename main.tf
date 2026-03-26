resource aws_default_vpc default{

}

resource aws_security_group sg{
    name = "Pipeline"
    vpc_id = aws_default_vpc.default.id

    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }

    ingress{
        from_port = 80
        to_port = 80
        protocol = "tcp"
    }

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
    }

    tags = {
        name = "Terraform "
    }
}


resource aws_instance terra{
    ami = "ami-0f559c3642608c138"
    instance_type = "t3.micro"
   
    tags = {
        name = "TerraformServer"
    }

    root_block_device{
        volume_size = 8
        volume_type = "gp3"
    }
}