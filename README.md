
Input:
AppDynamicsAccountId
AppDynamicsExternalID

Process:
Create Policy (AppDynamicsMonitoringPolicy)
Create Role (AppDynamicsMonitoringRole)
Attach Policy to Role
Pulling CF from AppD S3 bucket

Output:
Role Name (AppDynamicsMonitoringRole)

TODO: 
create resources
REDIRECT to console with input parameters
create a page with a button that creates stack
test on 2 linked accounts
s3 bucket policy?

validate templates api?
assume root? that should not be a case

