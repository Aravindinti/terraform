variable "environment" {type=string}
variable "vpc_id" {type=string}
resource "aws_security_group" "sg" { name="${var.environment}-ec2-sg" vpc_id=var.vpc_id tags={ManagedBy="Terraform"} }
resource "aws_vpc_security_group_ingress_rule" "ssh" { security_group_id=aws_security_group.sg.id cidr_ipv4="0.0.0.0/0" from_port=22 to_port=22 ip_protocol="tcp" }
resource "aws_vpc_security_group_egress_rule" "all" { security_group_id=aws_security_group.sg.id cidr_ipv4="0.0.0.0/0" ip_protocol="-1" }
output "sg_id" { value=aws_security_group.sg.id }