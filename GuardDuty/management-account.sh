#!/bin/bash

echo "Configuring GuardDuty for your AWS Organization"
read -p "Enter AWS Account ID to delegate GuardDuty: " ACCOUNT_ID

aws organizations enable-aws-service-access --service-principal guardduty.amazonaws.com
aws guardduty enable-organization-admin-account —admin-account-id "${ACCOUNT_ID}"