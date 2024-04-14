variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "apim_service_name" {
  description = "Name of the API Management service"
  type        = string
}

variable "publisher_name" {
  description = "Name of the API Management publisher"
  type        = string
}

variable "publisher_email" {
  description = "Email of the API Management publisher"
  type        = string
}

variable "sku_name" {
  description = "SKU of the API Management service"
  type        = string
}