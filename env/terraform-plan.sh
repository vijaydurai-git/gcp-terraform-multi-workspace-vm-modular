#!/bin/bash
WORKSPACE=$(terraform workspace show)
VAR_FILE="../env.tfvars/${WORKSPACE}.tfvars"

echo "Deploying GCP Infrastructure to Workspace: $WORKSPACE"
echo "Using Var File: $VAR_FILE"

if [ ! -f "$VAR_FILE" ]; then
    echo "Error: Variable file $VAR_FILE not found!"
    exit 1
fi

terraform plan -var-file="$VAR_FILE" 