resource "aws_autoscaling_group" "web" {
  name                      = "${var.project_name}-elb-terraform-test"
  max_size                  = 2
  min_size                  = 0
  desired_capacity	    = 2
  health_check_grace_period = 90
  health_check_type         = "ELB"
  launch_configuration      = "${aws_launch_configuration.web.name}"
  vpc_zone_identifier       = ["${data.aws_subnet_ids.selected.ids}"]
  load_balancers	    = ["${aws_elb.web.name}"]

  tag {
    key                 = "Name"
    value               = "${var.project_name}-instances"
    propagate_at_launch = true
  }
}
