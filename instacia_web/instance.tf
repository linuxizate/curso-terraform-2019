resource "aws_instance" "Zinet" {
  ami           = "${data.aws_ami.ubuntu.image_id}"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}", "${aws_security_group.allow_http.id}"]
  key_name = "${aws_key_pair.keypair.key_name}"

  user_data = "${file("user-data.sh")}"

  tags = {
    Name = "${var.project_name}-EC2"
    SO = "Ubuntu 16.04"
  }
}
