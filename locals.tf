locals {
  custom_policy_arns = var.imgb_custom_policy != "" && length(aws_iam_policy.custom) > 0 ? [aws_iam_policy.custom[0].arn] : []
  all_managed_policies = concat(var.imgb_managed_policies, local.custom_policy_arns)
}
