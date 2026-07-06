variable "automation_dsc_nodeconfigurations" {
  description = <<EOT
Map of automation_dsc_nodeconfigurations, attributes below
Required:
    - automation_account_name
    - content_embedded
    - name
    - resource_group_name
EOT

  type = map(object({
    automation_account_name = string
    content_embedded        = string
    name                    = string
    resource_group_name     = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_nodeconfigurations : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_nodeconfigurations : (
        length(v.content_embedded) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_automation_dsc_nodeconfiguration's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: automation_account_name
  #   source:    validate.AutomationAccount: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
}

