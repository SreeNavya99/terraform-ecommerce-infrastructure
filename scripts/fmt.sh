
#!/usr/bin/env bash

set -euo pipefail

echo "==> Formatting Terraform configuration..."
terraform fmt -recursive
