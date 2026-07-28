
#!/usr/bin/env bash

set -euo pipefail

echo "==> Applying reviewed execution plan..."
terraform apply tfplan
