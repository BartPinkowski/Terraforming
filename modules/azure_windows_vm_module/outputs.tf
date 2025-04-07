// VM outputs

output "vm_id" {
  description = "The ID of the virtual machine"
  value       = azurerm_windows_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the virtual machine"
  value       = azurerm_windows_virtual_machine.vm.name
}


output "private_ip_address" {
  description = "The private IP address of the virtual machine"
  value       = azurerm_windows_virtual_machine.vm.private_ip_address
}

output "public_ip_address" {
  description = "The public IP address of the virtual machine"
  value       = azurerm_windows_virtual_machine.vm.public_ip_address
}

// NIC outputs

output "nic_id" {
  description = "The ID of the network interface"
  value       = azurerm_network_interface.nic.id
}