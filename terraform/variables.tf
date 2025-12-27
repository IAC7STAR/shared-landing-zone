variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}



variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "client_id" {
  description = "Service Principal client ID"
  type        = string
}

variable "client_secret" {
  description = "Service Principal client secret"
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "prefix" {
  description = "Organization prefix"
  type        = string
}

variable "hub_vnet_cidr" {
  description = "CIDR range for hub VNet"
  type        = string
}

variable "dev_spoke_vnet_cidr" {
  description = "CIDR range for dev spoke VNet"
  type        = string
}

variable "prod_spoke_vnet_cidr" {
  description = "CIDR range for prod spoke VNet"
  type        = string
}
