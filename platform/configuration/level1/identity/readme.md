
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t zemosolabs.com -s 4fdcbcc0-8588-4f38-847f-39ce9469e3b0

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/identity \
  -tfstate_subscription_id 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -target_subscription 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -tfstate identity.tfstate \
  -env test \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
