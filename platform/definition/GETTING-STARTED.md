# Cloud Adoption Framework landing zones for Terraform - Ignite the Azure Platform and landing zones


:rocket: START HERE: [Follow the onboarding guide from](https://aztfmod.github.io/documentation/docs/azure-landing-zones/landingzones/platform/org-setup)


For further executions or command, you can refer to the following sections

## Commands

### Rover ignite the platform

Rover ignite will  process the YAML files and start building the configuration structure of the TFVARS. 

Please note that during the creation of the platform landingones you will have to run rover ignite multiple times as some deployments are required to be completed before you can perform the next steps. 

The best course of actions is to follow the readme files generated within each landing zones, as rover ignite creates the tfvars and also the documentation.

Once you are ready to ingite, just run:

```bash
rover login -t zemosolabs.com -s 4fdcbcc0-8588-4f38-847f-39ce9469e3b0

ansible-playbook $(readlink -f ./landingzones/templates/ansible/ansible.yaml) \
  --extra-vars "@$(readlink -f ./platform/definition/ignite.yaml)" \
  -e base_folder=$(pwd)

```

### Next step

Once the rover ignite command has been executed, go to your configuration folder when the platform launchpad configuration has been created.

Get started with the [launchpad](/tf/caf/platform/definition/level0/launchpad)



## References

Whenever needed, or under a profesional supervision you can use the following commands

### Clone the landingzone project (Terraform base code)

```bash
git clone https://github.com/Azure/caf-terraform-landingzones.git /tf/caf/landingzones
cd /tf/caf/landingzones && git fetch origin
git checkout int-5.6.0

```

### Regenerate the definition folder

For your reference, if you need to re-generate the YAML definition files later, you can run the following command: 

```bash

ansible-playbook $(readlink -f ./landingzones/templates/ansible/walk-through-ci.yaml) \
  --extra-vars "@$(readlink -f ./platform/definition/ignite.yaml)" \
  -e base_folder=$(pwd) \
  -e topology_file=/tf/caf/landingzones/templates/platform/caf_platform_prod_nonprod.yaml \
  -e GITHUB_SERVER_URL= \
  -e GITHUB_REPOSITORY= \
  -e GITOPS_SERVER_URL=/ \
  -e RUNNER_NUMBERS=4 \
  -e AGENT_TOKEN= \
  -e gitops_agent=local \
  -e ROVER_AGENT_DOCKER_IMAGE=aztfmod/rover:1.4.2-2303.2414 \
  -e subscription_deployment_mode=multi_subscriptions \
  -e sub_management=www-guid \
  -e sub_connectivity=xxx-guid \
  -e sub_identity=yyy-guid \
  -e sub_security=zzz-guid \
  -e gitops_pipelines=github \
  -e TF_VAR_environment=test \
  -e bootstrap_sp_object_id=d8e858db-d8de-4938-9361-1a7805e50240 \
  -e template_folder="$(pwd)/platform/definition"

```
