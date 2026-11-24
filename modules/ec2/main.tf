variable "environment" {type=string}
variable "ami_id" {type=string}
variable "instance_type" {type=string}
variable "role_name" {type=string}
variable "security_group_id" {type=string}
resource "aws_instance" "this" 
{ 
ami=var.ami_id
instance_type=var.instance_type
iam_instance_profile=var.role_name
vpc_security_group_ids=[var.security_group_id]
user_data=file("${path.root}/userdata.sh")
 tags={Name="${var.environment}-ec2",ManagedBy="Terraform"} }
output "instance_id" { value=aws_instance.this.id }