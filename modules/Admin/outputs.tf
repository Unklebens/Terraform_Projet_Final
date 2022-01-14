output "admin-public" {
  description = "ID Serveur Admin"
  value       = aws_instance.Serveur-Admin.public_ip
}
output "admin-ip" {
  description = "IP Serveur Admin"
  value       = aws_instance.Serveur-Admin.private_ip
}