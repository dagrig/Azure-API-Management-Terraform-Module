# Azure API Management Terraform Module

This Terraform module deploys an Azure API Management service.

## Usage

1. Fork this repository to your GitHub account.
2. Update the `terraform.tfvars` file with your desired values.
3. Commit and push your changes to the `main` branch of your forked repository.
4. GitHub Actions will automatically trigger the Terraform workflow to provision the API Management service.

## GitHub Actions Workflow

This repository includes a GitHub Actions workflow (`.github/workflows/terraform.yml`) that automates the process of applying Terraform changes. The workflow is triggered whenever changes are pushed to the `main` branch.

The workflow performs the following steps:
1. Checks out the repository.
2. Sets up Terraform.
3. Initializes the Terraform working directory.
4. Validates the Terraform configuration.
5. Generates a Terraform execution plan.
6. Applies the Terraform changes if the workflow is running on the `main` branch.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource_group_name | Name of the resource group | string | n/a | yes |
| location | Location of the resources | string | n/a | yes |
| apim_service_name | Name of the API Management service | string | n/a | yes |
| publisher_name | Name of the API Management publisher | string | n/a | yes |
| publisher_email | Email of the API Management publisher | string | n/a | yes |
| sku_name | SKU of the API Management service | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| apim_service_id | ID of the API Management service |
| apim_service_gateway_url | Gateway URL of the API Management service |