# Create a new load balancer
resource "aws_elb" "web" {
  name               = "${var.project_name}-elb-web"
#  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
  subnets = ["${data.aws_subnet_ids.selected.ids}"]
  security_groups = ["${aws_security_group.allow_http.id}"]
  listener {
    instance_port      = 80
    instance_protocol  = "http"
    lb_port            = 80
    lb_protocol        = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 5
    timeout             = 2
    target              = "HTTP:80/"
    interval            = 10
  }

  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "${var.project_name}-elb-web"
  }
}

