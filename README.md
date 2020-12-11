# AWS-Security-group-rule-modifications
AWS Security group rule modifications
Process : 

1.	Customers will be given GitHub access as Users
2.	They will modify their IP configuration file with new IP’s for Create/Update/Delete
3.	User will initiate Pull request after modification which will go for approvals and validations to Owners
4.	Owners will validate the request and proceeds for Merge then Commits to Master branch
5.	Commit/Pull/Push will trigger a CICD pipeline and syncs the files to server where AWS will modify the rules with shell scripts.
6.	IP Whitelisting / VM creation will be completed and data will stored in Server and GitHub

Tools Used :

1.	Terraform : 

•	AWS Ec2 Linux VM creation 
•	AWS Import Existing Security groups of different VM’s  (terraform import aws_security_group.sg-b48179d6 sg-b48179d6)

 

2.	AWS CLI:

•	Established AWS Connectivity as CLI
•	Prepared AWS CLI commands for Create/Update/delete Security groups/security group rules
•	Eg: { aws ec2 authorize-security-group-ingress --group-id sg-1234567890abcdef0  --ip-permissions IpProtocol=tcp,FromPort=3389,ToPort=3389,IpRanges='[{CidrIp=203.0.113.0/24,Description="RDP access from NY office"}]' }


3.	Jenkins:

•	For Automation, created a CICD Pipeline with GITHUB 

 


4.	GitHub: 

•	Created a repository for AWS Security groups
•	Added Multiple shell scripts in order to manage Disaster recovery and Compliance
•	Created roles for users as Owners (MACS) and Contributors (Users) for Approval process
•	Created a Trigger with Webhook for change Approvals and CICD Pipeline

 

Final Report : 

Started by GitHub push by lati1010
Running as SYSTEM
Building in workspace /var/lib/jenkins/workspace/aws
The recommended git tool is: NONE
No credentials specified
 > git rev-parse --is-inside-work-tree # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/lati1010/AWS-Security-group-rule-modifications.git # timeout=10
Fetching upstream changes from https://github.com/lati1010/AWS-Security-group-rule-modifications.git
 > git --version # timeout=10
 > git --version # 'git version 2.23.3'
 > git fetch --tags --force --progress -- https://github.com/lati1010/AWS-Security-group-rule-modifications.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
Checking out Revision 5b6a1dfc53a6907e540bb9ae52252dde295af2b6 (refs/remotes/origin/main)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f 5b6a1dfc53a6907e540bb9ae52252dde295af2b6 # timeout=10
Commit message: "Update IP_whitelisting_file.sh"
 > git rev-list --no-walk b45b7557dd9003cfa22e6b258a29b32a9b75b489 # timeout=10
[aws] $ /bin/sh -xe /tmp/jenkins6986980463461804466.sh
+ sh IP_whitelisting_file.sh
a is new Port Number
99
b is New IP to Whitelist
172.11.22.33/32
c is Old Port Number
55
d is Old IP to Blacklist
19.1.2.3/32
Updating the IP for WHITELIST
 
Authenticating with AWS


Security group rules BEFORE updating in text format
 
SECURITYGROUPS default VPC security group     sg-b48179d6    default 085760928747   vpc-2560704d
IPPERMISSIONS          -1      
USERIDGROUPPAIRS       sg-b48179d6    085760928747
IPPERMISSIONS  55      tcp     55
IPRANGES       19.1.2.3/32
IPPERMISSIONSEGRESS    -1
IPRANGES       0.0.0.0/0

ADDING NEW RULE


REMOVING OLD RULE
 
 
Security group rules AFTER updating in text format

SECURITYGROUPS default VPC security group     sg-b48179d6    default 085760928747   vpc-2560704d
IPPERMISSIONS          -1      
USERIDGROUPPAIRS       sg-b48179d6    085760928747
IPPERMISSIONS  99      tcp     99
IPRANGES       172.11.22.33/32
IPPERMISSIONSEGRESS    -1
IPRANGES       0.0.0.0/0

Fri Dec 11 18:27:04 UTC 2020
SUCCESS LAVAKUMAR :) :)
Finished: SUCCESS

