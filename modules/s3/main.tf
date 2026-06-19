resource "aws_s3_bucket" "app_bucket" {
  bucket        = "${var.environment}-${var.bucket_name_suffix}"
  force_destroy = true

  tags = { Name = "${var.environment}-storage" }
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.app_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}