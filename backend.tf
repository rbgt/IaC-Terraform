terraform {
  backend "azurerm" {
    resource_group_name  = "rg-shared"
    storage_account_name = "tfstateblobproject"
    container_name       = "tfstatecontainer"
    key                  = "projectstate.tfstate"
    # Touchy part to authenticate with Azure and deploy the resources
    use_azuread_auth = true
    use_oidc = true
    subscription_id = ${{ secrets.TF_VAR_SUBSCRIPTION_ID}}
    tenant_id = ${{ secrets.TF_VAR_TENANT_ID}}
    client_id = ${{ secrets.TF_VAR_CLIENT_ID}}
  }
}