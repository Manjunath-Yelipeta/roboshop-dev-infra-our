#!/usr/bin/env bash
set -euo pipefail

folders=(
  "00-vpc"
  "10-sg"
  "20-sg-rules"
  "30-bastion"
)

for folder in "${folders[@]}"; do
  echo "======================================"
  echo "Running Terraform in: $folder"
  echo "======================================"

  cd "$folder"

  terraform init -reconfigure
  terraform apply -auto-approve

  cd ..
done

echo "All folders before 60-catalogue completed successfully."

