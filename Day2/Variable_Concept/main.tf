variable "himansu_rg" {
  type = string
  default = "rg-variable-himansu"
}

variable "location" {
  type    = string
  //default = "Central India"

}
resource "azurerm_resource_group" "rg-object" { //changing the local name 
  name     = var.himansu_rg            //argument " Destroy, re-create while changing the argument
  location = "East  Us"
}



