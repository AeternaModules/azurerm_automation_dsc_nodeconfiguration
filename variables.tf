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
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_nodeconfigurations : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_nodeconfigurations : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_dsc_nodeconfigurations : (
        length(v.content_embedded) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

