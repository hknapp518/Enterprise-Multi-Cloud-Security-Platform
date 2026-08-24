# Attack Path 01 — Compromised Workload to Sensitive Data Access

## Scenario

A public-facing Azure workload is compromised by an external attacker. The workload has a system-assigned managed identity with excessive permissions that allow access to additional Azure resources.

The attacker attempts to use the compromised workload's identity to move through the cloud environment and ultimately access sensitive data.

## Attacker Starting Position

The attacker begins with network access to an intentionally exposed Azure workload.

The attacker does not initially possess:

- Azure user credentials
- Service principal credentials
- Azure subscription access
- Key Vault credentials
- Storage account credentials

The attack must progress using permissions and identities available to the compromised workload.

## Attacker Objective

Gain unauthorized access to sensitive data stored in an Azure Storage Account.

## Initial Attack Path

Internet
→ Public Azure Workload
→ Workload Compromise
→ Managed Identity
→ Excessive Azure RBAC
→ Azure Key Vault
→ Credential/Secret Access
→ Azure Storage Account
→ Sensitive Data

## Security Question

Can layered preventive, detective, and responsive cloud security controls disrupt this attack path at multiple independent stages, even if an earlier security control fails?

## Validation Criteria

The initial insecure environment must demonstrate that the attack path is technically possible.

After remediation:

1. Re-run the attack path.
2. Record the first control that prevents progression.
3. Validate additional downstream controls independently.
4. Simulate failure or removal of selected controls.
5. Determine whether another security layer still prevents access to the target data.
6. Capture telemetry and security findings generated during each stage.
7. Document successful and failed security controls.
