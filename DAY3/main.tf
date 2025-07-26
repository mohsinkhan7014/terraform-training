provider "azurerm" {
  features {}
   
   client_id = var.client_id
   client_secret = var.client_secret
    tenant_id = var.tenant_id
    subscription_id = var.subscription_id
    
}

# resource "random_string" "random" {
#   length           = 2
#   special          = false
#   upper            = false
# }

resource "azurerm_resource_group" "rg-object" {
  count = var.vm_count
  name     = "${var.resource_group_name}-${count.index}"
  location = var.location
  tags = var.vm_tags 
}

output "rg-names" {
  value = azurerm_resource_group.rg-object[*].name
}


resource "azurerm_resource_group" "rg-object-1" {
  name     = var.rg-object.name
  location = var.rg-object.location
  tags     = var.rg-object.tags

}

output "rg-names1" {
  value = azurerm_resource_group.rg-object-1[*].name
}
