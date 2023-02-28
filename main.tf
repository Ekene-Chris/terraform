resource "aws_vpc" "ekene-chris" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "gateway-subnet-one" {
  vpc_id            = aws_vpc.ekene-chris.id
  cidr_block        = "172.16.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "gateway-subnet-two" {
  vpc_id            = aws_vpc.ekene-chris.id
  cidr_block        = "172.16.2.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "gateway-subnet-three" {
  vpc_id            = aws_vpc.ekene-chris.id
  cidr_block        = "172.16.3.0/24"
  availability_zone = "us-west-2c"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_network_interface" "ekene-chris" {
  subnet_id   = aws_subnet.gateway-subnet-one.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "ekene-chris" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.ekene-chris.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}
resource "aws_key_pair" "deployer-key" {
  key_name   = "deployer-key"
  public_key = var.public_key
}