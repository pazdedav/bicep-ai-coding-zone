# Bicep project template

Template repository for Infrastructure as Code (IaC) deployments to Azure using Bicep DSL (Domain Specific Language). This repository provides a standardized starting point for Azure infrastructure deployments with built-in CI/CD pipelines, development container configuration, and best practices.

## 🎯 Features

- Pre-configured Bicep development environment
- GitHub Actions workflows for CI/CD
- DevContainer support for consistent development experience
- Sample Bicep templates and parameters
- Workload identity integration for secure authentication

## 📋 Prerequisites

- Azure subscription
- GitHub account with permissions to create repositories
- One of the following development environments:
  - Visual Studio Code with Remote Containers extension
  - GitHub Codespaces
- Azure CLI (if developing locally)

## 🚀 Getting Started

1. Click the "Use this template" button to create a new repository from this template
2. Clone your new repository locally
3. Configure repository secrets (see [Authentication Setup](#authentication-setup))
4. Navigate to the `infrastructure` directory
5. Review and modify the `main.bicep` template for your needs
6. Deploy using one of these methods:
   ```bash
   # Using Azure CLI
   az deployment sub create --location <region> --template-file main.bicep --parameters @main.bicepparam

   # Using Azure PowerShell
   New-AzDeployment -Location <region> -TemplateFile main.bicep -TemplateParameterFile main.bicepparam
   ```

## 🔧 Configuration Files

### bicepconfig.json

The `bicepconfig.json` file in the root directory controls Bicep behavior including:
- Module aliases for commonly used paths
- Private registry configurations
- Linting rules and analysis settings

### .devcontainer

The `.devcontainer` configuration ensures a consistent development environment with:
- Azure PowerShell
- Azure CLI
- Azure Developer CLI (azd)
- Bicep tools and extensions
- Git configuration

## 🔄 CI/CD Workflows

This repository includes two GitHub Action workflows:

### Continuous Integration (CI)
- Triggered by:
  - Push to feature branches
  - Pull requests to main branch
- Performs:
  - Bicep template validation
  - Linting checks
  - What-if analysis

### Continuous Deployment (CD)
- Triggered by:
  - Push to main branch with changes in `/infrastructure`
- Performs:
  - Template validation
  - Infrastructure deployment
  - Post-deployment testing

## 🔐 Authentication Setup

The repository uses Azure workload identity federation for secure authentication. Configure the following repository secrets:

- `AZ_TENANT_ID`: Your Azure tenant ID
- `AZ_SUBSCRIPTION_ID`: Target subscription ID
- `AZ_CLIENT_ID`: Application (client) ID of the workload identity

For setup instructions, see [Configuring Workload Identity Federation](https://learn.microsoft.com/en-us/azure/active-directory/develop/workload-identity-federation-create-trust?pivots=identity-wif-apps-methods-azp).

## 🤝 Contributing

Contributions are welcome! Please see our [Contributing Guide](CONTRIBUTING.md) for details on:
- Code of Conduct
- Development process
- Submission guidelines
- Review process

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For issues and feature requests, please use the GitHub Issues section of this repository.
