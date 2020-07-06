resource "aws_lb_target_group" "this" {
  name                          = var.aws_lb_target_group_name
  # name_prefix 
  port                          = 5000
  protocol                      = "HTTP"
  vpc_id                        = var.aws_vpc_id
  deregistration_delay          = 300
  slow_start                    = 0
  load_balancing_algorithm_type = "round_robin"

  stickiness {
    type            = "lb_cookie"
    cookie_duration = 86400
    enabled         = true
  }

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    port                = 5000
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
    matcher             = 200
  }

  target_type = "ip"

  tags = {
    Namespace = var.namespace
  }
}
