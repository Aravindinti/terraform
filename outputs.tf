output "s3_bucket_name" { value=module.s3.bucket_name description="Bucket Name" }
output "ec2_instance_id" { value=module.ec2.instance_id }
output "iam_profile" { value=module.iam.instance_profile_name }
output "security_group_id" { value=module.security_group.sg_id }