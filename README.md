# Create AWS resources for cloud connection using CloudFormation

## AppDynamicsCLIIntegrationMock

Creating stack and cloud connection with bash.

- Creating stack with `./create-stack.sh`
- Creating cloud connection with `./create-connection`

## AppDynamicsUIIntegrationMock

Mock UI to fill-in parameters and create resources from CloudFormation template

- Button to create mock parameters
- Button to run a test
- Redirect to CloudFormation stack creation template from S3 bucket

## CloudFormationTemplates

### Inputs
- AppDynamicsAccountId
- AppDynamicsExternalID

### Template creates resources
- Create Policy (AppDynamicsMonitoringPolicy)
- Create Role (AppDynamicsMonitoringRole)
- Attach Policy to Role


#### questions
- s3 bucket policy? test on 2 linked accounts
- validate templates api?
- assume root? that should not be a case

