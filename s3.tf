# S3 bucket for website (root domain) - website.co.uk
resource "aws_s3_bucket" "root_bucket" {
  bucket = var.bucket_name

  website {
    index_document = "index.html"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = var.common_tags
}

# S3 bucket for redirecting sub to root - www.website.co.uk
resource "aws_s3_bucket" "redirect_bucket" {
  bucket = "www.${var.bucket_name}"

  website {
    redirect_all_requests_to = "https://${var.domain_name}"
  }

  tags = var.common_tags
}