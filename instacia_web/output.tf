output "zinet_private_ip" {
  value = "${aws_instance.Zinet.private_ip}"
}

output "zinet_public_ip" {
  value = "${aws_instance.Zinet.public_ip}"
}

output "sg_ssh_id" {
 value = "${aws_security_group.allow_ssh.id}"
}
output "sg_http_id" {
 value = "${aws_security_group.allow_http.id}"
}
output "sg_http_name" {
 value = "${aws_security_group.allow_http.name}"
}
output "sg_ssh_name" {
 value = "${aws_security_group.allow_ssh.name}"
}
output "sg_ssh_description" {
 value = "${aws_security_group.allow_ssh.description}"
}
output "sg_http_description" {
 value = "${aws_security_group.allow_http.description}"
}
output "Proyecto" {
  value = "${var.project_name}"
}
output "VPC" {
  value = "${data.aws_vpc.selected.id}"
}
output "Certificado" {
  value = "${aws_key_pair.keypair.key_name}"
}
