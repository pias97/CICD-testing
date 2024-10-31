module "App1" {
  source = "./modules/ec2"
  ami_value = "ami-0866a3c8686eaeeba"                 #use your preffered ami
  instance_type_value = "t2.micro"                    #use your preffered instance type
  subnet_id_value = "subnet-0394c8cbfe3b035e0"        #use your preffered subnet
  region = "us-east-1"
}


module "App2" {
  source = "./modules/ec2"
  ami_value = "ami-0ea3c35c5c3284d82"                 #use your preffered ami
  instance_type_value = "t2.micro"                    #use your preffered instance type
  subnet_id_value = "subnet-0aff09ffc2869df62"        #use your preffered subnet
  region = "us-east-2"
}