resource "aws_ec2" "main"{
  ami_id = var.ami_id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id

  tags = {
    name = "server1"
  }
  
}
