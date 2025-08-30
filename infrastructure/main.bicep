// Azure Bicep deployment file for deploying common components for this Solution Accelerator
targetScope = 'subscription'

@description('Provide the name of the Resource Group for shared components.')
param resourceGroupname string = 'test-project-rg'

@description('Provide location for resources.')
param location string = 'norwayeast'

param tags object

// Create a resource group
resource rg 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: resourceGroupname
  location: location
  tags: tags
}
