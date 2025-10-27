---
agent: bicep-plan
---
I am tasked with the implementation of a storage account including private networking using a private endpoint (using blob groupId). The virtual network used is an existing virtual network named vnet-01 and subnet snet-pe-01. The virtual network is present in the resource group rg-networking.

Additionally, I want to use an existing private DNS zone to register the private endpoint. This DNS zone is present in the resource group rg-dns-zones. The deployment region is west europe. Finally, the existing resources are created in the same subscription, so the target scope is resource group.
