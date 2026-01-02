#!/bin/bash

RESOURCE_GROUP="vm-monitoring-rg"
VM_NAME="demo-vm"
WORKSPACE_NAME="log-workspace"

az monitor log-analytics workspace create \
  --resource-group $RESOURCE_GROUP \
  --workspace-name $WORKSPACE_NAME

az vm extension set \
  --resource-group $RESOURCE_GROUP \
  --vm-name $VM_NAME \
  --name AzureMonitorLinuxAgent \
  --publisher Microsoft.Azure.Monitor
