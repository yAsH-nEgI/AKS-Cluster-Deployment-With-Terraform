# 🚀 AKS Cluster Provisioning on Azure with Terraform Custom Modules

This project automates the provisioning of an **Azure Kubernetes Service (AKS)** cluster using **modular Terraform code**.
It includes secure management of secrets using **Azure Key Vault**, and infrastructure RBAC setup

> ✅ Built as part of a hands-on DevOps project to demonstrate infrastructure automation, modular IaC, and secure AKS provisioning workflows.

---

## 📁 Project Structure

```bash
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── backend.tf
├── modules/
│   ├── aks/
│   ├── keyvault/
│   └── service_principal/
```

📌 **Key Features**

1. Modular Infrastructure-as-Code with custom Terraform modules.
2. Secrets management using Azure Key Vault for client secrets.
3. RBAC setup with Service Principal and role assignments.
4. AKS cluster provisioning with auto-generated Kubeconfig.
5. Reusable and scalable for multiple clusters/environments.


⚙️ **Provisioned Azure Resources**

1. Azure Resource Group
2. Azure Service Principal (with Contributor access)
3. Azure Key Vault (to store client ID and secret)
4. AKS Cluster
5. Role Assignment
6. Kubeconfig File (local)


🔄 **Workflow Overview**

1. Create Resource Group
2. Create Service Principal and generate client secret
3. Store secret in Azure Key Vault
4. Provision AKS Cluster using the Service Principal
5. Generate Kubeconfig for kubectl access

📚 **How to Use**

1. Ensure you have the following before starting:
2. Azure CLI logged in
3. Terraform installed
5. A configured backend (optional but recommended)

```bash
# 1. Clone the repo
git clone https://github.com/yAsH-nEgI/AKS-Cluster-Deployment-With-Terraform.git

cd AKS-Cluster-Deployment-With-Terraform

# 2. Initialize Terraform
terraform init

# 3. Preview changes
terraform plan

# 4. Apply configuration
terraform apply

```



