
resource "aws_instance" "ec2" {
  ami = var.ami
  availability_zone = var.availability_zone
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.lotus_sgt.name]
  key_name = var.key_name

  tags={
    Name = "ec2"
  }
}

