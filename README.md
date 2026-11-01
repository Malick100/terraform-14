AWS Infrastructure Provisioning with Terraform
Overview
This project uses Terraform to provision and manage AWS infrastructure. It demonstrates Infrastructure as Code (IaC) practices, modular configuration, and AWS networking components.

The infrastructure includes a Virtual Private Cloud (VPC), public and private subnets, Internet Gateway, NAT Gateway, route tables, and application-related resources.

Architecture
The core infrastructure includes:

Amazon VPC: Isolated cloud network.
Public Subnets: Two public subnets across different Availability Zones.
Private Subnets: Two private subnets across different Availability Zones.
Internet Gateway: Provides internet connectivity to public resources.
NAT Gateway: Allows private resources to access the internet outbound.
Route Tables: Manage traffic between subnets and external networks.
Elastic IP: Provides a static public IP for the NAT Gateway.
Technologies Used
Terraform
Amazon Web Services (AWS)
AWS VPC
EC2 Networking
Internet Gateway
NAT Gateway
Elastic IP
Terraform Modules
Infrastructure as Code (IaC)
Project Structure
terraform-14/
│
├── envs/
│
├── modules/
│   └── vpc/
│
├── terraform-import/
│
├── appbackend.tf
├── appfrontend.tf
├── backend.tf
├── data.tf
├── main.tf
├── output.tf
├── variables.tf
├── version.tf
│
├── .terraform.lock.hcl
└── .gitignore
Prerequisites
Before deploying this infrastructure, make sure you have:

An AWS account.
Terraform installed.
AWS CLI installed.
Valid AWS credentials.
Appropriate AWS IAM permissions.
Configure AWS Credentials
aws configure
Deployment Instructions
1. Clone the Repository
git clone https://github.com/Malick100/terraform-14.git

cd terraform-14
2. Initialize Terraform
terraform init
This downloads the required providers and initializes the Terraform working directory.

3. Format Terraform Files
terraform fmt -recursive
4. Validate Configuration
terraform validate
This checks the Terraform configuration for syntax and configuration errors.

5. Review the Execution Plan
terraform plan
Review the infrastructure changes before applying them.

6. Deploy Infrastructure
terraform apply
Confirm the deployment when prompted.

Terraform Outputs
After deployment, retrieve the infrastructure outputs:

terraform output
The configuration declares outputs for selected infrastructure resources, including:

VPC ID
VPC ARN
Public Subnet ID
NAT Gateway ID
Infrastructure Cleanup
To destroy the infrastructure created by Terraform:

terraform destroy
Review the destruction plan carefully before confirming.

Key Learning Objectives
This project demonstrates practical experience with:

Infrastructure as Code using Terraform.
AWS networking and VPC architecture.
Public and private subnet configuration.
Internet Gateway and NAT Gateway implementation.
Terraform variables and outputs.
Terraform modules and reusable infrastructure.
Terraform initialization, validation, planning, and deployment.
AWS infrastructure management.
Important Notes
The core network configuration specifies Availability Zones in us-east-1.
NAT Gateways and Elastic IPs may generate AWS charges.
Keep AWS credentials and sensitive information out of GitHub.
Protect Terraform state files because they may contain sensitive information.
Review all Terraform configurations and the execution plan before deploying.
Author: Malick Fall

Repository: https://github.com/Malick100/terraform-14
