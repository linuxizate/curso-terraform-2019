output "AGS_name" {
  value = "${aws_autoscaling_group.web.name}"
}
output "DNS_elb" {
  value = "${aws_elb.web.dns_name}"
}
output "template_rendered" {
  value = "${data.template_file.user-data.rendered}"
}
