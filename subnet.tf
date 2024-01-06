resource "aws_subnet" "sub-1a" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  cidr_block = "10.0.0.0/25"
  tags = {
    Name = "lb-subnet-1a"
  }
}
resource "aws_subnet" "sub-1b" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  cidr_block = "10.0.0.128/25"
  tags = {
    Name = "lb-subnet-1b"
  }
}