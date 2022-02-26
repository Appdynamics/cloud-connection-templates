
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
check DD example
create a page with sumo-like button that creates stack
test on 2 linked accounts

validate templates api?
assume root? that should not be a case

