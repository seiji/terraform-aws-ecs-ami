data "aws_ssm_parameter" "this" {
  name = "/aws/service/ami-windows-latest/${format("Windows_Server-%d-English-%s-ECS_Optimized", var.year, var.edition)}"
}
