#aws configure set aws_access_key_id *****************
#aws configure set aws_secret_access_key ************************************
#aws configure set default.region ap-south-1
#aws configure set output json
echo 'Authenticating With AWS'
echo ''
sh awscreds.sh
echo ''
echo 'Security group rules BEFORE updating in text format'
echo ' '
aws ec2 describe-security-groups --group-name default --output text
echo ''
echo 'ADDING NEW RULE'
echo ''
aws ec2 authorize-security-group-ingress --group-name default --protocol tcp --port $1 --cidr $2
echo ''
echo 'REMOVING OLD RULE'
aws ec2 revoke-security-group-ingress --group-name default --protocol tcp --port $3 --cidr $4
echo ' '
echo ' '
echo 'Security group rules AFTER updating in text format'
echo ''
aws ec2 describe-security-groups --group-name default --output text
echo ''
date
echo "SUCCESS LAVAKUMAR :) :)"
