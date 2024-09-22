region               = "us-east-1"
cluster_name         = "linuxtips-ecs-cluster"
service_name         = "chip"
service_port         = 8080
service_cpu          = 256
service_memory       = 512
ssm_vpc_id           = "/linuxtips-vpc/vpc/vpc_id"
ssm_listener         = "/linuxtips/ecs/lb/listener"
ssm_private_subnet_a = "/linuxtips-vpc/vpc/subnet_private_1a"
ssm_private_subnet_b = "/linuxtips-vpc/vpc/subnet_private_1b"
ssm_private_subnet_c = "/linuxtips-vpc/vpc/subnet_private_1c"
environment_variables = [
  {
    name  = "FOO",
    value = "BAR"
  },
  {
    name  = "ping",
    value = "pong"
  }
]
capabilities = ["EC2"]

service_healthcheck = {
  healthy_threshold   = 3
  unhealthy_threshold = 10
  timeout             = 10
  interval            = 60
  matcher             = "200-399"
  path                = "/healthcheck"
  port                = 8080
}

service_launch_type = "EC2"
service_task_count  = 3

service_hosts = [
  "chip.linuxtips.demo"
]

# scale_type   = "cpu"
scale_type = "cpu_tracking"

task_minimum = 3
task_maximum = 12


### CPU AUTOSCALING
scale_out_cpu_threshold       = 50
scale_out_adjustment          = 2
sclae_out_comparison_operator = "GreaterThanOrEqualToThreshold"
scale_out_statistic           = "Average"
scale_out_period              = 60
scale_out_evaluation_periods  = 2
scale_out_cooldown            = 60

scale_in_cpu_threshold       = 30
scale_in_adjustment          = -1
sclae_in_comparison_operator = "LessThanOrEqualToThreshold"
scale_in_statistic           = "Average"
scale_in_period              = 60
scale_in_evaluation_periods  = 2
scale_in_cooldown            = 60
scale_tracking_cpu           = 50