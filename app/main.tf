module "Admin" {
        source = "../modules/Admin"
        instance_type = "t2.micro"
        security_name = "SG-projet-gp2"
        key_name = "gp2-kp-ajc"
}

module "Odoo" {
        source = "../modules/Odoo"
        instance_type = "t2.micro"
        security_name = "SG-projet-gp2"
        key_name = "gp2-kp-ajc"
}
