# RDS Instance
resource "aws_db_instance" "prembly_rds_instance" {
  identifier            = "my-rds-instance"
  engine                = "mysql"
  engine_version        = "5.7"
  allocated_storage     = 20
  instance_class        = "db.t2.micro"
  username              = "admin"
  password              = "password123" 
  db_subnet_group_name  = aws_db_subnet_group.my_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_security_group.id]
  apply_immediately = true
  backup_retention_period = 0
  skip_final_snapshot=true
}

# Security Group for RDS
resource "aws_security_group" "rds_security_group" {
  vpc_id = aws_vpc.main.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }

  tags = {
    Name = "rds-security-group"
  }
}
