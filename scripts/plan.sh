
#!/usr/bin/env bash

set -euo pipefail

echo "==> Initializing Terraform..."
terraform init

echo
echo "==> Validating configuration..."
terraform validate

echo
echo "==> Creating execution plan..."
terraform plan -out=tfplan
