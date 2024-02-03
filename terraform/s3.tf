# S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "prembly-test-bucket"

  tags = {
    Name        = "MPrembly"
  }
}