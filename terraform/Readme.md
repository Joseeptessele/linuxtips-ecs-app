## Lecture 3: ECS Service + Module
On this lesson we created a module to provision an ECS Service and this project was responsible to consume it.

## What I have learned
* How to use modules on terraform
* How to configure an ECS service 
* Difference between task and service execution role


## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.66.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_service"></a> [service](#module\_service) | local | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.ecs_task_execution_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_ssm_parameter.listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.private_subnet_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.private_subnet_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.private_subnet_c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.vpc_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capabilities"></a> [capabilities](#input\_capabilities) | List of especial capabilities needed by the service | `list(string)` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | ECS Cluster name | `string` | n/a | yes |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | List of environment variables that are going to be used by service tasks | `list(map(string))` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | provisioned resources region | `string` | n/a | yes |
| <a name="input_service_cpu"></a> [service\_cpu](#input\_service\_cpu) | CPU allocated for service (CPU unit) | `number` | n/a | yes |
| <a name="input_service_healthcheck"></a> [service\_healthcheck](#input\_service\_healthcheck) | Service health check configuration | `map(any)` | n/a | yes |
| <a name="input_service_hosts"></a> [service\_hosts](#input\_service\_hosts) | List of addresses or host names assigned to service for load balancing purposes | `list(string)` | n/a | yes |
| <a name="input_service_launch_type"></a> [service\_launch\_type](#input\_service\_launch\_type) | Service launch type configuration | <pre>list(object({<br>    capacity_provider = string<br>    weight            = number<br>  }))</pre> | n/a | yes |
| <a name="input_service_memory"></a> [service\_memory](#input\_service\_memory) | Memory allocated ofr service (MB unit) | `number` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | ECS service name | `string` | n/a | yes |
| <a name="input_service_port"></a> [service\_port](#input\_service\_port) | Port where service is going to be available | `string` | n/a | yes |
| <a name="input_service_task_count"></a> [service\_task\_count](#input\_service\_task\_count) | Number of tasks that service must keep simultaneously | `number` | n/a | yes |
| <a name="input_ssm_listener"></a> [ssm\_listener](#input\_ssm\_listener) | Application Load Balancer ARN's listener stored on AWS SSM | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_a"></a> [ssm\_private\_subnet\_a](#input\_ssm\_private\_subnet\_a) | Private subnet ID (located at us-east-1a) stored on AWS SSM | `string` | n/a | yes |
| <a name="input_ssm_private_subnet_b"></a> [ssm\_private\_subnet\_b](#input\_ssm\_private\_subnet\_b) | Private subnet ID (located at us-east-1b) stored on AWS SSM | `string` | n/a | yes |
| <a name="input_ssm_private_subnet_c"></a> [ssm\_private\_subnet\_c](#input\_ssm\_private\_subnet\_c) | Private subnet ID (located at us-east-1c) stored on AWS SSM | `string` | n/a | yes |
| <a name="input_ssm_vpc_id"></a> [ssm\_vpc\_id](#input\_ssm\_vpc\_id) | VPC ID stored on AWS System Manager (SSM) | `string` | n/a | yes |

## Outputs

No outputs.
