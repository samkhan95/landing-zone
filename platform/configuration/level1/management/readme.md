
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t zemosolabs.com -s 4fdcbcc0-8588-4f38-847f-39ce9469e3b0

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/management \
  -tfstate_subscription_id 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -target_subscription 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -tfstate management.tfstate \
  -env test \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
