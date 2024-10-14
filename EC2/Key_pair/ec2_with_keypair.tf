resource "aws_key_pair" "deployer" {
  key_name   = "Projectkey1"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0g+jYPLJinH/7tWAKkkUKV/nXKoEC/niuEBQzU/PFqEHvC6fNyU22yu0QiJ2Rh1XiLuKoACPjq0dA+bpv+kY3TQYl5q0xx7+QD/sb+S69FvP2nBEHqGihuffBad3YishM9zH+gYckNzXKjqcIZu5ft7SPWE41AvMq7GssoiEXt4Ebaf/W5LccMbvmaL0hNgUNGGf9VB+QrtsBG0+2mRdkPIxaQ0j95GhHAfh8/iZIvLNsup3mhCRSSRMrRYeJJuEJYkDrb41PciNESzTkhhXCGuMbOnoZ4+wJ7MCLklnCxEA/oC2byHxRcJCLDq9dcW7shxgwda+yyKGGQFCBaCDh"
}

resource "aws_instance" "web1" {
  ami           = "ami-05a5f6298acdb05b6"
  instance_type = "t2.micro"
  key_name = "projectkey1"
  depends_on = [aws_key_pair.deployer]

  tags = {
    Name = "HelloWorld"
  }
}
