

resource "aws_autoscaling_attachment" "app" {

  autoscaling_group_name = var.autoscaling_group_name

  lb_target_group_arn = aws_lb_target_group.app.arn
}
