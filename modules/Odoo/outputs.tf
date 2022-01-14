output "odoo-id" {
	description = "ID Serveur Odoo"
	value       = aws_instance.Serveur-Odoo.id
}

output "odoo-ip" {
	description = "IP Serveur Odoo"
	value       = aws_instance.Serveur-Odoo.private_ip
}