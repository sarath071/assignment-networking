provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  tags = { Name = "NewWebServer" }
}

output "instance_ip" {
  value = aws_instance.web.public_ip
}
