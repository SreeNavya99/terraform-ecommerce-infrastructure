

resource "aws_launch_template" "app" {

  name_prefix = "${var.project_name}-${var.environment}-"

  image_id = data.aws_ami.amazon_linux.id

  instance_type = var.instance_type

  iam_instance_profile {
    name = var.instance_profile_name
  }

  network_interfaces {

    associate_public_ip_address = false

    security_groups = [
      var.ec2_security_group_id
    ]
  }

  user_data = local.user_data

  tag_specifications {

    resource_type = "instance"

    tags = {
      Name = "${var.project_name}-${var.environment}-app"
    }
  }
}
