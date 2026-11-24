module "iam" { 
    source="./modules/iam"
 environment=var.environment }

module "s3" { 
    source="./modules/s3" bucket_name=var.bucket_name
 environment=var.environment }

module "security_group" { 
    source="./modules/security_group"
 environment=var.environment
  vpc_id=var.vpc_id }
  
module "ec2" { source="./modules/ec2"
 environment=var.environment
  ami_id=var.ami_id
   instance_type=var.instance_type
    role_name=module.iam.instance_profile_name
     security_group_id=module.security_group.sg_id }