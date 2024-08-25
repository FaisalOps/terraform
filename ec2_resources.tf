# Create ec2 instances
resource "aws_instance" "web" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  key_name        = "cicd-jenkins"
  availability_zone = "us-east-1a"
  vpc_security_group_ids      = [aws_security_group.public_sg.id]
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = true
  tags = {
    Name = "web_instance"
  }
}
