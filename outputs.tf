output "automation_dsc_nodeconfigurations" {
  description = "All automation_dsc_nodeconfiguration resources"
  value       = azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations
}
output "automation_dsc_nodeconfigurations_automation_account_name" {
  description = "List of automation_account_name values across all automation_dsc_nodeconfigurations"
  value       = [for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : v.automation_account_name]
}
output "automation_dsc_nodeconfigurations_configuration_name" {
  description = "List of configuration_name values across all automation_dsc_nodeconfigurations"
  value       = [for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : v.configuration_name]
}
output "automation_dsc_nodeconfigurations_content_embedded" {
  description = "List of content_embedded values across all automation_dsc_nodeconfigurations"
  value       = [for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : v.content_embedded]
}
output "automation_dsc_nodeconfigurations_name" {
  description = "List of name values across all automation_dsc_nodeconfigurations"
  value       = [for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : v.name]
}
output "automation_dsc_nodeconfigurations_resource_group_name" {
  description = "List of resource_group_name values across all automation_dsc_nodeconfigurations"
  value       = [for k, v in azurerm_automation_dsc_nodeconfiguration.automation_dsc_nodeconfigurations : v.resource_group_name]
}

