
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t zemosolabs.com

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/subscriptions \
  -tfstate_subscription_id 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -target_subscription 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -tfstate platform_subscriptions.tfstate \
  -env test \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```

