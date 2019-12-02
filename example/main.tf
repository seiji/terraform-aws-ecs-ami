terraform {
  required_version = "~> 0.12.0"
}

module amazon_linux_2 {
  source = "../"
  providers = {
    aws = aws.ap-northeast-1
  }
}

output amazon_linux_2 {
  value = {
    schema_version      = module.amazon_linux_2.schema_version
    image_name          = module.amazon_linux_2.image_name
    image_id            = module.amazon_linux_2.image_id
    os                  = module.amazon_linux_2.os
    ecs_runtime_version = module.amazon_linux_2.ecs_runtime_version
    ecs_agent_version   = module.amazon_linux_2.ecs_agent_version
  }
}

module amazon_linux_2_arm64 {
  source = "../"
  providers = {
    aws = aws.ap-northeast-1
  }
  architecture = "arm64"
}

output amazon_linux_2_arm64 {
  value = {
    schema_version      = module.amazon_linux_2_arm64.schema_version
    image_name          = module.amazon_linux_2_arm64.image_name
    image_id            = module.amazon_linux_2_arm64.image_id
    os                  = module.amazon_linux_2_arm64.os
    ecs_runtime_version = module.amazon_linux_2_arm64.ecs_runtime_version
    ecs_agent_version   = module.amazon_linux_2_arm64.ecs_agent_version
  }
}

module amazon_linux_2_gpu {
  source = "../"
  providers = {
    aws = aws.ap-northeast-1
  }
  architecture = "gpu"
}

output amazon_linux_2_gpu {
  value = {
    schema_version      = module.amazon_linux_2_gpu.schema_version
    image_name          = module.amazon_linux_2_gpu.image_name
    image_id            = module.amazon_linux_2_gpu.image_id
    os                  = module.amazon_linux_2_gpu.os
    ecs_runtime_version = module.amazon_linux_2_gpu.ecs_runtime_version
    ecs_agent_version   = module.amazon_linux_2_gpu.ecs_agent_version
  }
}

module amazon_linux {
  source = "../"
  providers = {
    aws = aws.ap-northeast-1
  }
  os = "amazon-linux"
}

output amazon_linux {
  value = {
    schema_version      = module.amazon_linux.schema_version
    image_name          = module.amazon_linux.image_name
    image_id            = module.amazon_linux.image_id
    os                  = module.amazon_linux.os
    ecs_runtime_version = module.amazon_linux.ecs_runtime_version
    ecs_agent_version   = module.amazon_linux.ecs_agent_version
  }
}

module amazon_windows_2019_full {
  source = "../windows"
  providers = {
    aws = aws.ap-northeast-1
  }
}

output amazon_windows_2019_full {
  value = {
    image_name          = module.amazon_windows_2019_full.image_name
    image_id            = module.amazon_windows_2019_full.image_id
    ecs_runtime_version = module.amazon_windows_2019_full.ecs_runtime_version
    ecs_agent_version   = module.amazon_windows_2019_full.ecs_agent_version
  }
}

module amazon_windows_2019_core {
  source = "../windows"
  providers = {
    aws = aws.ap-northeast-1
  }
  edition = "Core"
}

output amazon_windows_2019_core {
  value = {
    image_name          = module.amazon_windows_2019_core.image_name
    image_id            = module.amazon_windows_2019_core.image_id
    ecs_runtime_version = module.amazon_windows_2019_core.ecs_runtime_version
    ecs_agent_version   = module.amazon_windows_2019_core.ecs_agent_version
  }
}

module amazon_windows_2016_full {
  source = "../windows"
  providers = {
    aws = aws.ap-northeast-1
  }
  year = "2016"
}

output amazon_windows_2016_full {
  value = {
    image_name          = module.amazon_windows_2016_full.image_name
    image_id            = module.amazon_windows_2016_full.image_id
    ecs_runtime_version = module.amazon_windows_2016_full.ecs_runtime_version
    ecs_agent_version   = module.amazon_windows_2016_full.ecs_agent_version
  }
}
