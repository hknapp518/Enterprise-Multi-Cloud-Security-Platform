resource "azurerm_resource_group" "attack_path_01" {
  name     = "rg-attack-path-01"
  location = "East US"

  tags = {
    Project     = "Enterprise-Multi-Cloud-Security-Platform"
    AttackPath  = "01"
    Environment = "Lab"
    ManagedBy   = "Terraform"
  }
}
