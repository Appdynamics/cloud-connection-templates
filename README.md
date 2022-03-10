# Create AWS resources for cloud connection using CloudFormation

## AppDynamicsCLIIntegrationMock

Creating stack and cloud connection with bash.

- Creating stack with `./create-stack.sh`
- Creating cloud connection with `./create-connection` (just prints out commands at the moment)

## AppDynamicsUIIntegrationMock

Mock UI to fill-in parameters and create resources from CloudFormation template

- Button to create mock parameters
- Button to run a test
- Redirect to CloudFormation stack creation template from S3 bucket

![image](https://user-images.githubusercontent.com/82029748/157684126-48901614-985a-4b25-a15c-68c84e297d65.png)

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

