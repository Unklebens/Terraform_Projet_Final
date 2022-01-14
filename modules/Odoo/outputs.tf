output "odoo-public" {
  description = "ID Serveur Odoo"
  value       = aws_instance.Serveur-Odoo.public_ip
}

output "odoo-ip" {
  description = "IP Serveur Odoo"
  value       = aws_instance.Serveur-Odoo.private_ip
}