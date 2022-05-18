provider "aws" {
  profile = "default"
  region  = "us-east-2"
  version = "3.53.0"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}