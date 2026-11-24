locals {
 common_tags = {
  Environment = var.environment
  Project = "data-platform"
  Owner = "data-engineering"
  ManagedBy = "Terraform"
  CostCenter = "DE001"
 }
}