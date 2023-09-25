# Cloud Adoption Framework landing zones for Terraform - Starter template for Azure Subscription Vending Machine (ASVM)

## Generate the configuration files

```bash
ansible-playbook /tf/caf/landingzones/templates/ansible/ansible.yaml \
  --extra-vars "@/tf/caf/asvm/zemoso/template/ignite.yaml"  \
  -e base_folder=$(pwd)


```

## Regenerate the definition folder

```bash
ansible-playbook /tf/caf/landingzones/templates/ansible/asvm_definition.yaml \
  --extra-vars "@/tf/caf/asvm/zemoso/template/ignite.yaml" \
  -e base_folder=$(pwd)

```