resource_group_name = "RG-EASTUS-prod"
location            = "East US"
vm_count            = 6
vm_tags             = {
  environment = "PROD"
  owner       = "Mohsin"
 }

rg-object = {
  name     = "Imperva-RG-Dev"
  location = "East US"
  tags     = {
    environment = "DEV"
    owner       = "Mohsin"
  }
}
