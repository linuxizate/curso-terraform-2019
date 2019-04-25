data "template_file" "user-data" {
  template = "${file("user-data.sh")}"
  vars = {
    project_name = "${var.project_name}"
  }
}

