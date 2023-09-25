#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#
subscriptions = {
  launchpad = {
    name            = "management"
    create_alias    = false
    subscription_id = "www-guid"
  }
  identity = {
    name            = "identity"
    create_alias    = false
    subscription_id = "yyy-guid"
  }
  connectivity = {
    name            = "connectivity"
    create_alias    = false
    subscription_id = "xxx-guid"
  }
  management = {
    name            = "management"
    create_alias    = false
    subscription_id = "www-guid"
  }
  security = {
    name            = "security"
    create_alias    = false
    subscription_id = "zzz-guid"
  }
}