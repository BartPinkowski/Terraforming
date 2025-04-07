variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name"
  type        = string
}

variable "location" {
  description = "The Azure region"
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "The administrator username for the VM"
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the VM"
  type        = string
  sensitive   = true
}

// added variables nor NIC

variable "network_interface_ids" {
  description = "List of network interface IDs to attach to the VM"
  type        = list(string)
}

variable "availability_set_id" {
  description = "The ID of the availability set, if any"
  type        = string
  default     = null
}

variable "zones" {
  description = "List of Availability Zones to use for the VM"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}



variable "subnet_id" {
  description = "The ID of the existing subnet"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group containing the subnet"
  type        = string
}

variable "location" {
  description = "The Azure region for resources"
  type        = string
}