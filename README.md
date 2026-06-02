# Azure VM Deployment with Bicep + Automated Hardening

## Overview
This project deploys a secure Windows Server VM using Bicep, including:
- VNet + subnet
- NSG with least-privilege rules
- Windows Server 2022 VM
- Managed identity
- Azure Monitor Agent
- PowerShell hardening script

## Architecture
- Single VNet with dedicated subnet
- NSG allowing RDP only from a specific IP
- VM bootstrapped with DSC-style hardening
- AMA installed for monitoring

## Deployment
