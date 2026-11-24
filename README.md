Production-style Terraform project with remote backend configuration, IAM, S3, Security Group, EC2, tagging standards, outputs and multi-environment support.

terraform apply \
-var-file=environments/prod/prod.tfvars \
-auto-approve
``

terraform import aws_s3_bucket.bucket my-prod-bucket