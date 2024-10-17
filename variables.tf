variable "tags" {
  default = {
    location    = "eastasia"
    environment = "prd"
    customer    = "Learn"
    owner       = "Somebody"
    email       = "somebody@mail.com"
    title       = "Engineer"
    department  = "IS"
  }
}

variable "azurerm_resources" {
  default = {
    rg = [
      {
        name     = "rg-vm-prd-001"
        location = "eastasia"
        tags = {
          project = "VM"
        }
        role_assignment = []
      }
    ]
    rsv = []
    vm = [
      {
        component            = "vm-prd-app"
        location             = "eastasia"
        availability_options = "availability_zone"
        tags = {
          project = "VM"
        }
        role_assignment = []
        name            = ["vmappnode01", "vmappnode02"]
        config = {
          type         = "linux"
          user         = "oper"
          pass         = "Changeme@Changeit"
          size         = "Standard_B1ls"
          publisher    = "OpenLogic"
          offer        = "CentOS-LVM"
          sku          = "7-lvm-gen2"
          version      = "latest"
          os_disk_type = "Standard_LRS"
          backup       = false
        }
        extension = []
        data_disk = []
        network = [
          {
            name            = 1
            public          = false
            ip_forwarding   = false
            accelerated     = false
            subnet          = "snet-p-network-vm-eastasia-001"
            virtual_network = "vnet-p-network-vm-eastasia-001"
            resource_group  = "rg-p-network-rds-eastasia-001"
            lb_public       = false
            lb_spec         = []
          }
        ]
      }
    ]
  }
}