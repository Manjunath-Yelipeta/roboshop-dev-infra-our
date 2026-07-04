#!/usr/bin/env bash
set -euo pipefail

folders=(
  "30-bastion"
  "20-sg-rules"
  "00-vpc"
  "10-sg"
)

for folder in "${folders[@]}"; do
  echo "======================================"
  echo "Running Terraform in: $folder"
  echo "======================================"

  cd "$folder"

  terraform destroy  -auto-approve

  cd ..
done

echo "All folders before 60-catalogue completed successfully."

