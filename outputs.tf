output "budgets_budgets_id" {
  description = "Map of id values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "budgets_budgets_account_id" {
  description = "Map of account_id values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "budgets_budgets_arn" {
  description = "Map of arn values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "budgets_budgets_auto_adjust_data" {
  description = "Map of auto_adjust_data values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => one(v.auto_adjust_data) if v.auto_adjust_data != null && length(v.auto_adjust_data) > 0 }
}
output "budgets_budgets_billing_view_arn" {
  description = "Map of billing_view_arn values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.billing_view_arn if v.billing_view_arn != null && length(v.billing_view_arn) > 0 }
}
output "budgets_budgets_budget_type" {
  description = "Map of budget_type values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.budget_type if v.budget_type != null && length(v.budget_type) > 0 }
}
output "budgets_budgets_cost_filter" {
  description = "Map of cost_filter values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.cost_filter if v.cost_filter != null && length(v.cost_filter) > 0 }
}
output "budgets_budgets_cost_types" {
  description = "Map of cost_types values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => one(v.cost_types) if v.cost_types != null && length(v.cost_types) > 0 }
}
output "budgets_budgets_filter_expression" {
  description = "Map of filter_expression values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => one(v.filter_expression) if v.filter_expression != null && length(v.filter_expression) > 0 }
}
output "budgets_budgets_limit_amount" {
  description = "Map of limit_amount values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.limit_amount if v.limit_amount != null && length(v.limit_amount) > 0 }
}
output "budgets_budgets_limit_unit" {
  description = "Map of limit_unit values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.limit_unit if v.limit_unit != null && length(v.limit_unit) > 0 }
}
output "budgets_budgets_metrics" {
  description = "Map of metrics values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.metrics if v.metrics != null && length(v.metrics) > 0 }
}
output "budgets_budgets_name" {
  description = "Map of name values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "budgets_budgets_name_prefix" {
  description = "Map of name_prefix values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "budgets_budgets_notification" {
  description = "Map of notification values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.notification if v.notification != null && length(v.notification) > 0 }
}
output "budgets_budgets_planned_limit" {
  description = "Map of planned_limit values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.planned_limit if v.planned_limit != null && length(v.planned_limit) > 0 }
}
output "budgets_budgets_tags" {
  description = "Map of tags values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "budgets_budgets_tags_all" {
  description = "Map of tags_all values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "budgets_budgets_time_period_end" {
  description = "Map of time_period_end values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.time_period_end if v.time_period_end != null && length(v.time_period_end) > 0 }
}
output "budgets_budgets_time_period_start" {
  description = "Map of time_period_start values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.time_period_start if v.time_period_start != null && length(v.time_period_start) > 0 }
}
output "budgets_budgets_time_unit" {
  description = "Map of time_unit values across all budgets_budgets, keyed the same as var.budgets_budgets"
  value       = { for k, v in aws_budgets_budget.budgets_budgets : k => v.time_unit if v.time_unit != null && length(v.time_unit) > 0 }
}

