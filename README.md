# Terraform EKS Production IAC Blueprint

## Overview

This repository, `terraform-eks-production-iac-blueprint`, provides a robust and scalable Infrastructure as Code (IaC) solution for deploying Amazon Elastic Kubernetes Service (EKS) clusters in a production environment using Terraform. It is designed to be a comprehensive blueprint, offering modular and reusable Terraform configurations to streamline the provisioning of EKS clusters and their associated resources on AWS.

## Key Features

*   **Modular Design:** The repository is structured with a modular approach, allowing for easy customization and extension of EKS cluster configurations.
*   **Production-Ready:** Built with best practices for production environments, focusing on security, scalability, and reliability.
*   **Comprehensive EKS Components:** Includes configurations for essential EKS components such as VPC, EKS cluster, IAM roles, and various add-ons.
*   **Add-on Integrations:** Features integrations for critical EKS add-ons like:
    *   VPC
    *   EKS Cluster
    *   IAM User/Role Integration with EKS
    *   Horizontal Pod Autoscaler (HPA)
    *   Cluster Autoscaler and EKS Pod Identities
    *   AWS Load Balancer Controller
    *   Nginx Ingress Controller
    *   EBS CSI Driver (ReadWriteOnce)
    *   EFS CSI Driver
    *   Secrets Manager Integration

## Repository Structure

The repository is organized into logical modules, primarily under the `AWS EKS` directory, with each sub-directory representing a specific component or add-on:

```
terraform-eks-production-iac-blueprint/
├── AWS EKS/
│   ├── 01-VPC/                         # Terraform configurations for VPC setup
│   ├── 02-EKS/                         # Terraform configurations for EKS cluster provisioning
│   ├── 03-Add_IAM_User_Role_to_EKS/    # Terraform configurations for IAM integration with EKS
│   ├── 04-HPA_on_EKS/                  # Terraform configurations for Horizontal Pod Autoscaler
│   ├── 05-Cluster_Autoscaler_and_EKS_Pod_Identities/ # Terraform for Cluster Autoscaler and Pod Identities
│   ├── 06-AWS_Load_Balancer_Controller/ # Terraform for AWS Load Balancer Controller
│   ├── 07-Nginx_Ingress_Controller_in_EKS/ # Terraform for Nginx Ingress Controller
│   ├── 08-EBS_CSI_Driver_ReadWriteOnce_in_EKS/ # Terraform for EBS CSI Driver
│   ├── 09-EFS_CSI_Driver_in_EKS/       # Terraform for EFS CSI Driver
│   ├── 10-Secrets_manager in EKS/      # Terraform for Secrets Manager integration
│   ├── locals.tf                       # Local variables for the EKS module
│   ├── main.tf                         # Main Terraform configuration for EKS
│   └── providers.tf                    # AWS provider configuration
└── README.md                           # This README file
```

## Getting Started

Detailed documentation on the implementation, prerequisites, and step-by-step guides for each module are currently being developed. This will include comprehensive instructions for deploying and managing your EKS clusters using these Terraform configurations and Kubernetes manifests.

Stay tuned for more comprehensive documentation and implementation guides, which will be shared on LinkedIn in the coming days. Make sure to follow my GitHub and LinkedIn profiles for the latest updates!

## Contributions

Contributions are welcome! If you have suggestions for improvements or new features, please open an issue or submit a pull request.

## Connect with me

*   **GitHub:** [https://github.com/Fenil-Gajjar](https://github.com/Fenil-Gajjar)
*   **LinkedIn:** [https://www.linkedin.com/in/gec-bharuch-comp-dte-fenilgajjar]

