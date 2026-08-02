

# Terraform Bootstrap

This repository provisions the remote backend infrastructure for Terraform state management on AWS.

It creates the resources required for storing and protecting Terraform state, allowing multiple engineers and projects to share a centralized backend.

---

## Architecture

```
Terraform Project
       │
       ▼
Remote Backend
       │
       ├── S3 Bucket (Terraform State)
       ├── DynamoDB (State Locking)
       └── AWS KMS (Encryption)
```

---

## Resources Created

- Amazon S3 Bucket
  - Stores Terraform remote state
  - Versioning enabled
  - Server-side encryption using AWS KMS
  - Public access blocked

- AWS KMS Key
  - Encrypts Terraform state stored in S3
  - Managed separately for enhanced security

- DynamoDB Table
  - Provides Terraform state locking
  - Prevents concurrent state modifications

---

## Project Structure

```
terraform-bootstrap/
├── aws.tf
├── dynamodb.tf
├── kms.tf
├── outputs.tf
├── providers.tf
├── s3.tf
├── terraform.tfvars
├── variables.tf
├── versions.tf
└── README.md
```

---

## Prerequisites

- Terraform >= 1.5
- AWS CLI configured
- IAM user or role with permissions to create:

  - S3
  - DynamoDB
  - KMS
  - IAM (if required)

---

## Usage

### Initialize Terraform

```bash
terraform init
```

### Review the execution plan

```bash
terraform plan
```

### Provision the backend infrastructure

```bash
terraform apply
```

---

## Outputs

After a successful deployment, Terraform returns:

- Backend S3 Bucket Name
- DynamoDB Lock Table Name
- AWS KMS Key ARN

These values are used by other Terraform projects to configure their remote backend.

---

## Example Backend Configuration

```hcl
terraform {
  backend "s3" {
    bucket         = "terraform-bootstrap-dev-1624"
    key            = "ecommerce/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terraform-bootstrap-lock"
    encrypt        = true
  }
}
```

---

## Security

This project follows Terraform backend best practices:

- Remote state stored in Amazon S3
- Versioning enabled for state recovery
- State encrypted using AWS KMS
- Public access blocked
- State locking using DynamoDB

---

## Future Improvements

- GitHub Actions CI
- GitHub OIDC Authentication
- Terraform Plan on Pull Requests
- Branch Protection Rules
- Multi-environment support (dev, stage, prod)

---

## Author

Created as part of a production-style Terraform and AWS DevOps learning project.









