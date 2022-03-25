#!/bin/bash

inputAppDynamicsAccountId="123456789012"
inputPathToPayload="cloud-connection-payload.json"

sed -i '' "s/<account-id>/${inputAppDynamicsAccountId}/g" ${inputPathToPayload}

###
# Create cloud connection
###

endpoint="api/v1beta/connections"
accountName="account-name"

echo "Payload: "
cat ${inputPathToPayload}

echo -e "\nRequest: "
echo "curl -X 'POST' \
  'http://${accountName}.cloudmon.svc.cluster.local:7778/${endpoint}' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -F file=@${inputPathToPayload}"

# response: external ID + appdynamics gateway account > state: pending
# patch with role name > state: pending configuration
# patch with configuration (services, regions, ...) > state: configured > when data colelction started state: active

# connection & configuration are separated (select existing configuration from available ones)


sed -i '' "s/${inputAppDynamicsAccountId}/<account-id>/g" ${inputPathToPayload}