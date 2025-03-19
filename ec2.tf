resource "aws_instance" "web1" {
  ami           = "ami-08b5b3a93ed654d19"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id  
  key_name      = "jensen"  
  security_groups = []  

  tags = { Name = "WebServer1" }
}

resource "aws_instance" "web2" {
  ami           = "ami-08b5b3a93ed654d19"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id  
  key_name      = "jensen"  
  security_groups = []  

  tags = { Name = "WebServer2" }
}

resource "aws_instance" "database" {
  ami           = "ami-08b5b3a93ed654d19"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id  
  key_name      = "jensen"  
  security_groups = []  

  tags = { Name = "DatabaseServer" }
}
