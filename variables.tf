variable "budgets_budgets" {
  description = <<EOT
Map of budgets_budgets, attributes below
Required:
    - budget_type
    - time_unit
Optional:
    - account_id
    - billing_view_arn
    - limit_amount
    - limit_unit
    - metrics
    - name
    - name_prefix
    - tags
    - tags_all
    - time_period_end
    - time_period_start
    - auto_adjust_data (block):
        - auto_adjust_type (required)
        - historical_options (optional, block):
            - budget_adjustment_period (required)
    - cost_filter (block):
        - name (required)
        - values (required)
    - cost_types (block):
        - include_credit (optional)
        - include_discount (optional)
        - include_other_subscription (optional)
        - include_recurring (optional)
        - include_refund (optional)
        - include_subscription (optional)
        - include_support (optional)
        - include_tax (optional)
        - include_upfront (optional)
        - use_amortized (optional)
        - use_blended (optional)
    - filter_expression (block):
        - and (optional, block):
            - and (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - cost_categories (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - dimensions (optional, block):
                - key (required)
                - match_options (optional)
                - values (required)
            - not (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - or (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - tags (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
        - cost_categories (optional, block):
            - key (optional)
            - match_options (optional)
            - values (optional)
        - dimensions (optional, block):
            - key (required)
            - match_options (optional)
            - values (required)
        - not (optional, block):
            - and (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - cost_categories (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - dimensions (optional, block):
                - key (required)
                - match_options (optional)
                - values (required)
            - not (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - or (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - tags (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
        - or (optional, block):
            - and (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - cost_categories (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - dimensions (optional, block):
                - key (required)
                - match_options (optional)
                - values (required)
            - not (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - or (optional, block):
                - cost_categories (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
                - dimensions (optional, block):
                    - key (required)
                    - match_options (optional)
                    - values (required)
                - tags (optional, block):
                    - key (optional)
                    - match_options (optional)
                    - values (optional)
            - tags (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
        - tags (optional, block):
            - key (optional)
            - match_options (optional)
            - values (optional)
    - notification (block):
        - comparison_operator (required)
        - notification_type (required)
        - subscriber_email_addresses (optional)
        - subscriber_sns_topic_arns (optional)
        - threshold (required)
        - threshold_type (required)
    - planned_limit (block):
        - amount (required)
        - start_time (required)
        - unit (required)
EOT

  type = map(object({
    budget_type       = string
    time_unit         = string
    account_id        = optional(string)
    billing_view_arn  = optional(string)
    limit_amount      = optional(string)
    limit_unit        = optional(string)
    metrics           = optional(list(string))
    name              = optional(string)
    name_prefix       = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    time_period_end   = optional(string)
    time_period_start = optional(string)
    auto_adjust_data = optional(object({
      auto_adjust_type = string
      historical_options = optional(object({
        budget_adjustment_period = number
      }))
    }))
    cost_filter = optional(list(object({
      name   = string
      values = list(string)
    })))
    cost_types = optional(object({
      include_credit             = optional(bool)
      include_discount           = optional(bool)
      include_other_subscription = optional(bool)
      include_recurring          = optional(bool)
      include_refund             = optional(bool)
      include_subscription       = optional(bool)
      include_support            = optional(bool)
      include_tax                = optional(bool)
      include_upfront            = optional(bool)
      use_amortized              = optional(bool)
      use_blended                = optional(bool)
    }))
    filter_expression = optional(object({
      and = optional(list(object({
        and = optional(list(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        })))
        cost_categories = optional(object({
          key           = optional(string)
          match_options = optional(list(string))
          values        = optional(list(string))
        }))
        dimensions = optional(object({
          key           = string
          match_options = optional(list(string))
          values        = list(string)
        }))
        not = optional(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        }))
        or = optional(list(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        })))
        tags = optional(object({
          key           = optional(string)
          match_options = optional(list(string))
          values        = optional(list(string))
        }))
      })))
      cost_categories = optional(object({
        key           = optional(string)
        match_options = optional(list(string))
        values        = optional(list(string))
      }))
      dimensions = optional(object({
        key           = string
        match_options = optional(list(string))
        values        = list(string)
      }))
      not = optional(object({
        and = optional(list(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        })))
        cost_categories = optional(object({
          key           = optional(string)
          match_options = optional(list(string))
          values        = optional(list(string))
        }))
        dimensions = optional(object({
          key           = string
          match_options = optional(list(string))
          values        = list(string)
        }))
        not = optional(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        }))
        or = optional(list(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        })))
        tags = optional(object({
          key           = optional(string)
          match_options = optional(list(string))
          values        = optional(list(string))
        }))
      }))
      or = optional(list(object({
        and = optional(list(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        })))
        cost_categories = optional(object({
          key           = optional(string)
          match_options = optional(list(string))
          values        = optional(list(string))
        }))
        dimensions = optional(object({
          key           = string
          match_options = optional(list(string))
          values        = list(string)
        }))
        not = optional(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        }))
        or = optional(list(object({
          cost_categories = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
          dimensions = optional(object({
            key           = string
            match_options = optional(list(string))
            values        = list(string)
          }))
          tags = optional(object({
            key           = optional(string)
            match_options = optional(list(string))
            values        = optional(list(string))
          }))
        })))
        tags = optional(object({
          key           = optional(string)
          match_options = optional(list(string))
          values        = optional(list(string))
        }))
      })))
      tags = optional(object({
        key           = optional(string)
        match_options = optional(list(string))
        values        = optional(list(string))
      }))
    }))
    notification = optional(list(object({
      comparison_operator        = string
      notification_type          = string
      subscriber_email_addresses = optional(set(string))
      subscriber_sns_topic_arns  = optional(set(string))
      threshold                  = number
      threshold_type             = string
    })))
    planned_limit = optional(list(object({
      amount     = string
      start_time = string
      unit       = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.budgets_budgets : (
        v.auto_adjust_data == null || (v.auto_adjust_data.historical_options == null || (v.auto_adjust_data.historical_options.budget_adjustment_period >= 1 && v.auto_adjust_data.historical_options.budget_adjustment_period <= 60))
      )
    ])
    error_message = "must be between 1 and 60"
  }
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

