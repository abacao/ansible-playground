# Created and maintained by Andre Bacao @ andre@bacao.pt
#
output "Creation Date" {
  value = "${aws_lightsail_instance.instance.created_at}"
}

output "Machine info" {
  value = "\n  Username = ${aws_lightsail_instance.instance.username}\n  Instance Name = ${aws_lightsail_instance.instance.name}\n  Public IP = ${aws_lightsail_instance.instance.public_ip_address}\n  Private IP = ${aws_lightsail_instance.instance.private_ip_address}\n"
}

output "To connect to the machine just" {
  value = "\n  ssh ${aws_lightsail_instance.instance.username}@${aws_lightsail_instance.instance.public_ip_address}"
}
