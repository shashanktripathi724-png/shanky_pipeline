module "resources" {
  source = "../Module/AzureRm_Resource_Group"
  RG     = var.rgs
}
module "vnet" {
  depends_on = [module.resources]
  source     = "../Module/AzureRm_Virtual_Network"
  vnet       = var.vnet
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../Module/AzureRm_Subnet"
  subnet     = var.subnet
}
module "public_ip" {
  depends_on = [module.resources]
  source     = "../Module/AzureRm_PublicIP"
  public_ip  = var.public_ips
}
module "virtual_machine" {
  depends_on      = [module.subnet, module.public_ip]
  source          = "../Module/AzureRm_Virtual_Machine"
  virtual_machine = var.virtual_machines
}