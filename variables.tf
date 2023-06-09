variable "domain_name" {
  type        = string
  description = "The domain name for the website."
}

variable "bucket_name" {
  type        = string
  description = "The name of the bucket without the www."
}

variable "common_tags" {
  description = "Common tags you want applied to all components."
}