
### Inputs
- AppDynamicsAccountId
- AppDynamicsExternalID

### Process
- Create Policy (AppDynamicsMonitoringPolicy)
- Create Role (AppDynamicsMonitoringRole)
- Attach Policy to Role

### UI Integration
- Mock UI with a create button
- Redirect to CloudFormation stack creation template from S3 bucket

### questions
- s3 bucket policy? test on 2 linked accounts
- validate templates api?
- assume root? that should not be a case

