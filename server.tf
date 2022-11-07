provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "my-meghraj2" {
  ami = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  key_name = "meghraj2"

  tags = {
    Name = "Meghraj-server2"
    env = "Development"
    owner = "Meghraj"
  }
  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /tmp/inv"
  }
}

