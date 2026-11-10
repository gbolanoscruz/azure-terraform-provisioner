# 🏗️ Azure Self-Service Infrastructure Provisioner

This repository contains an enterprise-grade Infrastructure as Code (IaC) framework built with **Terraform** to dynamically provision Microsoft Azure resources. 

## 🎯 Business Objective
In global corporate environments, manual infrastructure provisioning creates severe bottlenecks. This project serves as a foundational **Self-Service Platform**, allowing development teams to request and deploy standardized, secure, and compliant cloud resources on-demand.

## ⚙️ Architecture & Best Practices
- **Modular Design:** Uses reusable Terraform modules (`./modules/storage_account`) to enforce consistency across environments.
- **Security by Default:** Enforces modern security standards such as `TLS 1.2` and disables public blob access implicitly.
- **Tagging Strategy:** Automates resource tagging for billing tracking and ownership management.

## 🚀 How to Use

1. Initialize the Terraform working directory:
   ```bash
   terraform init

2. Review the execution plan:
    ```bash
   terraform plan -var="environment=dev"

3. Apply the infrastructure:
    ```bash
   terraform apply -var="environment=dev" -auto-approve
