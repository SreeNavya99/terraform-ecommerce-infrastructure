
resource "aws_db_instance" "main" {

  identifier = "${var.project_name}-${var.environment}-db"

  allocated_storage = 20

  engine = "mysql"

  engine_version = "8.0"

  instance_class = var.instance_class

  db_name = var.db_name

  username = var.db_username

  password = var.db_password

  db_subnet_group_name = aws_db_subnet_group.main.name

  vpc_security_group_ids = [
    var.rds_security_group_id
  ]

  publicly_accessible = false

  skip_final_snapshot = true

  deletion_protection = false

  multi_az = false

  storage_encrypted = true

  tags = {
    Name = "${var.project_name}-${var.environment}-db"
  }
}
