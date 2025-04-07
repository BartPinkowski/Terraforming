output "vm_id" {
  description = "The ID of the virtual machine"
  value       = azurerm_windows_virtual_machine.vm.id
}

output "nic_id" {
  description = "The ID of the network interface"
  value       = azurerm_network_interface.nic.id
}