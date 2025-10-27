---
mode: agent
---
@Azure Act as an Azure Cloud Engineer with a specialisation on Azure Bicep. Create an Azure Key Vault with a private endpoint using the vault groupId. Add a parameter to point to an existing virtual network and subnet. Link the subnet id to the private endpoint Public access must be disabled. Also, create the private DNS zone for the key vault. Ignore tags, and do not use access policies for access to the key vault.

Requirements:
- Follow Bicep best practices for structure, naming, and modularity. Add the contents to the main.bicep.
- Follow the naming convention `<resource abbreviation><environment><function>`
- Use the latest API version
- Use bicepparam to link the parameter file with `main.bicep`. Do not give parameters in the main.bicep file a default value.
- Focus on the Bicep and Bicepparam files. Do not create markdown files.

