resource "azurerm_resource_group" "RG" {
  for_each = var.RG
  name     = each.value.name
  location = each.value.location
}
resource "azurerm_resource_group" "RG" {
  for_each = var.RG
  name     = each.value.name
  location = each.value.location
}
module "SUBNET" {
    depends_on = [ module.VNET ]
  source = "../../Module/SUBNET"
subnet=var.subnet
}

module "vm" {
    depends_on = [ module.SUBNET ]
  source = "../../Module/VM"
  vm=var.vm
}
module "vm" {
    depends_on = [ module.SUBNET ]
  source = "../../Module/VM"
  vm=var.vm
}
