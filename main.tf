provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "migration" {
  bucket = "terraform-migration-aditya-2026"
}

resource "aws_s3_bucket_versioning" "migration" {
  bucket = aws_s3_bucket.migration.id

  versioning_configuration {
    status = "Enabled"
  }
}