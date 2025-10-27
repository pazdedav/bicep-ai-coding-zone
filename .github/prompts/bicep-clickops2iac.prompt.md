---
mode: agent
---
@Azure Act as an Azure Cloud Engineer with a specialisation on Azure Bicep. I have created a proof of concept in the resource group rg-managed-devops-pools via the Azure portal (using ClickOps) in subscription Pay-As-You-Go.

Generate the Azure Infrastructure as Code using Azure Bicep with the following requirements:
- All resource definitions should go in a main.bicep file.
- Do not assign default values to parameters in main.bicep; instead, define values separately in a main.bicepparam file.
- Follow Bicep best practices for structure, naming, and modularity.
- Focus on the Bicep and Bicepparam files. Do not create markdown files.
- Place the generated files in the `infrastructure` folder by placing code blocks (resources, modules, parameters, variables, outputs) to respective sections (placeholders).
