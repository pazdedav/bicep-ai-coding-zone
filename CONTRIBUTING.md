# Contributing to Bicep Template Repository

Welcome to our infrastructure-as-code template repository! We're excited that you want to contribute. This repository serves as a foundation for creating Azure infrastructure using Bicep, promoting consistency and best practices across our organization.

## 🎯 Getting Started

1. **Development Environment Setup**
   - Clone this repository
   - Use VS Code with Dev Containers support (our `.devcontainer` configuration will automatically set up all required tools)
   - The dev container includes:
     - Azure CLI with Bicep
     - Azure PowerShell
     - Azure Developer CLI
     - GitHub CLI
     - Required VS Code extensions

2. **Authentication**
   - Use your organizational Azure credentials
   - For CI/CD workflows, ensure you have access to the required workload identity configuration

## 📝 Making Changes

### Branch Strategy
1. Create a feature branch from `main`:
   ```
   git checkout -b feature/your-feature-name
   ```
2. Make your changes following our standards
3. Test your changes locally
4. Submit a Pull Request to `main`

### Quality Standards
- All Bicep templates must:
  - Include parameter descriptions
  - Follow our tagging standards
  - Pass PSRule validation (automatically checked in CI)
  - Include appropriate parameter files for different environments

### Testing Your Changes
1. **Local Testing**
   - Use the Azure CLI or PowerShell to test deployments
   - Validate templates using the VS Code Bicep extension
   - Run PSRule validation locally

2. **CI Pipeline**
   - Automated checks will run on your PR
   - Ensures code quality and security standards
   - Validates Bicep configurations
   - Tests deployments in a sandbox environment

## 📋 Pull Request Process

1. **Before Submitting**
   - Update README.md if you've added new features or changed functionality
   - Ensure your code passes all CI checks
   - Test your changes in a development environment

2. **PR Requirements**
   - Fill out the PR template completely
   - Link to any related issues
   - Include before/after deployment examples if relevant
   - Add reviewers from the infrastructure team

3. **Review Process**
   - At least one approval is required
   - Address review comments promptly
   - Maintain a constructive dialogue

## 🐛 Issue Reporting

- Use our issue templates for:
  - Bug reports
  - Feature requests
  - General feedback
- Include all required information in the templates
- Search existing issues before creating new ones

## 📚 Additional Resources

- [Bicep Documentation](https://learn.microsoft.com/azure/azure-resource-manager/bicep/)
- [Azure Best Practices](https://learn.microsoft.com/azure/architecture/best-practices/)
- [Project Polaris site](https://pangearocks.sharepoint.com/sites/prjPolaris)
- [Teams Channel](https://teams.microsoft.com/l/channel/19%3AcSuHWwNeu51qToXbmH-eWWSyYx-8p-cw32uXQeR75Cs1%40thread.tacv2/General?groupId=241d5a2a-e054-4130-884c-4f3a6e013e77&tenantId=e0ef37b5-3c94-4d42-8e5d-20992b7ea1c4)

## ❓ Getting Help

- Post questions in our internal discussion forum
- Reach out in the infrastructure team channel
- Tag relevant team members in your PR

## 🤝 Community Standards

- Be respectful and constructive in comments and discussions
- Help others learn and grow
- Share knowledge and document your learnings
- Follow our code of conduct (link to internal code of conduct)

---

Remember that this repository serves as a template for other teams. Your contributions help improve the foundation for all our infrastructure deployments. Thank you for contributing!