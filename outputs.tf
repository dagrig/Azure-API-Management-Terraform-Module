output "apim_service_id" {
  description = "ID of the API Management service"
  value       = azurerm_api_management.apim_service.id
}

output "apim_service_gateway_url" {
  description = "Gateway URL of the API Management service"
  value       = azurerm_api_management.apim_service.gateway_url
}