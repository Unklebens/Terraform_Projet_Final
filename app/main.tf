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


resource "local_file" "hostfile_admin" {
  filename = "../../hostadmin.ini"
  content  = "${module.Admin.admin-ip}"
}

resource "local_file" "hostfile_odoo" {
  filename = "../../hostodoo.ini"
  content  = "${module.Odoo.odoo-ip}"
}
