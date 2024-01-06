resource "aws_lb_target_group" "tg" {
  health_check {
    interval = "10"
    path = "/"
    protocol = "HTTP"
    timeout = "5"
    healthy_threshold = "5"
    unhealthy_threshold = "5"
  }
  name = "target-group"
  vpc_id = aws_vpc.vpc.id
  port = "80"
  protocol = "HTTP"
  target_type = "instance"
}
