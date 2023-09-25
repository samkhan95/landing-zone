# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to int-5.6.0

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t zemosolabs.com

cd /tf/caf/landingzones
git fetch origin
git checkout int-5.6.0

rover \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/platform/configuration/level1/alz/es \
  -tfstate_subscription_id 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -target_subscription 4fdcbcc0-8588-4f38-847f-39ce9469e3b0 \
  -tfstate alz_es.tfstate \
  -env test \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_es.tfstate.tfplan \
  -a plan

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
