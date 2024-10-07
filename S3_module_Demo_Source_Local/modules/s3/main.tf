resource "aws_s3_bucket" "example" {
  bucket = var.bucket

  tags = {
    Name        = "pickuptruck1"
    Environment = var.env
  }
}
