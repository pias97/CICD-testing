provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  subnet_id = "subnet-0394c8cbfe3b035e0"
  key_name = "usual-login"
}
