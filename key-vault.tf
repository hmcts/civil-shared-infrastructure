module "vault" {
  source              = "git@github.com:hmcts/cnp-module-key-vault?ref=master"
  name                = "${var.product}-shared-${var.env}"
  product             = var.product
  env                 = var.env
  tenant_id           = var.tenant_id
  object_id           = var.jenkins_AAD_objectId
  resource_group_name = azurerm_resource_group.rg.name
  product_group_name  = "DTS Civil"
  common_tags         = local.tags
  create_managed_identity = false
}

output "vaultName" {
  value = module.vault.key_vault_name
}

output "vaultUri" {
  value = module.vault.key_vault_uri
}
