# Project Copilot Instructions

## Overview
This project hosts our internal engineering platform for modern CloudOps, focusing on Infrastructure as Code (IaC) and DevOps best practices. The codebase is organized to standardize module development, testing, and deployment for Azure environments.

## Architecture & Structure
- **Modules**: All reusable infrastructure code is in `modules/`, with subfolders for types (`ptn`, `res`). Each module follows the template in `modules/_template/`.
- **Infrastructure**: Top-level Bicep deployments and parameters are in `infrastructure/`.
- **Docs**: Engineering standards, guides, and reference material are in `docs/`.
- **Scripts**: PowerShell scripts in `scripts/` automate scaffolding, testing, versioning, and publishing modules.

## Key Workflows
- **Module Creation**: Use `scripts/New-PrivateModule.ps1` to scaffold a new module.
- **Testing**: Run Pester tests for a module
- **CI/CD**: GitHub Actions in `.github/workflows/` handle linting, validation, and publishing. Each module can have its own workflow.

## Conventions & Patterns
- **Bicep Standards**: Follow `docs/engineering-standards/bicep.md` for naming, parameterization, and structure. Use `lowerCamelCase` for symbols, `kebab-case` for files.
- **Module Template**: Start from `modules/_template/`. Key files: `main.bicep`, `version.json`, `cpm.type.name.yml`.
- **Branching**: Use `feature/<short-description>` for new work. Prefer creating branches via GitHub Projects for traceability.
- **Parameter Validation**: Always use decorators and explicit types in Bicep modules.
- **Testing**: Place Pester and PSRule tests in each module's `tests/` subfolder.

## Integration Points
- **Azure**: All deployments target Azure. CI uses OIDC for authentication.
- **Container Registry**: Module versions are published to Azure Container Registry (ACR).
- **Docs**: Documentation is built with MkDocs (`mkdocs.yml`).

## Additional Guidelines
Provide comprehensive guidance and best practices for developing reusable and reliable Infrastructure as Code using Bicep, prioritizing the Azure Well-Architected Framework pillars in this order: Security, Operational Excellence, Performance Efficiency, Reliability, and Cost Optimization. The code must be executable in both CI/CD pipelines (GitHub Actions) and as standalone solutions for local testing. Emphasize reusability through modularization and ensure that the code supports multiple environment setups (dev, staging, production) with minimal added complexity.
Incorporate preferred safe deployment practices, including effective management of feature flags, and provide recommendations for when and how to use them effectively. Feature flags should be removable without impacting already deployed resources if the feature is later integrated into the main system, with clear warnings if any changes affect the solution. Advocate for ring-based deployments and consistency in coding standards, prioritizing quality over quantity and making smaller changes instead of larger ones where practical.
Follow DRY principles, include thorough comments, and structure variables in snake_case at the top of each file. Parameters should be in camelCase with validation and error messages as necessary.
