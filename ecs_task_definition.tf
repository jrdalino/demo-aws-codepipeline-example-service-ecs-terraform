resource "aws_ecs_task_definition" "this" {
  family                = var.service_name
  container_definitions = <<TASKDEFINITION
[
  {
    "name": "${var.service_name}",
    "image": "${var.aws_account}.dkr.ecr.${var.aws_region}.amazonaws.com/${var.service_name}:1593746893",
    "cpu": 32,
    "memory": 256,
    "portMappings" : [
      {
        "containerPort": 5000,
        "protocol": "tcp"
      }
    ],
    "logConfiguration" : {
      "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/aws/ecs/${var.aws_ecs_cluster_name}/cluster",
          "awslogs-region": "${var.aws_region}",
          "awslogs-stream-prefix": "${var.service_name}"
        }
    }
  }
]
  TASKDEFINITION
  task_role_arn         = var.ecs_task_role_arn
  execution_role_arn    = var.ecs_service_role_arn
  network_mode          = "awsvpc"

  # ipc_mode = "task"
  # pid_mode = "task"
  # volume
  # placement_constraints
  
  cpu                      = 256
  memory                   = 512
  requires_compatibilities = ["FARGATE"]
  
  # proxy_configuration
  # inference_accelerator 
  
  tags = {
    Namespace = var.namespace
  }
}
