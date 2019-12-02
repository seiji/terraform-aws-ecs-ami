# https://docs.aws.amazon.com/ja_jp/AmazonECS/latest/developerguide/ecs-ami-versions.html
data aws_ssm_parameter this {
  name = "/aws/service/ecs/optimized-ami/${join("/", compact([var.os, var.architecture]))}/recommended"
}
