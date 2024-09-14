variable "region" {
  description = "provisioned resources region"
  type = string
}
variable "service_name" {
  description = "ECS service name"
  type = string
}

variable "cluster_name" {
  description = "ECS Cluster name"
  type = string
}

variable "service_port" {
  description = "Port where service is going to be available"
  type = string
}

variable "service_cpu" {
  description = "CPU allocated for service (CPU unit)"
  type = number
}

variable "service_memory" {
  description = "Memory allocated ofr service (MB unit)"
  type = number
}

variable "ssm_vpc_id" {
  description = "VPC ID stored on AWS System Manager (SSM)"
  type = string
}

variable "ssm_listener" {
  description = "Application Load Balancer ARN's listener stored on AWS SSM"
}

variable "ssm_private_subnet_a" {
  description = "Private subnet ID (located at us-east-1a) stored on AWS SSM"
  type = string
}
variable "ssm_private_subnet_b" {
  description = "Private subnet ID (located at us-east-1b) stored on AWS SSM"
  type = string
}
variable "ssm_private_subnet_c" {
  description = "Private subnet ID (located at us-east-1c) stored on AWS SSM"
  type = string
}


variable "environment_variables" {
  description = "List of environment variables that are going to be used by service tasks"
  type = list(map(string))
}

variable "capabilities" {
  description = "List of especial capabilities needed by the service"
  type = list(string)
}

variable "service_healthcheck" {
  description = "Service health check configuration"
  type = map(any)
}

variable "service_launch_type" {
  description = "Service launch type configuration"
  type = list(object({
    capacity_provider = string
    weight            = number
  }))
}

variable "service_task_count" {
  description = "Number of tasks that service must keep simultaneously"
  type = number
}


variable "service_hosts" {
  description = "List of addresses or host names assigned to service for load balancing purposes"
  type        = list(string)
}