# ZeroTrustMesh-K8s
Implementing Zero Trust principles in containerized environments is crucial for securing East-West traffic, especially in the context of microservices communication. This project explores the integration of Google Kubernetes Engine (GKE), Anthos, and Istio to establish a robust security framework. 

This repository contains Terraform code to deploy Google Kubernetes Engine (GKE) integrated with Anthos, providing a secure and scalable container orchestration environment.

## Prerequisites
Before you begin, ensure you have:

- A Google Cloud Platform (GCP) account
- Terraform installed
- Appropriate credentials and API access set up in GCP

## Usage
1. Clone this repository
`git clone https://github.com/foram31k/ZeroTrustMesh-K8s.git`
2. Initialize Terraform
`terraform init`
3. Customize variables in **variables.tf** or create a **terraform.tfvars** with respective values for the variables.
4. Perform a Terraform plan to preview changes
`terraform plan`
Review the proposed changes and ensure they aling with your expectations.
5. Deploy the infrastructure
`terraform apply`
Confirm by typing **yes** when prompted.
7. Access your GKE cluster integrated with Anthos in the Google Cloud Console. Also, the namespaces will be created.
8. Deploy application in the newly created namespace and use the files in **kube-files** folder for the same.

#### Cleanup
To cleanup the applied infrastructure or to avoid incurring changes, destroy the deployed resources.
`terraform destroy`
Confirm by typing yes when prompted.
