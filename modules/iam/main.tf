variable "environment" {type=string}
resource "aws_iam_role" "ec2_role" 
{ name="${var.environment}-ec2-role"
 assume_role_policy=jsonencode({Version="2012-10-17",Statement=[{Action="sts:AssumeRole",Effect="Allow",Principal={Service="ec2.amazonaws.com"}}]}) tags={ManagedBy="Terraform"} }
resource "aws_iam_instance_profile" "profile" { name="${var.environment}-profile" role=aws_iam_role.ec2_role.name }
output "instance_profile_name" { value=aws_iam_instance_profile.profile.name }