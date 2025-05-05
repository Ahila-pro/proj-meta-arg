variable "resource_groups" {
  description = "List of Azure resource groups with names and locations"
  type = list(object({
    name     = string
    location = string
  }))

  default = [
    { name = "rg-dev-eastus",    location = "East US" },
    { name = "rg-test-westus",   location = "West US" },
    { name = "rg-prod-centralus", location = "Central US" }
  ]
}
