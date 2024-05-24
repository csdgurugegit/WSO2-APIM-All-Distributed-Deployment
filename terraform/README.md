# Deploy All Nodes Using Terraform in Azure

This guide is designed for deploying a distributed API-M environment. It involves deploying all nodes using Terraform in Azure, with a setup that includes five Ubuntu 22.04 LTS nodes. Deployment values can be customized using the `values.conf` file.

### Initialize the Terraform working directory

```bash
terraform init
```

### Plan the deployment and specify the variable file

```
terraform plan -var-file=values.conf
```

##### Save the execution plan to a file

```
terraform plan -out apim.tfplan -var-file=values.conf
```

### Apply the execution plan with the specified variable file

```
terraform apply -var-file=values.conf
```

##### Or, apply the saved execution plan

```
terraform apply apim.tfplan
```

### Destroy the resources managed by Terraform with the specified variable file

```
terraform destroy -var-file=values.conf
```

For more information, please refer the link.

Basic CLI Features | Terraform | HashiCorp https://developer.hashicorp.com/terraform/cli/commands
