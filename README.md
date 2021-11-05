# Terraform_IaaS_vs_PaaS_AZURE
# Demo for iaas vs paas azure - terraform

![Terraform](https://raw.githubusercontent.com/hashicorp/vscode-terraform/main/terraform-banner.png)

## Status
![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)

## Getting Started
To get started please create an azure account and check you have write and read permission + services provisioning access.
- Terraform Version 12
- Azure CLI
- Azure Account
- Azure Subscription_id

### Windows
1. Retrieve the terraform binary by downloading a pre-compiled binary or compiling it from source.
2. Find binary and install it using windows installation wizard
3. Install the Azure CLI tool with powershell

```shell
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
```

4. Authenticate to Azure with powershell

```shell
az login
```

### MacOs
1. First, install the HashiCorp tap:

```shell
brew tap hashicorp/tap
```

2. Install Terraform with hashicorp/tap/terraform.

```shell
brew install hashicorp/tap/terraform
```

3. Update Terraform to latest version

```shell
brew upgrade hashicorp/tap/terraform
```

4. Install the Azure CLI tool

```shell
brew update && brew install azure-cli
```

5. Authenticate using the Azure CLI

```shell
az login
```

## Usage
To be determined