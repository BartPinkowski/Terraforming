variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "location" {
  description = "Azure location for resources"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the existing resource group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the existing subnet"
  type        = string
}

variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Administrator password for the VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "enable_public_ip" {
  description = "Whether to create a public IP for the NIC"
  type        = bool
  default     = false
}

variable "data_disks" {
  description = "List of data disk configurations"
  type = list(object({
    name                 = string
    lun                  = number
    disk_size_gb         = number
    storage_account_type = string
  }))
  default = []
}

variable "tags" {
  description = "Tags to assign to resources"
  type        = map(string)
  default     = {}
}
