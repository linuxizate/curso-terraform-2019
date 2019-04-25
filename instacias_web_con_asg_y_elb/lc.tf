resource "aws_launch_configuration" "web" {
  name_prefix   = "web_config-${var.project_name}"
  image_id      = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  key_name	= "${aws_key_pair.keypair.key_name}"
  security_groups = ["${aws_security_group.allow_http.id}", "${aws_security_group.allow_ssh.id}"]
  user_data	= "${data.template_file.user-data.rendered}"
  lifecycle {
    create_before_destroy = true
  }
}
