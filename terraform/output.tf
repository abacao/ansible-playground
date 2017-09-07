# Created and maintained by Andre Bacao @ andre@bacao.pt
#
output "01-Creation Date" {
  value = "${aws_lightsail_instance.lightsail-01.created_at}"
}

output "01-Machine info" {
  value = "\n  Username = ${aws_lightsail_instance.lightsail-01.username}\n  lightsail-01 Name = ${aws_lightsail_instance.lightsail-01.name}\n  Public IP = ${aws_lightsail_instance.lightsail-01.public_ip_address}\n  Private IP = ${aws_lightsail_instance.lightsail-01.private_ip_address}\n"
}

output "01-To connect to the machine just" {
  value = "\n  ssh ${aws_lightsail_instance.lightsail-01.username}@${aws_lightsail_instance.lightsail-01.public_ip_address}\n"
}

output "02-Creation Date" {
  value = "${aws_lightsail_instance.lightsail-02.created_at}"
}

output "02-Machine info" {
  value = "\n  Username = ${aws_lightsail_instance.lightsail-02.username}\n  lightsail-02 Name = ${aws_lightsail_instance.lightsail-02.name}\n  Public IP = ${aws_lightsail_instance.lightsail-02.public_ip_address}\n  Private IP = ${aws_lightsail_instance.lightsail-02.private_ip_address}\n"
}

output "02-To connect to the machine just" {
  value = "\n  ssh ${aws_lightsail_instance.lightsail-02.username}@${aws_lightsail_instance.lightsail-02.public_ip_address}"
}
