terraform {
  backend "azurerm" {
    resource_group_name  = "rg-shared"
    storage_account_name = "tfstateblobproject"
    container_name       = "tfstatecontainer"
    key                  = "projectstate.tfstate"
    # Touchy part to authenticate with Azure and deploy the resources
    use_azuread_auth = true
    use_oidc = true
    subscription_id = "f2b69101-46bb-4437-b7e3-4db306ddcd12"
    tenant_id = "d0eabb3d-a232-4374-ac61-2c4f5849a522"
    client_id = "e7ee42bd-aa24-44d5-b519-cdc467ed3cfd"
  }
}