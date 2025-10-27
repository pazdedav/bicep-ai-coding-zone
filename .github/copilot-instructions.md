# Copilot Instructions for bicep-template-repo

## Project Overview

This repository provides a scaffold for Azure infrastructure-as-code using Bicep. It is designed for multi-environment deployments (dev, test, prod) and follows modern CI/CD practices with GitHub Actions.

## Key Components

- `infrastructure/main.bicep`: Main Bicep template for Azure resource provisioning.
- `infrastructure/main.bicepparam`: Default parameter file. Additional environment-specific parameter files should be placed here.
- `scripts/`: Utility scripts (e.g., `Add-WorkloadIdentity.ps1`).
- `tests/`: Pester test scripts for validating deployments.
- `.github/workflows/`: (Not yet present) Place CI/CD workflow YAMLs here.
- `ps-rule.yaml`: PSRule configuration for Azure best practice validation.
- `bicepconfig.json`: Bicep linter and module configuration.

## Developer Workflows

- **CI**: Validate Bicep syntax, run PSRule, perform what-if analysis, and run Pester tests on PRs and feature branches.
- **CD**: Deploys to Azure only after successful CI and merge to `main`. Runs pre-flight validation and post-deployment Pester tests.
- **Testing**: Use Pester (`Invoke-Pester tests/*.Tests.ps1`) for PowerShell-based validation.
- **Linting**: Bicep linting is configured via `bicepconfig.json` and enforced in CI.
- **Best Practices**: PSRule is used for Azure-specific policy and best practice checks.
- **Git Commit Messages**: Use Conventional Commits when suggesting commit messages (in VS Code, on GitHub.com, etc.)

## Patterns & Conventions

- **Parameterization**: Use one Bicep template with multiple parameter files for different environments.
- **Workload Identity**: Scripts in `scripts/` may be used to configure Azure Workload Identity.
- **Reusable Workflows**: Intended to support reusable GitHub Actions workflows, possibly stored in a central org repo.
- **Branching**: Feature work occurs in `feature/*` branches; only `main` is deployed.
- **Secrets**: Azure credentials are expected as GitHub secrets (`AZ_TENANT_ID`, `AZ_SUBSCRIPTION_ID`, `AZ_CLIENT_ID`).

## Integration Points

- **Azure**: All deployments target Azure using Bicep and the Azure CLI.
- **GitHub Actions**: CI/CD is managed via workflows (see `.github/workflows/`).
- **PSRule**: Enforces Azure best practices (see `ps-rule.yaml`).
- **Pester**: Used for both pre- and post-deployment validation.

## Examples

- To add a new environment, create a new parameter file in `infrastructure/` (e.g., `main.dev.bicepparam`).
- To run all tests locally:  
  ```sh
  pwsh -c 'Invoke-Pester tests/*.Tests.ps1 -PassThru'
