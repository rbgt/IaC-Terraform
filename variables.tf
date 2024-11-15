variable "resource_group_location" {
  type        = string
  default     = "West Europe"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "tenant_id" {
  type        = string
  default     = "d0eabb3d-a232-4374-ac61-2c4f5849a522"
  description = "The Azure AD tenant ID."
}

variable "client_id" {
  type        = string
  default     = "e7ee42bd-aa24-44d5-b519-cdc467ed3cfd"
  description = "The Azure AD client ID."
}