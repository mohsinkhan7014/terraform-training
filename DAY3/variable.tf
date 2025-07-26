/*
The name of a variable can be any valid identifier except the following:
source, version, providers, count, for_each, lifecycle, depends_on, locals.
*/
// types 
// string, number, bool, list, map, object, tuple
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
 
}
variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
    
}

variable "vm_count" {
  description = "The number of virtual machines to create"
  type        = number

}

variable "vm_tags" {
  description = "A map of tags to assign to the virtual machines"
  type        = map(string)
    default     = {
        environment = "development"
        owner       = "admin"
    }

}

variable "rg-object" {
  description = "Resource group object"
  type        = object({
    name     = string
    location = string
    tags     = map(string)
  })
  default = {
    name     = "default-rg"
    location = "East US"
    tags     = {
        environment = "QA"
        owner       = "Mohsin"
    }
  }
  
}

variable "client_id" {
  description = "Azure Client ID for authentication"
  type        = string
  sensitive   = true
  # Set this via environment variable: TF_VAR_client_id
}

variable "client_secret" {
  description = "Azure Client Secret for authentication"
  type        = string
  sensitive   = true
  # Set this via environment variable: TF_VAR_client_secret
}

variable "tenant_id" {
  description = "Azure Tenant ID for authentication"
  type        = string
  sensitive   = true
  # Set this via environment variable: TF_VAR_tenant_id
}

variable "subscription_id" {
  description = "Azure Subscription ID for authentication"
  type        = string
  sensitive   = true
  # Set this via environment variable: TF_VAR_subscription_id
}
