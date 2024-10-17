terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.53.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
  backend "http" {
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  environment                = "public"
  subscription_id            = "b971283c-e0b7-46a4-9496-9cbfb850ebe5"
  tenant_id                  = "e824e20c-c5d7-4a69-adb1-3494404763a5"
}

provider "azuread" {
  environment = "public"
  tenant_id   = "e824e20c-c5d7-4a69-adb1-3494404763a5"
}
