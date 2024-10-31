provider "aws"{
    alias = "App1"
    region = "us-east-1"
}

provider "aws"{
    alias = "App2"
    region = "us-east-2"
}

resource "aws_instance" "example1" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  provider = aws.App1
  subnet_id = "subnet-0394c8cbfe3b035e0"
  key_name = "usual-login"
}

resource "aws_instance" "example2" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  provider = aws.App2
  subnet_id = "subnet-0394c8cbfe3b035e0"
  key_name = "usual-login"
}