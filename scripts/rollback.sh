#!/bin/bash

echo "Rolling back to the previous stable version..."

# Assuming you're using Kubernetes to manage your deployments
# This command rolls back the app to the previous stable version in the deployment.
kubectl rollout undo deployment/your-app  # Replace with your actual deployment command
if [ $? -ne 0 ]; then
  echo "Rollback Failed"
  exit 1
fi

echo "Rollback Successful!"
