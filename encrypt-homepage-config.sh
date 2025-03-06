#!/bin/bash

# Encrypt the readable config file using sops
sops -e kubernetes/apps/home-automation/homepage/secrets/readable.config.sops.yaml > kubernetes/apps/home-automation/homepage/secrets/config.enc.yaml

# Check if the encryption was successful
if [ $? -eq 0 ]; then
  echo "Encryption successful: config.enc.yaml created."
else
  echo "Encryption failed."
  exit 1
fi