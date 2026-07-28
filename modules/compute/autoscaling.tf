

resource "aws_autoscaling_group" "app" {

  name = "${var.project_name}-${var.environment}-asg"

  desired_capacity = var.desired_capacity

  min_size = var.min_size

  max_size = var.max_size

  vpc_zone_identifier = var.private_subnet_ids

  health_check_type = "EC2"

  launch_template {

    id = aws_launch_template.app.id

    version = "$Latest"
  }

  tag {

    key = "Name"

    value = "${var.project_name}-${var.environment}-app"

    propagate_at_launch = true
  }
}
