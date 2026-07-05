#!/usr/bin/env bash
set -euo pipefail

folders=(
  "40-databases"
  "50-backend-alb"
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

