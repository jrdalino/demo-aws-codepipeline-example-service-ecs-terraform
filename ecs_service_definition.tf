resource "aws_ecs_service" "this" {
  name = var.service_name

  # capacity_provider_strategy {
  #   capacity_provider = "FARGATE_SPOT"
  #   weight            = 100
  #   base              = 1
  # }

  cluster = var.aws_ecs_cluster_name

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = 200
  deployment_minimum_healthy_percent = 0
  desired_count                      = 1
  # enable_ecs_managed_tags
  # force_new_deployment
  # health_check_grace_period_seconds 
  # iam_role        = "arn:aws:iam::707538076348:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
  launch_type     = "FARGATE"

  load_balancer {
    target_group_arn = aws_lb_target_group.this.arn
    container_name   = var.service_name
    container_port   = 5000
  }

  network_configuration {
    subnets = [var.aws_subnet_id1, var.aws_subnet_id2]
    security_groups = [var.aws_security_group_id]
    assign_public_ip = false
  }

  # ordered_placement_strategy {
  #   type  = "binpack"
  #   field = "cpu"
  # }

  # placement_constraints {
  #   type       = "memberOf"
  #   expression = "attribute:ecs.availability-zone in [ap-southeast-1a, ap-southeast-1b]"
  # }

  platform_version    = "LATEST"
  # propagate_tags    = "SERVICE"
  scheduling_strategy = "REPLICA"

  # service_registries {
  #   registry_arn   = ""
  #   port           = ""
  #   container_port = ""
  #   container_name = ""
  # }

  # tags = {
  #   Namespace = var.namespace
  # }

  task_definition = aws_ecs_task_definition.this.arn
  # depends_on    = [aws_iam_role_policy.foo]
}
