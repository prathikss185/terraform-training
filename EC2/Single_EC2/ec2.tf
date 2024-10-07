terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"

}

resource "aws_instance" "terraform_created" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-2"
  }
}





