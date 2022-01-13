resource "aws_instance" "Serveur-Odoo" {
	ami               = data.aws_ami.my_ami.id
	instance_type     = "${var.instance_type}"
	security_groups   = ["${var.security_name}"]
	key_name          = "${var.key_name}"
	availability_zone = var.zone
	user_data = <<-EOF
		#!/bin/bash
		sudo apt-get update -y
		EOF

	provisioner "local-exec" {
                command = "echo '[${self.public_ip}]' > ip_address_Odoo.txt"
        }


	tags = {
                Name = "GP2-Server-Odoo"
                iac  = "terraform"
        }

	root_block_device {
		delete_on_termination = true
	}
}

data "aws_ami" "my_ami" {
	most_recent = true
	owners = ["099720109477"]
	filter {
		name = "name"
		values = ["ubuntu/images/hvm-ssd/ubuntu-focal*"]
	}
}
