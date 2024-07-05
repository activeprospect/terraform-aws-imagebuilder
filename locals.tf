locals {
  custom_policy_arns = var.imgb_custom_policy != "" && length(aws_iam_policy.custom) > 0 ? [aws_iam_policy.custom[0].arn] : []
  managed_policies_list = tolist(var.imgb_managed_policies)
  all_managed_policies = concat(local.managed_policies_list, local.custom_policy_arns)
}
