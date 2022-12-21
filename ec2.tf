resource "aws_instance" "web" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t3.micro"
  count = 3

  tags = {
    Name = "terraform-${count.index}"
  }
}
