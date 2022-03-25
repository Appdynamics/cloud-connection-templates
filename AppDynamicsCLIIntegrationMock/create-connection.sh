#!/bin/bash

inputAppDynamicsAccountId="123456789012"
inputPathToPayload="cloud-connection-payload.json"

sed -i '' "s/<account-id>/${inputAppDynamicsAccountId}/g" ${inputPathToPayload}

###
# Create cloud connection
###

endpoint="api/v1beta/connections"
accountName="cloudmonconnectionservice"

echo "Payload: "
cat ${inputPathToPayload}

echo -e "\nRequest: "
echo "curl -X 'POST' \
  'http://${accountName}.cloudmon.svc.cluster.local:7778/${endpoint}' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -F file=@${inputPathToPayload}"



sed -i '' "s/${inputAppDynamicsAccountId}/<account-id>/g" ${inputPathToPayload}