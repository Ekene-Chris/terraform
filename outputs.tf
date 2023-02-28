output "vm_id" {
  value = azurerm_linux_virtual_machine.linuxvm.id
}

output "vm_ip" {
  value = azurerm_linux_virtual_machine.linuxvm.public_ip_address
}

output "tls_private_key" { 
  value = tls_private_key.example_ssh.private_key_pem 
  sensitive = true
}
output "client_certificate" {
  value     = azurerm_kubernetes_cluster.kubernetes.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.kubernetes.kube_config_raw

  sensitive = true
}