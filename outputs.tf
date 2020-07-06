# ECR Repository
output "aws_ecr_repository_arn" {
  value = aws_ecr_repository.this.arn
}

output "aws_ecr_repository_name" {
  value = aws_ecr_repository.this.name
}

output "aws_ecr_repository_registry_id" {
  value = aws_ecr_repository.this.registry_id
}

output "aws_ecr_repository_repository_url" {
  value = aws_ecr_repository.this.repository_url
}

# S3 Bucket for Artifacts
output "aws_s3_bucket_id" {
  value = aws_s3_bucket.build_artifact_bucket.id
}

output "aws_s3_bucket_arn" {
  value = aws_s3_bucket.build_artifact_bucket.arn
}

# CodeBuild
output "codebuild_service_role_arn" {
  value = aws_iam_role.codebuild_service_role.arn
}

output "codebuild_project_arn" {
  value = aws_codebuild_project.build_project.arn
}

# CodePipeline
output "codepipeline_service_role_arn" {
  value = aws_iam_role.codepipeline_service_role.arn
}

output "codepipeline_pipeline_arn" {
  value = aws_codepipeline.codepipeline.arn
}

# ALB Target Group
output "aws_lb_target_group_id" {
  value = aws_lb_target_group.this.id
}

output "aws_lb_target_group_arn" {
  value = aws_lb_target_group.this.arn
}

output "aws_lb_target_group_arn_suffix" {
  value = aws_lb_target_group.this.arn_suffix
}

output "aws_lb_target_group_name" {
  value = aws_lb_target_group.this.name
}

# ALB Listener Rule
output "aws_lb_listener_rule_id" {
  value = aws_lb_listener_rule.this.id
}

output "aws_lb_listener_rule_arn" {
  value = aws_lb_listener_rule.this.arn
}

# ECS Task Definition
output "aws_ecs_task_definition_arn" {
  value = aws_ecs_task_definition.this.arn
}

output "aws_ecs_task_definition_family" {
  value = aws_ecs_task_definition.this.family
}

output "aws_ecs_task_definition_revision" {
  value = aws_ecs_task_definition.this.revision
}

# ECS Service
output "aws_ecs_service_id" {
  value = aws_ecs_service.this.id
}

output "aws_ecs_service_name" {
  value = aws_ecs_service.this.name
}

output "aws_ecs_service_cluster" {
  value = aws_ecs_service.this.cluster
}

output "aws_ecs_service_iam_role" {
  value = aws_ecs_service.this.iam_role
}

output "aws_ecs_service_desired_count" {
  value = aws_ecs_service.this.desired_count
}
