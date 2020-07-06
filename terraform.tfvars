# General
aws_region   = "ap-southeast-1"
aws_account  = "707538076348"
namespace    = "demo"
service_name = "demo-example-service"

# Network
aws_vpc_id            = "vpc-0024570d64ef2882a"
aws_subnet_id1        = "subnet-00d5890384743053f"
aws_subnet_id2        = "subnet-04cbdc2a21daa4c7f"
aws_security_group_id = "sg-032e3f5926bb79818"

# ECS Cluster
aws_ecs_cluster_name = "demo-ecs"

# IAM Roles
ecs_task_role_arn    = "arn:aws:iam::707538076348:role/demo-ecs-task-role"
ecs_service_role_arn = "arn:aws:iam::707538076348:role/demo-ecs-service-role"

# Github Repository
github_repo_name   = "demo-example-service-python"
github_oauth_token = "<REPLACE_ME>" # DO NOT PUSH ME TO GITHUB!

# ECR Repository
ecr_repo_name = "demo-example-service"

# S3 Bucket for Artifacts
s3_bucket_artifacts_name = "707538076348-demo-example-service-codepipeline"

# CodeBuild
codebuild_service_role_name        = "demo-example-service-codebuild-service-role"
codebuild_service_role_policy_name = "demo-example-service-codebuild-service-role-policy"
codebuild_project_name             = "demo-example-service-codebuild"

# CodePipeline
codepipeline_service_role_name        = "demo-example-service-codepipeline-service-role"
codepipeline_service_role_policy_name = "demo-example-service-codepipeline-service-role-policy"
codepipeline_pipeline_name            = "demo-example-service-codepipeline"

# ALB Target Group
aws_lb_target_group_name = "demo-alb-tg-customers"

# ALB Listener Rule
listener_arn = "arn:aws:elasticloadbalancing:ap-southeast-1:707538076348:listener/app/demo-alb/51560234a91c7043/5bfd7cf33ad105b4"
priority     = "50000"
path_pattern = "/example*"

# ECS Task Definition

# ECS Service
