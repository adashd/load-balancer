resource "aws_lb" "lb" {
  name = "app-alb"
  internal = false
  ip_address_type = "ipv4"
  load_balancer_type = "application"
  subnets = [aws_subnet.sub-1a.id,aws_subnet.sub-1b.id]
  security_groups = [aws_security_group.sg.id]
  tags = {
    Name = "app-alb"
  }
}
