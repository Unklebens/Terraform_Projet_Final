output "admin-id" {
	description = "ID Serveur Admin"
	value       = aws_instance.Serveur-Admin.id
}
output "admin-ip" {
	description = "IP Serveur Admin"
	value       = aws_instance.Serveur-Admin.private_ip
}