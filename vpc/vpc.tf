resource "aws_vpc" "dev" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "dev"
    }
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "public"
    }
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.0.2.0/24"

    tags = {
        Name = "private"
    }
}

resource "aws_internet_gateway" "dev" {
    vpc_id = aws_vpc.dev.id

    tags = {
        Name = "dev"
    }
}

resource "aws_route_table" "dev_public_route" {
    vpc_id = aws_vpc.dev.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.dev.id
    }

    tags = {
        Name = "dev_public_route"
    }
}