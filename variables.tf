# tags & basic vars
variable "repo" {
  description = "where code for resource resides"
}

variable "infra" {
  description = "specific code / repo for infrastructure"
}

variable "subscription_id" {}

variable "tenant_id" {}

variable "environment" {}

variable "application" {
  description = "what app this resource is for"
  default     = "learning"
}

variable "creator" {
  description = "what IaC language"
  default     = "Terraform"
}

variable "location" {
  description = "region where resources are created"
  default     = "westus2"
}

# database
variable "admin_username" {}
variable "db_password" {}

# networking
variable "vpc_cidr" {
  description = "network cidr block"
  default     = "10.0.0.0/21"
}

variable "dmz" {
  description = "subnet for dmz"
  default     = "10.0.0.0/24"
}

variable "public1" {
  description = "public subnet1 cidr block"
  default     = "10.0.1.0/24"
}

variable "public2" {
  description = "public2 subnet2 cidr block"
  default     = "10.0.2.0/24"
}

variable "private1" {
  description = "subnet3 cidr block"
  default     = "10.0.3.0/24"
}

variable "private2" {
  description = "subnet3 cidr block"
  default     = "10.0.4.0/24"
}

#variable "route_table_name" {}

//variable "vmsize" {}

variable "tier" {
  description = "service tier"
  default = "GeneralPurpose"
}

variable "ssh_key" { description = "file for aks module"}
variable "db_server_name" {}
variable "resource_group_name" {}
variable "name" {}
variable "administrator_login" {}
variable "administrator_login_password" {}
variable "db_version" {}
variable "sku_name" {}
variable "storage_mb" {}
variable "auto_grow_enabled" {}
variable "backup_retention_days" {}
variable "geo_redundant_backup_enabled" {}
variable "infrastructure_encryption_enabled" {}
variable "public_network_access_enabled" {}
variable "ssl_enforcement_enabled" {}
variable "ssl_minimal_tls_version_enforced" {}