resource "aws_security_group" "allow_ssh" {
  name        = "${var.project_name}-allow_ssh"
  description = "Allow ssh inbound traffic for my IP"
  vpc_id      = "${data.aws_vpc.selected.id}"

  ingress {
    from_port   = 22
    to_port     = 22 
    protocol    = "tcp"
    cidr_blocks = ["195.77.151.139/32"] # add a CIDR block here
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
 
resource "aws_security_group" "allow_http" {
  name        = "${var.project_name}-allow_http"
  description = "Allow http inbound traffic for my anywhere"
  vpc_id      = "${data.aws_vpc.selected.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # add a CIDR block here
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
