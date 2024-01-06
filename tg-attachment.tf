resource "aws_lb_target_group_attachment" "tga" {
 target_group_arn = aws_lb_target_group.tg.arn
 target_id = aws_instance.ec2a.id
}
resource "aws_lb_target_group_attachment" "tgb" {
 target_group_arn = aws_lb_target_group.tg.arn
 target_id = aws_instance.ec2b.id
}