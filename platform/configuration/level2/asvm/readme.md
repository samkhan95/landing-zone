# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t zemosolabs.com

cd /tf/caf/landingzones
git fetch origin
git checkout int-5.6.0

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level2/asvm \
  -tfstate_subscription_id 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -target_subscription 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env test \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

