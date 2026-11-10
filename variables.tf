# variables.tf

variable "location" {
  description = "Primary Azure region for resources"
  type        = string
  default     = "eastus2"
}

variable "resource_group_name" {
  description = "Name of the core resource group"
  type        = string
  default     = "rg-core-infrastructure-prod"
}

variable "environment" {
  description = "Environment name (e.g., dev, prod)"
  type        = string
  default     = "prod"
}
