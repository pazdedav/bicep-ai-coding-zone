---
applyTo: '**/*.bicep'
---
Coding standards, domain knowledge, and preferences that AI should follow.

## Bicep Specific Instructions
### Naming Conventions
-   When writing Bicep code, use lowerCamelCase for all names (variables, parameters, resources)
-   Use resource type descriptive symbolic names (e.g., 'storageAccount' not 'storageAccountName')
-   Avoid using 'name' in a symbolic name as it represents the resource, not the resource's name
-   Avoid distinguishing variables and parameters by the use of suffixes

### Structure and Declaration
-   Always declare parameters at the top of files with @description decorators
-   Use latest stable API versions for all resources
-   Always add a description decorator `@description` on parameters and outputs to describe the purpose. If the parameter is required, start the description with `Required.` and when the parameter is optional or nullable start with `Optional.`.
-   Specify minimum and maximum character length for naming parameters
-   Begin Bicep files with metadata including name, description. For example:
    `metadata name = 'exampleName'`
    `metadata description = 'exampleDescription'`

### Parameters
-   Set default values that are safe for test environments (use low-cost pricing tiers)
-   Use @allowed decorator sparingly to avoid blocking valid deployments
-   Use parameters for settings that change between deployments
-   Required parameters should not have a default value, nor have a nullable definition at the type. param parName string? is wrong!
-   Parameters that are optional are not defined with a default value. Instead, a ? is added to the datatype. For example, if you have a parameter that is optional, you can define it like this:
```bicep
@description('Optional parameter')
param optionalParameter string?
```

### Variables
-   Variables automatically infer type from the resolved value
-   Use variables to contain complex expressions instead of embedding them directly in resource properties

### Resource References
-   Use symbolic names for resource references instead of reference() or resourceId() functions
-   Create resource dependencies through symbolic names (resourceA.id) not explicit dependsOn
-   For accessing properties from other resources, use the 'existing' keyword instead of passing values through outputs

### Resource Names
-   Use template expressions with uniqueString() to create meaningful and unique resource names
-   Add prefixes to uniqueString() results since some resources don't allow names starting with numbers

### Child Resources
-   Avoid excessive nesting of child resources
-   Use parent property or nesting instead of constructing resource names for child resources

### Module References
-   Avoid generating name attribute when declaring modules (used as a nested deployment name), Bicep CLI will auto-generate it.

### Security
-   Never include secrets or keys in outputs
-   If a parameter name includes ‘password,’ ‘admin,’ or ‘key,’ apply the @secure decorator to ensure secure handling. For example, use `@secure` with parameters like adminPassword or apiKey.
-   Use resource properties directly in outputs (e.g., storageAccount.properties.primaryEndpoints)

## Built-in functions

If this error arises:
`Environment URLs should not be hardcoded. Use the environment() function to ensure compatibility across clouds. Found this disallowed host: "core.windows.net" bicep core linterno-hardcoded-env-urls`

Use the built-in function `environment()` to retrieve the current environment. #fetch https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/bicep-functions-deployment#environment

### Documentation
-   Include helpful // comments within your Bicep files to improve readability

## User-defined types

Prefer strong typing over loosely typed arrays/objects.

```bicep
// arrays of primitives
param allowedSubnets string[]

// typed object
type Person = {
  name: string
  age: int
}
param owner Person
```

## Template structure

```bicep
////////////
// Imports (optional)
////////////

metadata name = '{name}'
metadata description = '{<= 100 chars: purpose of this template}'

////////////
// targetScope (optional)
////////////

////////////
// Parameters
////////////

////////////
// Variables
////////////

////////////
// Resources / Modules / Azure Verified Modules
////////////

////////////
// Outputs
////////////

////////////
// User-Defined Types
////////////

////////////
// User-Defined Functions (optional)
////////////
```

### Azure Verified Modules
-   Use Azure verified modules from the Bicep registry when available to ensure best practices and security compliance
-   Prefer using the latest versions AVM modules, published in the Bicep Registry (MCR)
-   Azure Verified Modules always have the name and location as required parameters. Always pass the name and location as parameters to the module:

    ```bicep
    module modSymbolicName 'br/public:avm/res/_type_/_resource_:_version_' = {
    params: {
        name: Name
        location: Location
    }
    }
    ```
- Example references to AVM modules:
  - Compute: br/public:avm/res/compute:_version_
  - Desktop Virtualization: br/public:avm/res/desktop-virtualization:_version_
  - Azure Monitor: br/public:avm/res/insights:_version_
  - Networking: br/public:avm/res/network:_version_
  - Storage: br/public:avm/res/storage:_version_

## Do not do this

Do not make every parameter optional and coalesce these in the variable:

```bicep
var effectiveLocation = location ?? 'westeurope'
var effectiveSkuName = skuName ?? 'Standard_LRS'
var effectiveKind = kind ?? 'StorageV2'
var effectiveAllowBlobPublicAccess = allowBlobPublicAccess ?? false
var effectiveSupportsHttpsTrafficOnly = supportsHttpsTrafficOnly ?? true
var effectivePublicNetworkAccess = publicNetworkAccess ?? 'Disabled'
var effectiveNetworkAcls = networkAcls ?? {
  bypass: 'AzureServices'
  defaultAction: 'Deny'
}
```
