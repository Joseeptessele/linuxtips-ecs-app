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
  type        = string
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

}

variable "task_minimum" {

}

variable "task_maximum" {

}


### CPU AUTOSCALING

variable "scale_out_cpu_threshold" {

}

variable "scale_out_adjustment" {

}

variable "sclae_out_comparison_operator" {

}

variable "scale_out_statistic" {

}

variable "scale_out_period" {

}

variable "scale_out_evaluation_periods" {

}

variable "scale_out_cooldown" {

}

variable "scale_in_cpu_threshold" {

}

variable "scale_in_adjustment" {

}

variable "sclae_in_comparison_operator" {

}

variable "scale_in_statistic" {

}

variable "scale_in_period" {

}

variable "scale_in_evaluation_periods" {

}

variable "scale_in_cooldown" {

}

### CPU Tracking
variable "scale_tracking_cpu" {

}