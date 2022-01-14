variable "instance_type" {
  default = "t2.micro"
}

variable "security_name" {
  type        = string
  description = "security group name"
}

variable "zone" {
  default = "us-east-1b"
  type    = string
}

variable "key_name" {
  default     = "gp2-kp-ajc"
  type        = string
  description = "Set key name"
}
