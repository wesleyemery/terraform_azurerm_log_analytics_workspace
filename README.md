# terraform-azurerm-log_analytics_workspace

This Terraform module deploys a new log analytics workspace in Azure.

## Example Usage

```hcl
provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name   = "tstate"
    storage_account_name  = "tstate23743"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}

module "workspace" {
  source = "git@github.com:wesleyemery/terraform_azurerm_log_analytics_workspace.git"
  location = "eastus"

}

```

## Argument Reference

The following arguments are supported.

- **location** - (Required) The location of where the redis cache is being deployed.
- **sku** - (Required) List for sku input variable. Options are: Free, PerNode, Premium, Standard, Standalone, Unlimited, and PerGB2018.
- **retention_in_days** - (Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730.

## Remote State Reference
 Prior to running terraform init run:
 
 export ARM_ACCESS_KEY=${key}
 
 The key is in the storage account: tstate23743 
 
https://docs.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage