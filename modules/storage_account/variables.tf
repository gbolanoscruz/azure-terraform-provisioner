# modules/storage_account/variables.tf

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "replication_type" {
  description = "Replication type (LRS, GRS, etc.)"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags to categorize resources"
  type        = map(string)
  default     = {}
}
