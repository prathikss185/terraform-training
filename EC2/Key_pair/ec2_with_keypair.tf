resource "aws_key_pair" "deployer" {
  key_name   = "Ubuntu2K"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCIsNloY7jGCeZr8dEDw3ixabeVT1uNPAuSgpsglJjvwyXuRg4sX9URYm/nrUx2U3YWWa1SHBHLRUki8ZlVQQs3f0DxPp9GH8ypnuFgqx6GtUJDnJhxb+tzWyHL9v/7cNplfCR8XzGDtzxcp1nVmhhCZu7WwbONI/gfMBF1nhUmw8YCILQ6zIlMj0buVX7wzLSI7YlFb71CRgDzP3uWT3y30rwrrn4h0ouWYteqC99GV3OZh1+RrXyCxS15TwJ8sc7e5WkW52+5blg4/dsyfJlvpEkXZfQDqxWrZget7TPDTCsjwrMcT6vKhtIi2t8MUkdjYO5iGUO+X3Wo3C/WVv2Z"
}

resource "aws_instance" "web1" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name = "Ubuntu2KP"
  depends_on = [aws_key_pair.deployer]

  tags = {
    Name = "HelloWorld"
  }
}
