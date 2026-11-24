variable "bucket_name" {type=string}
variable "environment" {type=string}
resource "aws_s3_bucket" "this" { bucket=var.bucket_name tags={Environment=var.environment,ManagedBy="Terraform"} }
resource "aws_s3_bucket_versioning" "versioning" { bucket=aws_s3_bucket.this.id versioning_configuration { status="Enabled" } }
output "bucket_name" { value=aws_s3_bucket.this.bucket }