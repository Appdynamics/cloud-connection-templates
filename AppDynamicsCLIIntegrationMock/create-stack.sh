#!/bin/bash
###
# Set input parameters
###
generatedSufix=$(echo $RANDOM | md5sum | head -c 4; echo;)

inputAppDynamicsExternalId="cloud-connection-client-${generatedSufix}"
inputAppDynamicsAccountId="123456789012"
inputRegion="eu-west-2"
inputStackName="MyStackFromURL";
inputTemplateUrl="https://cf-templates-cloud-connection-appd.s3.eu-west-2.amazonaws.com/IAM_Monitoring_Policy_and_Role.yml";

parameter1Key="AppDynamicsExternalId"
parameter2Key="AppDynamicsAccountId"

echo "${inputAppDynamicsExternalId}"

### 
# Create CloudFormation stack
###
aws --region ${inputRegion} cloudformation create-stack --stack-name ${inputStackName} \
    --template-url ${inputTemplateUrl} \
    --parameters ParameterKey=${parameter1Key},ParameterValue=${inputAppDynamicsExternalId} ParameterKey=${parameter2Key},ParameterValue=${inputAppDynamicsAccountId} \
    --capabilities CAPABILITY_NAMED_IAM



