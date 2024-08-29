resource "aws_instance" "dev" {
    vpc_id = aws_vpc.dev.id
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
    associate_public_ip_address = true
}
