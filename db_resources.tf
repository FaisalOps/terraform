# Database subnet group
resource "aws_db_subnet_group" "db_subnet"  {
    name       = "db-subnet"
    subnet_ids = [aws_subnet.private.id]
}

# Create database instance
resource "aws_db_instance" "project_db" {
  allocated_storage    = 5
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  identifier           = "db-instance"
  db_name              = "project_db"
  username             = "admin"
  password             = "******"
  db_subnet_group_name = aws_db_subnet_group.db_subnet.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]  
  publicly_accessible = false
  skip_final_snapshot  = true
}