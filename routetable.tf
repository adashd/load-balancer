resource "aws_route_table" "routetb" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "lb-rt"
  }
}
resource "aws_route_table_association" "rta" {
  route_table_id = aws_route_table.routetb.id
  subnet_id = aws_subnet.sub-1a.id
}
resource "aws_route_table_association" "rtb" {
  route_table_id = aws_route_table.routetb.id
  subnet_id = aws_subnet.sub-1b.id
}
resource "aws_route" "route" {
  route_table_id = aws_route_table.routetb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}