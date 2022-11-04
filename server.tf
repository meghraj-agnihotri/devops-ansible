provider "aws" {
region = "us-east-2"
}
resource "aws_instance" "my-meghraj2" {
  ami = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  key_name = "Meghraj_jenkins"

  tags = {
    Name = "Meghraj-server2"
    env = "Development"
    owner = "Meghraj"
  }
  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /tmp/inv"
  }
}

