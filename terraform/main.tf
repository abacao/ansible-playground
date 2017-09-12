# Created and maintained by Andre Bacao @ andre@bacao.pt
#
# Configure the AWS Provider - aws user "deploy"
provider "aws" {
  access_key = "${var.aws_accesskey}"
  secret_key = "${var.aws_secretkey}"
  region     = "${var.aws_region}"
}

# Import an existing public key
resource "aws_lightsail_key_pair" "lg_key_pair" {
  name       = "${var.key_name}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

# Create a new Ansible Master Lightsail Instance
resource "aws_lightsail_instance" "lightsail-01" {
  name                = "ansible"
  availability_zone   = "eu-west-2a"
  bundle_id           = "nano_1_0"
  blueprint_id        = "ubuntu_16_04"
  key_pair_name       = "${aws_lightsail_key_pair.lg_key_pair.name}"
}

# Create a new Ansible Slave Lightsail Instance
resource "aws_lightsail_instance" "lightsail-02" {
  name                = "slave"
  availability_zone   = "eu-west-2a"
  bundle_id           = "nano_1_0"
  blueprint_id        = "ubuntu_16_04"
  key_pair_name       = "${aws_lightsail_key_pair.lg_key_pair.name}"
}

# # Output inventory file for Ansible outside terraform folder
# provisioner "local-exec" {
#   command = "echo '[dev]\n${aws_lightsail_instance.lightsail-01.name} ansible_host=${aws_lightsail_instance.lightsail-01.public_ip_addres}' > inventory"
# }
#
# # Output inventory file for Ansible outside terraform folder
# provisioner "local-exec" {
#   command = "echo '[dev]\n${aws_lightsail_instance.lightsail-02.name} ansible_host=${aws_lightsail_instance.lightsail-02.public_ip_addres}' > inventory"
# }
