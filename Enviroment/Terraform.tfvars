rgs = {
  rg1 = {
    name     = "shanky_resource_group_1"
    location = "westus2"
  }
  #   rg2 = {
  #     name     = "shanky_resource_group_2"
  #     location = "westus2"
  #   }
}
vnet = {
  vnet1 = {
    name                = "shashank-vnet1"
    resource_group_name = "shanky_resource_group_1"
    location            = "westus2"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "shashank-subnet1"
    resource_group_name  = "shanky_resource_group_1"
    virtual_network_name = "shashank-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }

  #   subnet2 = {
  #     name                 = "shashank-subnet2"
  #     resource_group_name  = "shanky_resource_group_2"
  #     virtual_network_name = "shashank-vnet1"
  #     address_prefixes     = ["10.0.2.0/24"]
  #   }
}
public_ips = {
  public_ip1 = {
    name                = "shashank-public-ip1"
    resource_group_name = "shanky_resource_group_1"
    location            = "westus2"
    allocation_method   = "Static"
  }

  #   public_ip2 = {
  #     name                = "shashank-public-ip2"
  #     resource_group_name = "shanky_resource_group_2"
  #     location            = "westus2"
  #     allocation_method   = "Static"
  #   }
}
virtual_machines = {
  vm1 = {
    vm_name              = "frontend-vm1"
    resource_group_name  = "shanky_resource_group_1"
    location             = "westus2"
    vm_size              = "Standard_D2als_v7"
    admin_username       = "Shankyuser"
    admin_password       = "Shanky@140121"
    nic_name             = "shashank-nic1"
    subnet_name          = "shashank-subnet1"
    virtual_network_name = "shashank-vnet1"
  }

  #   vm2 = {
  #     vm_name              = "frontend-vm2"
  #     resource_group_name  = "shanky_resource_group_2"
  #     location             = "westus2"
  #     vm_size              = "Standard_D2als_v7"
  #     admin_username       = "Shankyuser"
  #     admin_password       = "Shanky@140121"
  #     nic_name             = "shashank-nic2"
  #     subnet_name          = "shashank-subnet2"
  #     virtual_network_name = "shashank-vnet1"
  #   }
}