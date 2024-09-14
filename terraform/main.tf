module "service" {
  source                      = "/Users/josetessele/Development/Formação de Containers na AWS/linuxtips-ecs-service-module"
  region                      = var.region
  cluster_name                = var.cluster_name
  service_name                = var.service_name
  service_port                = var.service_port
  service_cpu                 = var.service_cpu
  service_memory              = var.service_memory
  service_listener            = data.aws_ssm_parameter.listener.value
  service_task_execution_role = aws_iam_role.main.arn
  vpc_id                      = data.aws_ssm_parameter.vpc_id.value

  capabilities          = var.capabilities
  environment_variables = var.environment_variables

  service_healthcheck = var.service_healthcheck
  service_launch_type = var.service_launch_type
  service_task_count = var.service_task_count
  
  service_hosts = var.service_hosts

  private_subnets = [
    data.aws_ssm_parameter.private_subnet_a.value,
    data.aws_ssm_parameter.private_subnet_b.value,
    data.aws_ssm_parameter.private_subnet_c.value,
  ]
}