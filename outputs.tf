locals {
  value = jsondecode(data.aws_ssm_parameter.this.value)
}

output value {
  value = local.value
}

output schema_version {
  value = local.value["schema_version"]
}

output block_device_mappings {
  value = [
    {
      device_name = "/dev/xvda"
    },
  ]
}
output image_name {
  value = local.value["image_name"]
}

output image_id {
  value = local.value["image_id"]
}

output id {
  value = local.value["image_id"]
}

output os {
  value = local.value["os"]
}

output architecture {
  value = local.value["os"]
}

output ecs_runtime_version {
  value = local.value["ecs_runtime_version"]
}

output ecs_agent_version {
  value = local.value["ecs_agent_version"]
}
