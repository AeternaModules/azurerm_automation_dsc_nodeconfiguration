output "automation_dsc_nodeconfigurations_id" {
  description = "Map of id values across all automation_dsc_nodeconfigurations, keyed the same as var.automation_dsc_nodeconfigurations"
  value       = { for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : k => v.id }
}
output "automation_dsc_nodeconfigurations_automation_account_name" {
  description = "Map of automation_account_name values across all automation_dsc_nodeconfigurations, keyed the same as var.automation_dsc_nodeconfigurations"
  value       = { for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : k => v.automation_account_name }
}
output "automation_dsc_nodeconfigurations_configuration_name" {
  description = "Map of configuration_name values across all automation_dsc_nodeconfigurations, keyed the same as var.automation_dsc_nodeconfigurations"
  value       = { for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : k => v.configuration_name }
}
output "automation_dsc_nodeconfigurations_content_embedded" {
  description = "Map of content_embedded values across all automation_dsc_nodeconfigurations, keyed the same as var.automation_dsc_nodeconfigurations"
  value       = { for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : k => v.content_embedded }
}
output "automation_dsc_nodeconfigurations_name" {
  description = "Map of name values across all automation_dsc_nodeconfigurations, keyed the same as var.automation_dsc_nodeconfigurations"
  value       = { for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : k => v.name }
}
output "automation_dsc_nodeconfigurations_resource_group_name" {
  description = "Map of resource_group_name values across all automation_dsc_nodeconfigurations, keyed the same as var.automation_dsc_nodeconfigurations"
  value       = { for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : k => v.resource_group_name }
}

