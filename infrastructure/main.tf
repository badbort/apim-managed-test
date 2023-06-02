
// create an apim instance and a dotnet isolated function app that uses managed identity

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

provider "azuread" {}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = ""
}

data "azuread_client_config" "current" {}
