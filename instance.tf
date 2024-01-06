resource "aws_instance" "ec2a" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.sub-1a.id
  user_data = file("script.sh")
  security_groups = [ aws_security_group.sg.id ]
}
resource "aws_instance" "ec2b" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.sub-1b.id
  user_data = file("script.sh")
  security_groups = [ aws_security_group.sg.id ]
}
