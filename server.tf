provider "aws" {
region = "us-east-2"
}
resource "aws_instance" "my-meghraj" {
  ami = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  #key_name = "gagan-import"

  tags = {
    Name = "Meghraj-server"
    env = "Development"
    owner = "Meghraj"
  }
  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /tmp/inv"
  }
}

