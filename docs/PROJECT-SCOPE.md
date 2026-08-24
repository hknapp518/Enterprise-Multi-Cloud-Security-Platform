# Enterprise Multi-Cloud Security Platform — Project Scope

## Enterprise Problem

Cloud environments can accumulate interconnected security weaknesses across identity, networking, workloads, secrets, and data.

Remediating individual misconfigurations does not necessarily eliminate the broader attack path.

This project evaluates cloud security from an attack-path perspective by identifying how multiple weaknesses can be chained together and implementing layered preventive, detective, and responsive controls to disrupt the attack chain at multiple stages.

## Primary Objective

Design, deploy, attack, secure, and validate an enterprise multi-cloud environment across Microsoft Azure and AWS.

The project will demonstrate that security controls are not merely configured, but validated against realistic attack paths.

## Core Security Principle

Do not assume a security control works because it is configured.

Validate that the attack fails.

## Primary Cloud

Microsoft Azure

## Secondary Cloud

Amazon Web Services (AWS)

## Attack Path 01

Compromised Cloud Workload → Identity Abuse → Sensitive Data Access

Initial attack path:

Internet Exposure
→ Azure Workload
→ Managed Identity
→ Excessive RBAC Permissions
→ Key Vault
→ Sensitive Storage

## Validation Strategy

For each attack path:

1. Establish the insecure configuration.
2. Validate that each stage of the attack path is reachable.
3. Identify security findings and telemetry.
4. Implement preventive controls.
5. Implement detective controls.
6. Implement response/remediation controls.
7. Re-run the attack.
8. Validate where the attack chain is disrupted.
9. Simulate failure of selected controls.
10. Determine whether additional security layers prevent the attacker from reaching the objective.

## Target Technologies

- Microsoft Azure
- Amazon Web Services
- Terraform
- Microsoft Defender for Cloud
- Microsoft Entra ID
- Azure Policy
- Azure RBAC
- Azure Key Vault
- Azure Storage
- Microsoft Sentinel
- AWS IAM
- AWS Security Hub
- Amazon GuardDuty
- AWS Config
- AWS CloudTrail
- GitHub Actions
- Python / PowerShell
