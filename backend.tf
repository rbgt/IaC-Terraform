terraform {
  backend "azurerm" {
    resource_group_name  = "rg-shared"
    storage_account_name = "tfstateblobproject"
    container_name       = "tfstatecontainer"
    key                  = "projectstate.tfstate"
    use_azuread_auth = true
    use_oidc = true
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
    client_id = var.client_id
  }
}