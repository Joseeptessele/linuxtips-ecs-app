variable "region" {
  description = "provisioned resources region"
  type        = string
}
variable "service_name" {
  description = "ECS service name"
  type        = string
}

variable "cluster_name" {
  description = "ECS Cluster name"
  type        = string
}

variable "service_port" {
  description = "Port where service is going to be available"
  type        = number
}

variable "service_cpu" {
  description = "CPU allocated for service (CPU unit)"
  type        = number
}

variable "service_memory" {
  description = "Memory allocated ofr service (MB unit)"
  type        = number
}

variable "ssm_vpc_id" {
  description = "VPC ID stored on AWS System Manager (SSM)"
  type        = string
}

variable "ssm_listener" {
  description = "Application Load Balancer ARN's listener stored on AWS SSM"
}

variable "ssm_private_subnet_a" {
  description = "Private subnet ID (located at us-east-1a) stored on AWS SSM"
  type        = string
}
variable "ssm_private_subnet_b" {
  description = "Private subnet ID (located at us-east-1b) stored on AWS SSM"
  type        = string
}
variable "ssm_private_subnet_c" {
  description = "Private subnet ID (located at us-east-1c) stored on AWS SSM"
  type        = string
}

variable "ssm_alb" {
  description = "ALB arn stored on parameter store"
  type        = string
}

variable "environment_variables" {
  description = "List of environment variables that are going to be used by service tasks"
  type        = list(map(string))
}

variable "capabilities" {
  description = "List of especial capabilities needed by the service"
  type        = list(string)
}

variable "service_healthcheck" {
  description = "Service health check configuration"
  type        = map(any)
}

variable "service_launch_type" {
  description = "ECS launch type: ECS or FARGATE"
  type = list(object({
    capacity_provider = string
    weight            = number
  }))
}

variable "service_task_count" {
  description = "Number of tasks that service must keep simultaneously"
  type        = number
}


variable "service_hosts" {
  description = "List of addresses or host names assigned to service for load balancing purposes"
  type        = list(string)
}

variable "scale_type" {
  description = "Value for scale type. Currently supported values by module are: requests_tracking, cpu and cpu_tracking"
  type        = string
}

variable "task_minimum" {
  description = "ECS minimum number of running tasks"
  type        = number
}

variable "task_maximum" {
  description = "ECS maximum number of running tasks"
  type        = number
}


### CPU AUTOSCALING

variable "scale_out_cpu_threshold" {
  description = "CPU percentage threshold to scale out"
  type        = number
}

variable "scale_out_adjustment" {
  description = "Number of tasks to be incremented during scale out"
  type        = number
}

variable "scale_out_comparison_operator" {
  description = "Scale out strategy"
  type        = string
}

variable "scale_out_statistic" {
  description = "Scale out metric statistic"
  type        = string
}

variable "scale_out_period" {
  description = "Start of scale out after reaching the threshold"
  type        = number
}

variable "scale_out_evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold"
  type        = number
}

variable "scale_out_cooldown" {
  description = "Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start"
  type        = number
}

variable "scale_in_cpu_threshold" {
  description = "CPU percentage threshold to scale in"
  type        = number
}

variable "scale_in_adjustment" {
  description = "Number of tasks to be decremented during scale in"
  type        = number
}

variable "scale_in_comparison_operator" {
  description = "Scale in strategy"
  type        = string
}

variable "scale_in_statistic" {
  description = "Scale in metric statistic"
  type        = string
}

variable "scale_in_period" {
  description = "Start of scale in after reaching the threshold"
  type        = number
}

variable "scale_in_evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold"
  type        = number
}

variable "scale_in_cooldown" {
  description = "Amount of time, in seconds, after a scaling in activity completes and before the next scaling in activity can start"
  type        = number
}

### CPU Tracking
variable "scale_tracking_cpu" {
  description = "CPU percentage threshold to scale out when using cpu_tracking scale type"
  type        = number
}

### Tracking Requests
variable "scale_tracking_requests" {
  description = "Number of requests, per second, desired per task"
  type        = number
}

variable "container_image" {
  description = "Image with application deployment tag on ECS"
  type        = string
}