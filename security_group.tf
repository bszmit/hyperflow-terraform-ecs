## Security Groups
resource "aws_security_group" "sg-hyperflow" {
  name = "terraform-hyperflowmaster-sg"

  # Inbound HTTP from anywhere
  ingress {
    from_port = "${var.server_port}"
    to_port = "${var.server_port}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # rabbitmq plugin
  ingress {
    from_port = "${var.server_plugin_port}"
    to_port = "${var.server_plugin_port}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "3001"
    to_port = "3001"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "3002"
    to_port = "3002"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "3003"
    to_port = "3003"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "3004"
    to_port = "3004"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound ssh
  ingress {
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}