# Create AWS resources for cloud connection using CloudFormation

## AppDynamicsUIIntegrationMock

Mock UI to fill-in parameters and create resources from CloudFormation template

- Button to create mock parameters
- Button to run a test
- Redirect to CloudFormation stack creation template from S3 bucket

<img width="425" alt="image" src="https://user-images.githubusercontent.com/82029748/160486444-351cee2f-027b-474c-80f1-c31fe08beed7.png">

## CloudFormationTemplates

Inputs:
- AppDynamicsAccountId
- AppDynamicsExternalID

Template creates resources:
- Create Policy (AppDynamicsMonitoringPolicy)
- Create Role (AppDynamicsMonitoringRole)
- Attach Policy to Role

Upload template to S3 bucket to use it in order to create resources (with mock UI or CLI).
